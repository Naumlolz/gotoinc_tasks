def unique_words(text)
  regexp1 = /[^0-9A-Za-z]/
  regexp2 = /( '|' )/
  regexp3 = Regexp.union(regexp1, regexp2)
  no_special_characters_text = text.gsub!(regexp3, ' ')
  array_of_words = no_special_characters_text.split(/\W+/).map{ |word| word.downcase}
  return [] if array_of_words.uniq.length < 3

  freq_values = array_of_words.inject(Hash.new(0)) { |word_count_hash, word| word_count_hash[word] += 1 ;word_count_hash}
  a = freq_values.sort_by{ |k, v| v }.reverse.first(3)
  puts "#{a[0][0].capitalize} - word occured #{a[0][1]} times"
  puts "#{a[1][0].capitalize} - word occured #{a[1][1]} times"
  puts "#{a[2][0].capitalize} - word occured #{a[2][1]} times"
end

unique_words('Vivamus augue ante, tincidunt quis tincidunt ut, porta ut ex.
Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Proin aliquet magna vitae placerat rutrum. Donec mattis lobortis leo sed tempor.
Quisque dignissim lacus ut tortor mollis porta. Sed in velit id mauris rutrum ultrices eu at odio.
Curabitur faucibus, turpis eu accumsan vestibulum, odio sem tincidunt nisl,
malesuada consectetur nulla est ut dui. Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Aliquam erat volutpat. Aenean vitae pretium purus.
Vestibulum sodales velit ut est malesuada, eu imperdiet sapien lobortis.
Sed quis lorem blandit, scelerisque ex id, ullamcorper enim.
Nulla sagittis eleifend pellentesque. Maecenas dui lectus, ullamcorper et elit id,
bibendum ornare mauris. Praesent sollicitudin, ex sit amet lacinia facilisis,
nunc magna finibus tortor, id sodales dolor neque id nunc.
Mauris pulvinar nulla non risus scelerisque, et semper ante volutpat.')