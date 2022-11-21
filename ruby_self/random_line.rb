def random_line_fetcher(filename)
  File.readlines(filename).sample
end

def shuffle_lines(filename)
  File.readlines(filename).shuffle
end

def min_max_lines(filename)
  max_str = "#{File.readlines(filename).max.chomp}: #{File.readlines(filename).max.size}"
  min_str = "#{File.readlines(filename).min.chomp}: #{File.readlines(filename).min.size}"
  [max_str, min_str]
end

def filesize(filename)
  "#{File.size(filename)} bytes"
end

puts filesize('user.rb')
