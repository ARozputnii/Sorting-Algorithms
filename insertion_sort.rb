# frozen_string_literal: true

require_relative 'base_sort'

class InsertionSort < BaseSort
  def sort
    (1..@arr_size - 1).each do |index|
      set_count_iterations

      while index.positive? && @arr[index - 1] > @arr[index]
        @arr[index], @arr[index - 1] = @arr[index - 1], @arr[index]
        index -= 1

        @count_operations += 1
      end

      @arr_size -= 1
    end

    super
  end
end
