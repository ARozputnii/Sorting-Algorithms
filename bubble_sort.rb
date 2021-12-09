# frozen_string_literal: true

require_relative 'base_sort'

class BubbleSort < BaseSort
  def initialize(arr)
    @size = arr.size - 1
    @swapped = true
    super
  end

  def sort
    while @swapped
      @swapped = false

      (0...@size).each do |el|
        set_count_iterations

        if @arr[el] > @arr[el + 1]
          @arr[el], @arr[el + 1] = @arr[el + 1], @arr[el]
          @count_operations += 1
          @swapped = true
        end

        @arr_size -= 1
      end

      @size -= 1
    end

    super
  end
end
