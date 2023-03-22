package main

import (
	"fmt"
	"math"
	"time"
)

func isPrime(n int) bool {
	if n < 2 {
		return false
	}
	max := int(math.Sqrt(float64(n))) + 1
	for i := 2; i < max; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func TestPrime(n int) []int {
	res := []int{}
	max := int(math.Pow10(n))
	for i := 0; i < max; i++ {
		if isPrime(i) {
			res = append(res, i)
		}
	}
	return res
}

func main() {
	start := time.Now()
	TestPrime(7)
	elapsed := time.Since(start)
	fmt.Println("go prime10**7:", elapsed)
}
