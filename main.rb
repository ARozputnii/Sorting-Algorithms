# frozen_string_literal: true

require_relative 'bubble_sort'
require_relative 'insertion_sort'

numbers = []
10000.times { numbers << rand(1..100000) }

bubble_sort_ractor = Ractor.new(numbers) { |arr| BubbleSort.new(arr).sort }
insertion_sort_ractor = Ractor.new(numbers) { |arr| InsertionSort.new(arr).sort }

ractors = [bubble_sort_ractor, insertion_sort_ractor]

while ractors.any?
  ract, _result = Ractor.select(*ractors)
  ractors.delete(ract)
end
