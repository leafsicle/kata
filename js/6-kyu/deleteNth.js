const deleteNth = (pictures, limit) => {
  const counts = {} // {1: 2, 2: 1, 3: 1} dict of number: count

  return pictures.filter(x => {
    // if counts[x] is undefined, set it to 0, then add 1
    // if counts[x] is defined, add 1 to it
    counts[x] = (counts[x] || 0) + 1
    return counts[x] <= limit // return true if count is less than or equal to limit
  })
}

// how do I add a test for this?
// console.log(deleteNth([1, 1, 1, 1], 2)) // [1, 1]
// console.log(deleteNth([20, 37, 20, 21], 1)) // [20, 37, 21]

// Path: deleteNth.test.js
const deleteNth = require('./deleteNth')
deleteNth([1, 1, 1, 1], 2) // [1, 1]
deleteNth([20, 37, 20, 21], 1) // [20, 37, 21]
