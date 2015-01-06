# Functions - Problem Set
##sillySum(arr)
  # Write a function that takes an array of numbers, and returns the sum of each number multiplied by its index.
  
  def sillySum(arr)
    count = 0
    arr.each_with_index do |item, index|
      count += (item * index)
    end
    count
  end

  # hard-coded values for testing
  arr = [1, 2, 1, 2];
  puts sillySum(arr)

##numSquare(max)
  # Create a function called numSquare that will return an array of all perfect square numbers up to, but not exceeding a max number.
  def numSquare(maxNum)
    squaresArr = []
    counter = 0
    until counter > maxNum
      squaresArr.push(counter**counter)
      counter += 1
    end
    squaresArr
  end

  # hard-coded values for testing
  puts numSquare(5)

##isPrime(num)
    # Create a function to return true or false if a number passed in a prime number.
  
  def isPrime(num)
    counter = 2
    
    while counter <= Math.sqrt(num)
      if (num % 2 == 0)
        puts "#{num} is not prime"
        break
      else
        puts "#{num} is prime"
        break
      end
    end
  
  end

  # hard-coded values for testing
  puts isPrime(5)



##primes(max)
### HELP NEED TO FINISH




##letterCount(word)
  def letterCount(word)
    obj = {}
    word.chars.map do |currentLetter|
      if (!!obj[currentLetter])
        obj[currentLetter] += 1
      else
        obj[currentLetter] = 1
      end
    end
    obj
  end

  # hard-coded values for testing
  puts letterCount("AngeloA")

##merge(arr1, arr2)
### HELP NEED TO FINISH