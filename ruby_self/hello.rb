# greets user depending on current time
class Time
  def self.hello
    current_time = Time.now
    if current_time.strftime('%H:%M').between?('00:00', '05:59')
      puts 'Доброй ночи'
    elsif current_time.strftime('%H:%M').between?('06:00', '11:59')
      puts 'Доброе утро'
    elsif current_time.strftime('%H:%M').between?('12:00', '17:59')
      puts 'Добрый день'
    else
      puts 'Добрый вечер'
    end
  end
end
puts Time.hello

# simple class hello
class Hello
  def initialize(word)
    @word = word
  end

  def say
    puts "Hello #{@word}"
  end
end

hello = Hello.new('Anton')
hello.say
