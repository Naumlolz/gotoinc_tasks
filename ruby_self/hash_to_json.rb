# class hash extended with to_json method
class Hash
  def to_json
    transform_keys(&:to_s)
  end
end

h = { 1 => 'one', 2 => 'two' }
puts h
puts h.to_json
