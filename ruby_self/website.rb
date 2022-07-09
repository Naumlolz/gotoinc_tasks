# class websiteuser
class WebSiteUser
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def say
    self.class.name
  end
end

# class author
class Author < WebSiteUser
end

# class admin
class Admin < WebSiteUser
end

admin = Admin.new('Naumenkov', 'Anton', 'NaumE64@ukr.net')
author = Author.new('Naumenkov', 'Anton', 'NaumE64@ukr.net')

p admin
p author
