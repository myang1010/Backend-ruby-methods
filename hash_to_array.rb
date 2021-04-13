#(3) Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  
# Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values.  
# Call the function within your program so you know it works. 
# (Question: Can you find online information on Ruby hash methods that will help with this function?)  
# Call this program hash_to_array.rb.

def hash_to_array(hash={})

    def ask(question, kind="string")
        print question + " "
        answer = gets.chomp
        answer = answer.to_i if kind == "number"
        return answer
    end

    if hash.empty?    
        hash = {}
        5.times do |num|
            key = ask("enter key#{num+1}: ")
            value = ask("enter value#{num+1}: ")
            hash[key] = value
        end
    end

    puts "Array of keys: #{hash.keys}"
    puts "Array of values: #{hash.values}"
end

puts "Result with parameter send in: "
hash_to_array({"a" => "aaa", "b" => "bbb"})

puts "\nResult without parameter send in:"
hash_to_array()