# frozen_string_literal: true

class BaseSort
  attr_reader :time_start

  def initialize(arr)
    @arr = arr
    @arr_size = arr.size
    @count_iterations = 1
    @count_operations = 0
    @time_start = Time.now
  end

  def sort
    output
  end

  private

  def output
    puts "#{@arr.inspect} \n" \
         "#{self.class.name} was completed in #{(Time.now - time_start).round(2)} seconds \n" \
         "Count of operations with the element of array: #{@count_operations} \n" \
         "Count of iterations of the array #{@count_iterations} \n\n"
  end

  def set_count_iterations
    return if @arr_size.positive?

    @arr_size = @arr.size
    @count_iterations += 1
  end
end
