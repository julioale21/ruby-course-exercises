=begin
Introduction
Numbers
The two most common types of numbers in Ruby are:

Integers: numbers with no digits behind the decimal separator (whole numbers). Examples are -6, 0, 1, 25, 976 and 500000.
Floating-point numbers: numbers with one or more digits behind the decimal separator. Examples are -2.4, 0.1, 3.14, 16.984025 and 1024.0.
They are implemented through the Integer and Float classes.

These classes have methods that will coerce values from one to the other. Integer numbers are precise to a whole unit, while Float has precision that is fractional to a whole number:

Integer#to_f: Coerce to a new float
Float#ceil: Round up to the nearest integer
Float#floor: Round down to the nearest integer
Float#round: Round to the nearest integer
Float#to_i: Truncate to the nearest integer
Conditionals
In this exercise you must conditionally execute logic. A common way to do this in Ruby is by using an if/else statement:

x = 5

if x == 5
  # Execute logic if x equals 5
elsif x > 7
  # Execute logic if x greater than 7
else
  # Execute logic in all other cases
end
Instructions
In this exercise you'll be writing code to analyze the production of an assembly line in a car factory. The assembly line's speed can range from 0 (off) to 10 (maximum).

At its slowest speed (1), 221 cars are produced each hour. The production increases linearly with the speed. So with the speed set to 4, it should produce 4 * 221 = 884 cars per hour. However, higher speeds increase the likelihood that faulty cars are produced, which then have to be discarded. The following table shows how speed influences the success rate:

1 to 4: 100% success rate.
5 to 8: 90% success rate.
9: 80% success rate.
10: 77% success rate.

Task 1:
Calculate the production rate per hour

Implement the AssemblyLine#production_rate_per_hour method to calculate the assembly line's production rate per hour, taking into account its success rate. Note that the value returned is an instance of Float.

Task 2:
Calculate the number of working items produced per minute

How to debug
When a test fails, a message is displayed describing what went wrong and for which input. You can inspect arbitrary values in your program by passing them to the debug method. This will capture the values and show you the output.
=end


class AssemblyLine
    def initialize(speed)
      @speed = speed
    end
  
    def production_rate_per_hour
      case @speed
      when 1..4
        success_rate = 1.0
      when 5..8
        success_rate = 0.9
      when 9
        success_rate = 0.8
      when 10
        success_rate = 0.77
      else
        raise 'Invalid speed value'
      end
      
      success_rate * (@speed * 221.0).to_i
    end
  
    def working_items_per_minute
      (production_rate_per_hour / 60.0).to_i
    end
end