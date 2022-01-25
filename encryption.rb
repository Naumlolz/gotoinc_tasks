def encrypt(text, n)
  return text if n <= 0

  n.times do
    text = text.chars
    chars_odd = text.select.with_index{ |e, idx| idx.odd?}
    chars_even = text.select.with_index{ |e, idx| idx.even?}
    text = (chars_odd + chars_even).join
  end
  text
end

def decrypt(encrypted_text, n)
  return encrypted_text if n <= 0

  n.times do
    mid = encrypted_text.length/2
    arr1 = encrypted_text[0...mid].chars
    arr2 = encrypted_text[mid ..-1].chars
    encrypted_text = arr2.zip(arr1).join("")
  end
  encrypted_text
end

puts encrypt('yolo', 2)
puts decrypt('oloy', 2)