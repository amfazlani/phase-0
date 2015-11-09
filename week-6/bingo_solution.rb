# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.



# Release 0: Pseudocode

#Input: The input is an array

#Output: Depending on the method called, the output varies. If the call method is called the output should be a letter-number combination, such as "A60" If the check method is called, the ouput should be a modified array if the number being called is included in the array. If it is not it should return the array with no modification.

# Outline:
# Step 1: Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Define method called call. Inside the method, assign two different instance variables, my_letter and my_number. my_letter is an array with the letters b, i, n, g, o. My_number is a varialbe that generates a random value from 1 to 100 using the rand method. At the end of the method, change my_number to a string and add this to my_letter, creating a letter-number combination which is essentially a string.

# Step 2: Check the called column for the number called.
  #Create a method called check. Inside this method create a case statment. Each case statement checks if the value returned from the instance variable called @my_letter is equal to a specifc letter. I did this for each of the five letters in the word bingo. If the @my_letter variable is equal to any of these letters, I then created a conditional statment which checked if each index in the multidemensional array was equal to the number returned by @my_number. I was able to do this because each letter corresponded to a specfic place in the array. For example, [0][0] would place me at the first element in the first array, which falls under the "B" column.

  #Step 3: If any of these conditons were true, then I replace that index with the string "X."


# Initial Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def call
    my_letter = ["B","I","N","G","O"]
    my_number = rand(1..100)
    @my_letter = my_letter
    @my_number = my_number.to_s
    puts @my_letter + @my_number
  end

  def check
  case
    when @my_letter == "B"
    if @bingo_board[0][0] == @my_number
      @bingo_board[0][0] = "X"
    elsif @bingo_board[1][0] == @my_number
      @bingo_board[1][0] = "X"
    elsif @bingo_board[2][0] == @my_number
      @bingo_board[2][0] == "X"
    elsif @bingo_board[3][0] == @my_number
      @bingo_board[3][0] == "X"
    elsif @bingo_board[4][0] == @my_number
      @bingo_board[4][0] == @my_number
    end

  when @my_letter == "I"
    if @bingo_board[0][1] == @my_number
      @bingo_board[0][1] = "X"
    elsif @bingo_board[1][1] == @my_number
      @bingo_board[1][1] = "X"
    elsif @bingo_board[2][1] == @my_number
      @bingo_board[2][1] == "X"
    elsif @bingo_board[3][1] == @my_number
      @bingo_board[3][1] == "X"
    elsif @bingo_board[4][1] == @my_number
      @bingo_board[4][1] == @my_number
    end

  when @my_letter == "N"
    if @bingo_board[0][2] == @my_number
      @bingo_board[0][2] = "X"
      elsif @bingo_board[1][2] == @my_number
      @bingo_board[1][2] = "X"
    elsif @bingo_board[2][2] == @my_number
      @bingo_board[2][2] == "X"
    elsif @bingo_board[3][2] == @my_number
      @bingo_board[3][2] == "X"
    elsif @bingo_board[4][2] == @my_number
      @bingo_board[4][2] == @my_number
    end

  when  @my_letter == "G"
    if @bingo_board[0][3] == @my_number
      @bingo_board[0][3] = "X"
    elsif @bingo_board[1][3] == @my_number
      @bingo_board[1][3] = "X"
    elsif @bingo_board[2][3] == @my_number
      @bingo_board[2][3] == "X"
    elsif @bingo_board[3][3] == @my_number
      @bingo_board[3][3] == "X"
    elsif @bingo_board[4][3] == @my_number
      @bingo_board[4][3] == @my_number
    end

when @my_letter == "O"
    if @bingo_board[0][4] == @my_number
      @bingo_board[0][4] = "X"
    elsif @bingo_board[1][4] == @my_number
      @bingo_board[1][4] = "X"
    elsif @bingo_board[2][4] == @my_number
      @bingo_board[2][4] == "X"
    elsif @bingo_board[3][4] == @my_number
      @bingo_board[3][4] == "X"
   elsif @bingo_board[4][4] == @my_number
      @bingo_board[4][4] == @my_number
    end
  end
end
end


# Refactored Solution
#My code for this method was very excessive and I understand that this is definetley not the best way to do this, but after working on this for more than a few hours, this is the only solution that I thought would work. Again, I am sure this is not the right solution but I believed I understood the logic I just could not find the right methods to implement. I will try to do a better job in implementing my logic into code that is both concise and readable.


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p new_game.call
p new_game.check



#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
I think it was a little difficult to pseudocode in this challenge because I know best practices are to write in plain english and not use too much code vocabulary. But it was hard for me to do this, because I was trying to plan out how I was going to go about writing out my initial solution. Especially since there were many steps involved, I had a hard time laying out steps rather than just describing how I felt the solution could be solved.

What are the benefits of using a class for this challenge?
The benefits of using a class is that you can very quickly call the check and call methods on any new array that is your new bingo board. Instead of having to initialize call and check methods, you just have to initialize the class.

How can you access coordinates in a nested array?
I can definetely answer this question because while my code was very excessive and certainly not the most perfect solution, it gave me very good practice of indexing into a nested array. In order to access the value in a nested array you must pin-point the exact index of that value, keeping in mind that each array has an index that starts with 0, which is the first element. So for example a nested array such as my_array = [[1,2,3,4,5],[6,7,8,9,10]]. If you wish to access the value 8 in this array you must type my_array[1][2] which specifies that you want to access the second array and particularly the third element in that array.

What methods did you use to access and modify the array?
As I mentioned above, I had a really hard time figuring out which methods I needed to implement my logic. I have to still get a better understanding of RubyDocs as it feels like sometimes I know what I am looking for, just do not know how to exactly find it.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I did learn about the .select method and thought that I would be using that method for this challenge because looking at the example, it seemed like it selected a specific value and modified that value, which could be done using select. I just was not sure how to use select based on the other steps in this challenge.

How did you determine what should be an instance variable versus a local variable?
If I need to access to a specifc value outside of the method that it was created, I would change it into an instance variable, as that allows me to reuse that variable in a different method within the same class.

What do you feel is most improved in your refactored solution?
I am going to visit office hours this week, specifically to ask about best practices with refactoring because I know the code I am writing is excessive and I think refactoring can go a long way in making my code more readable and less repetetive.

=end

