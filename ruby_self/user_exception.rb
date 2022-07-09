# class user_exception
class UserException < StandardError
end

# class user
class User
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email

    validate!
  end

  def just_latin?
    @email.match(/^[a-zA-Z0-9_\-+ ]*$/)
  end

  private

  def validate!
    raise UserException, 'Input english email only' unless just_latin?
  end
end

user = User.new('Yolo', 'Swaggins', 'asdasdфывфasdasd')
p user
