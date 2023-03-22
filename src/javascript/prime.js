function isPrime(n) {
  if (n < 2) {
    return false
  }
  const max = n ** 0.5 + 1
  for (let i = 2; i < max; i++) {
    if (n % i === 0) {
      return false
    }
  }
  return true
}

function TestPrime(n) {
  const res = []
  for (let i = 0; i < n; i++) {
    if (isPrime(i)) {
      res.push(i)
    }
  }
  return res
}
const label = 'nodejs prime11**7'
console.time(label)
TestPrime(10 ** 7)
console.timeEnd(label)
