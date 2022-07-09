require_relative 'user'
require 'pry'

# class which group users
class Group
  include Enumerable

  def initialize(*args)
    @arr = []
    @args = *args
    @arr << @args
  end

  def each
    @arr.each { |user| yield user }
  end

  # def each
  #   @arr.flatten.each { |user| puts "#{user.first_name} #{user.last_name}" }
  # end
end

user = User.new('Naumenkov', 'Anton', 'Yuri')
user1 = User.new('Swaggins', 'Yolo', '228')

group = Group.new(user, user1)
group.each { |c| puts c }
