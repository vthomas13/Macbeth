class Macbetherino
  lines = File.open("macbeth.txt", "r") {|file| file.read}
  hash=Hash.new(0)
  lines.downcase.scan(/\w{5,}/).each
      .with_object(hash) {|word, h| h[word] += 1 }

  puts hash.sort_by{|word,count| -count}

end