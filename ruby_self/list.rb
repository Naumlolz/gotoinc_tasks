require_relative 'storage'
# list class
class List
  def initialize
    @obj = Storage.new
    yield @obj
  end

  def method_missing(name)
    @obj.params[name]
  end

  def respond_to_missing?
    true
  end
end

list = List.new do |l|
  l.hello = 'hello'
  l.page = 1
  l.number = 30
end

puts list.hello
puts list.page
puts list.number
