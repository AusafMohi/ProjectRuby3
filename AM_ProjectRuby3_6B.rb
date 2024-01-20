#-------------------------------------------------------------------------------  
# Assignment:    Assignment 6B  
#  
# Program Name:  xy_Assignment_6B.rb 
#
# Purpose:       The purpose of this program is 
#                to test Ruby knowledge
#
# Author:        Ausaf Mohiuddin
#   
# Created:       10/4/22
#  
#------------------------------------------------------------------------------  
  
puts "Welcome to the Question and Answer Program\n" +
"Please select the correct answer for each question\n\n"

# Listing all the question and their answers

question = ["1. Ruby syntax is similar to Python?\n(a)  True\n(b)  False\n(c)  They are identical\n(d)  Ruby does not have syntax\n",
            "2. What text editor can you use to create a Ruby Program?\n(a)  Microsoft Word\n(b)  Microsoft Paint\n(c)  Rich Text Editor \n(d)  Komodo\n",
            "3. In the following for loop, how many times will I love cheese print? for num in 0..5    puts 'I love cheese' end\n (a)  0\n (b)  3\n (c)  5\n (d)  6\n",
            "4. Ruby allows for the if/elsif?\n (a)  Only if the the if/else is used first\n (b)  Only if the the if/then is used first\n (c)  True\n (d)  False\n",
            "5. Ruby only allows lower case variable names?\n (a)  True\n (b)  False\n"
            ]

# Listing all the answers in an array

answer = ["a", "d", "d", "c", "b"]

number_correct = 0
number_wrong = 0

# Creating an index for the program to loop through the answers
# and creating an if/else statement for a correct and wrong answer

question.each_with_index do |ques, index|
    puts ques
    print "\n\nAnswer: "
    input1 = gets.chomp
    if input1 == answer[index]
        puts "Correct\n\n"
        number_correct = number_correct + 1
    else
        puts "Oops - the correct answer is #{answer[index]}\n\n"
        number_wrong = number_wrong + 1
    end
end

# Calculating the percentage of right and wrong answers

grade = number_correct.to_f / (number_correct + number_wrong) * 100.0
puts "You correctly answered #{number_correct} out of #{number_correct + number_wrong} questions which is #{format("%3.2f",grade)}%  "


