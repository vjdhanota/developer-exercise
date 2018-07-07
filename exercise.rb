class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Split the word on its spaces to get an array of words
    words = str.split(' ')
    # Map over the array and apply custom logic    
    words = words.map do |word| 
      if word.length > 4
        # We want to replace the word but need to check if the first character is uppercased first
        marklard = ''
        if /[[:upper:]]/.match(word[0])
          marklard = "Marklar"
        else
          marklard = "marklar"
        end

        # We also need to preserve punctuation!
        if !word[word.length-1].match(/^[[:alpha:]]$/)
          marklard += word[word.length-1]
        end

        word = marklard
      end
      word
    end

    return words.join(' ')

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib = [0, 1]
    sum = 0
    for i in 2..nth do
      temp = fib[1]
      fib[1] = fib[1] + fib[0]
      fib[0] = temp
      if fib[1] % 2 == 0
        sum += fib[1]
      end
    end
    return sum
  end

end
