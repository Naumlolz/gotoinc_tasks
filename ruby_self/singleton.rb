# class singleton
class Singleton
  def self.instance
    @@obj ||= new
  end

  def dup
    @@obj
  end

  private_class_method :new
  alias clone dup
end
