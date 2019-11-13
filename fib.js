"use strict";

function fibIterative(n) {
  let numbers = [0, 1]
  for (let i = 0; i < n; i++) {
    let next = numbers[i]+numbers[i+1]
    numbers.push(next);
  }
  return numbers[n];
}

console.log(fibIterative(35));












// function fibRecurive(nth, n1 = null, n2 = null) {
//   const times = nth;
//   let old = 0;
//   let next = 1;
//   for (let i = 0; i < times; i++) {
//     let fib = old + next
//     next = fib
//     old = next
//     fibRecurive(times, old, next)
//   }
//   return fib;
// }