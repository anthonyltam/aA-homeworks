function fizzBuzz(array) {
    let result = [];
    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 == 0 || array[i] % 5 == 0) && (array[i] % 15 != 0)) {
            result.push(array[i]);
        }
    }
    return result
}

// fizzBuzz([1,3,4,5,6,7,8,27,15])

function isPrime(number) {
    for (let i = 2; i < number; i++) {
        if (number % i == 0) {
            return false 
        }
    }
    return true;
}

// isPrime(5)
// isPrime(25)
// isPrime(15485863)

function sumOfNPrimes(n) {
    let i = 2;
    let sum = 0;
    let count = 0;
    
    while (count < n) {
        if (isPrime(i)) {
            sum += i;
            count ++;
        }
        i++;
    }
    return sum;
}

sumOfNPrimes(1)