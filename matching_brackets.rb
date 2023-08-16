=begin
    
Instructions
Given a string containing brackets [], braces {}, parentheses (), or any combination thereof, 
verify that any and all pairs are matched and nested correctly. The string may also contain other characters, 
which for the purposes of this exercise should be ignored.
    
=end

class Brackets
  def self.paired?(s)
    stack = []

    s.each_char do |char|
      case char
      when '(', '[', '{'
        stack.push(char)
      when ')', ']', '}'
        return false if stack.empty? || stack.pop != matching_bracket(char)
      end
    end

    stack.empty?
  end

  def self.matching_bracket(closing_bracket)
    case closing_bracket
    when ')' then '('
    when ']' then '['
    when '}' then '{'
    end
  end
end

