# extends Integer class functionality
class Integer
  BYTES_PER_KILOBYTE = 1024
  BYTES_PER_MEGABYTE = 1_048_576
  BYTES_PER_TERABYTE = 1_099_511_627_776

  def minutes
    self * 60
  end

  def hours
    self * 3600
  end

  def days
    self * 84_600
  end

  def kilobytes
    self * BYTES_PER_KILOBYTE
  end

  def megabytes
    self * BYTES_PER_MEGABYTE
  end

  def terabytes
    self * BYTES_PER_TERABYTE
  end

  def to_a
    to_s(2).chars.map(&:to_i)
  end
end

p 5.to_a
p 11.to_a
