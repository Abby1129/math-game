class Question
  attr_accessor :num1, :num2, :q_answer, :p_answer
 
   def initialize
     @num1 = rand(1..20)
     @num2 = rand(1..20)
     @q_answer = @num1 + @num2
     @p_answer = 0
   
   end
 
   def qs
     "What does #{@num1} plus #{@num2} equal?"
   end
 
   def p_answer
     @p_answer = gets.chomp.to_i
   end
 
 end