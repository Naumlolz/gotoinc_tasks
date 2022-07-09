# class person
class Person
  private_class_method :new
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
end

# class user
class User < Person
  public_class_method :new
end

user = User.new('Naumenkov', 'Anton', 'NaumE64@ukr.net')
p user
