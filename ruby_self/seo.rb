module Seo
  attr_accessor :description, :keywords
end

class Page
  attr_accessor :title, :body
end

class News < Page
  include Seo
  attr_accessor :date
end

class About < Page
  include Seo
  attr_accessor :phones, :address
end

news = News.new
news.title = 'News#title'
news.description = 'News#description'
news.keywords = %w[Main Familiar]
news.body = 'News#body'
p news.title
p news.description
p news.keywords
p news.body
