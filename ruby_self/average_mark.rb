class User
  @@users = Array.new
  @@users ||= []
  attr_accessor :first_name, :last_name, :mark
  def initialize(first_name, last_name, mark)
    @first_name = first_name
    @last_name = last_name
    @mark = mark
    @@users << self
  end

  def average_mark
    @avg = @@users.select { |user| user.mark}.sum / @@users.length
  end

  def users_mark_above_avg
    @@users.select { |user| user.mark >= @avg}
  end

  user1 = User.new('Anton', 'Naumenkov', 5)
  user2 = User.new('Anton', 'Naumenkov', 4)
  user3 = User.new('Yolo', 'Swaggins', 2)
  # puts @@users.each { |user| user.mark}
end