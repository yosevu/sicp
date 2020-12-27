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

// makeMonitored
const makeMonitored = f => {
  let count = 0

  return function mf(input) {

    if (input === 'how many calls') {
      return count
    }

    if (input === 'reset count') {
      count = 0
      return count
    }

    count = count + 1
    return f(input)
  }
}

const s = makeMonitored(Math.sqrt)

equal(s(100), 10)
equal(s('how many calls'), 1)
equal(s('reset count'), 0)

