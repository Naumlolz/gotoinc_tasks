require 'singleton'

# class settings
class Settings
  include Singleton

  def initialize
    @list = {}
  end

  def [](key)
    @list[key]
  end

  def []=(key, value)
    @list[key] = value
  end
end

setting = Settings.instance
setting[:name] = 'Anton'
setting[:age] = 69

p setting[:name]
p setting[:age]
