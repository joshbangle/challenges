"use strict";

var _ = {
  // Implements:
  // https://lodash.com/docs#join
  join: (array, separator = ',') => {
    let words = ''
    for (let i = 0; i < array.length; i++) {
      if (i === array.length - 1) {
        separator = '.'
      }
      words = words + array[i] + separator;
    }
    return words;
  }
}


const value = _.join(["hello", "goodbye", "what's up", "nothing much"], ", ")

console.log(value);