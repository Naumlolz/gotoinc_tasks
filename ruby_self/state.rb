# class which makes one state to another
class State
  def assign_status
    statuses = %w[soild liquid gas]
    @state = statuses.sample
  end

  def status
    @state
  end

  def melt
    if @state == 'soild'
      @state = 'liquid'
    else
      puts "choose 'freeze' or 'deposit' method"
    end
  end

  def freeze
    if @state == 'liquid'
      @state = 'soild'
    else
      "choose 'liquid' method"
    end
  end

  def boil
    if @state == 'liquid'
      @state = 'gas'
    else
      puts "choose 'condense' or 'melt' method"
    end
  end

  def condense
    if @state == 'gas'
      @state = 'liquid'
    else
      puts "choose 'sublime' or 'boil' method"
    end
  end

  def sublime
    if @state == 'soild'
      @state = 'gas'
    else
      puts "choose 'freeze' or 'deposit' method"
    end
  end

  def deposit
    if @state == 'gas'
      @state = 'solid'
    else
      puts "choose 'boil' or 'sublime' method"
    end
  end
end

state = State.new
state.assign_status
puts state.status
state.sublime
state.condense
puts state.status
state.melt
state.deposit
state.boil
state.freeze
puts state.status
