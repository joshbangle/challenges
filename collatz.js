let storage = []
let test = []


function collatz(n) {
  if (n === 1) {
    test.push(n);
    return test;
  } else if (n % 2 === 0) {
    test.push(n);
    return collatz(n / 2);
  } else if (n % 2 != 0) {
    test.push(n);   
    return collatz((n * 3) + 1);
  } 
}

function testIt() {
  storage = []; //resets storage to empty in case the test is run multiple times
  for(let i = 1; i < 1000000; i++){
    test = [] //resets test to empty each iteration
    collatz(i);
    if (test.length > storage.length)
      storage = test;
  }
  return storage[0];
}

console.log(testIt());
