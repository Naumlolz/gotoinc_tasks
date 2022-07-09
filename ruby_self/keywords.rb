require 'set'

# class keyword
class Keyword
  attr_reader :keywords

  def initialize
    @keywords = Set.new
  end

  def add_keyword(keyword)
    @keywords << keyword
  end
end

yolo = Keyword.new
p yolo
yolo.add_keyword('yolo')
p yolo
yolo.add_keyword('swag')
p yolo
