const { equal } = require('assert')

// makeAccumlator
const makeAccumulator = value => {
  return addend => {
    value = value + addend // !! Side effect
    return value
  }
}

const a = makeAccumulator(5)
equal(a(10), 15)
equal(a(10), 25)
equal(a(10), 35)

