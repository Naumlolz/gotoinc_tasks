# class news
class News
  include Comparable
  attr_accessor :title, :body, :date_of_publication

  def initialize(title, body, date_of_publication)
    @title = title
    @body = body
    @date_of_publication = date_of_publication
  end

  def <=>(other)
    date_of_publication <=> other.date_of_publication
  end
end

news1 = News.new('news1#title', 'news1#body', Time.now)
news2 = News.new('news2#title', 'news2#body', Time.now)

puts news2 > news1
