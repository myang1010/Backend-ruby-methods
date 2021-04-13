#(2) Write a program hangman.rb that contains a function called hangman.  
# The function's parameters are a word and an array of letters.  
# It returns a string showing the letters that have been guessed.  
# Call the function from within your program so that you know that it works.

def hangman(string, array)
    result = "_" * string.length
    temp = string.downcase
    array.each do |item|
        item = item.downcase
        while temp.index(item) do
            num = temp.index(item)
            result[num] = item
            temp[num] = "_"
        end    
    end
   result
end    

puts hangman("bob", ["b"])
puts hangman("alphabet", ["a", "h"])
puts hangman("mingkIng", ["M", "i", "g"])

# Another student did it in a very efficient way
# def hangman(string, array)
#    result = ""
#    string.each_char do |char|
#       result += array.include?(char)? char : "_"
#    end
# result
# end 