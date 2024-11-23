# frozen_string_literal: true

require 'date'
require './transaction'
require './quick_sorter'

transactions = []
input_file_path = 'input.txt'
output_file_path = 'sorted_transactions.txt'

File.foreach(input_file_path) do |line|
  parts = line.strip.split(',')
  transactions << Transaction.new(
    timestamp: DateTime.parse(parts[0]),
    id: parts[1],
    user_id: parts[2],
    amount: parts[3]
  )
end

sorted_transactions = QuickSorter.new(array: transactions).perform

File.open(output_file_path, 'w') do |file|
  sorted_transactions.each do |transaction|
    file.puts("#{transaction.timestamp},#{transaction.id},#{transaction.user_id},#{transaction.amount}")
  end
end
