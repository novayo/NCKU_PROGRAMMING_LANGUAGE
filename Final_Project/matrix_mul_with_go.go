package main

import (
	"fmt"
	"time"
)

type Matrix2d struct {
	Rows    int
	Columns int
	Matrix  []float64
}

func (a Matrix2d) Go_Multiplication(b Matrix2d) Matrix2d {
	rows := a.Rows
	cols := b.Columns
	length := a.Columns
	results := make([]float64, rows*cols)
	ch := make(chan float64, rows*cols)

	for i := 0; i < length; i++ {
		go row_Mul_col(a, b, ch, i)
	}

	for i := 0; i < length; i++ {
		for j := 0; j < length; j++ {
			results[i*cols+j] = <-ch
		}
	}

	return Matrix2d{rows, cols, results}
}

func row_Mul_col(a Matrix2d, b Matrix2d, ch chan float64, i int) {
	var row []float64
	var col []float64
	row = a.getRow(i)
	for j := 0; j < a.Columns; j++ {
		col = b.getColumn(j)
		go innerProduct(row, col, ch)
	}
}

func (a Matrix2d) Pure_Multiplication(b Matrix2d) Matrix2d {
	rows := a.Rows
	cols := b.Columns
	length := a.Columns
	results := make([]float64, rows*cols)
	ch := make(chan float64, rows*cols)

	var row []float64
	for i := 0; i < length; i++ {
		row = a.getRow(i)

		for j := 0; j < length; j++ {
			innerProduct(row, b.getColumn(j), ch)
		}
	}

	for i := 0; i < length; i++ {
		for j := 0; j < length; j++ {
			results[i*cols+j] = <-ch
		}
	}

	return Matrix2d{rows, cols, results}
}

func innerProduct(c []float64, r []float64, ch chan float64) {
	result := 0.0
	for i := 0; i < len(c); i++ {
		result += c[i] * r[i]
	}
	ch <- result
}

func (m Matrix2d) getColumn(col int) []float64 {
	result := make([]float64, m.Rows)
	cols := m.Columns
	for i := 0; i < m.Rows; i++ {
		result[i] = m.Matrix[i*cols+col]
	}
	return result
}

func (m Matrix2d) getRow(col int) []float64 {
	result := make([]float64, m.Rows)
	cols := m.Columns
	for i := 0; i < m.Rows; i++ {
		result[i] = m.Matrix[col*cols+i]
	}
	return result
}

func main() {

	AMatrix_rows, AMatrix_cols := 10, 10
	AMatrix_values := make([]float64, AMatrix_rows*AMatrix_cols)

	// 初始陣列值
	for i := 0; i < AMatrix_rows; i++ {
		for j := 0; j < AMatrix_cols; j++ {
			AMatrix_values[i*AMatrix_cols+j] = float64(j + 1)
		}
	}

	// 建立m struct (初始陣列)
	AMatrix := Matrix2d{AMatrix_rows, AMatrix_cols, AMatrix_values}
	/*
		fmt.Println("AMatrix: ")
		for i := 0; i < AMatrix_rows; i++ {
			for j := 0; j < AMatrix_cols; j++ {
				fmt.Printf("%.2f  ", AMatrix.Matrix[i*AMatrix_cols+j])
			}
			fmt.Println()
		}
	*/
	// 將m * m (相成後的陣列)
	fmt.Printf("Matrix Size = %d * %d\n\n", AMatrix_rows, AMatrix_cols)
	fmt.Print("Multiplication without concurrency: ")
	Time_For_Pure_Mul := time.Now()
	_ = AMatrix.Pure_Multiplication(AMatrix)
	fmt.Println(time.Since(Time_For_Pure_Mul))

	// 將m * m (相成後的陣列)
	fmt.Print("Multiplication with    concurrency: ")
	Time_For_Go_Mul := time.Now()
	_ = AMatrix.Go_Multiplication(AMatrix)
	fmt.Println(time.Since(Time_For_Go_Mul))
}
