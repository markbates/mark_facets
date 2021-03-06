if Rails.v3?
  
  def have_same_elements(expected)
    RSpec::Matchers::Matcher.new :have_same_elements, expected do
      match do |actual|
        # matcher.failure_message = "expected #{given.inspect} to include the same elements as #{expected.inspect}"
        # matcher.negative_failure_message = "expected #{given.inspect} not to include the same elements as #{expected.inspect}"
        unless actual.size == expected.size
          false
        else
          ret = true
          actual.each do |v|
            ret = expected.include?(v)
            break if !ret
          end
          ret
        end
      end
    end
  end
  
end

if Rails.v2?
  
  def have_same_elements(expected)
    simple_matcher("equal #{expected.inspect}") do |given, matcher|
      matcher.failure_message = "expected #{given.inspect} to include the same elements as #{expected.inspect}"
      matcher.negative_failure_message = "expected #{given.inspect} not to include the same elements as #{expected.inspect}"
      unless given.size == expected.size
        false
      else
        ret = true
        given.each do |v|
          ret = expected.include?(v)
          break if !ret
        end
        ret
      end
    end
  end
  
end