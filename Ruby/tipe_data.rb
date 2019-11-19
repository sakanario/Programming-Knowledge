# Bolean
a = true
puts a

name = "Satria"
country = "Indoensia"

puts "aku #{name} dari #{country}"

puts "jumlah karater namamu adalah #{name.length}"
# note :  string interpolation only works inside double quotes

# how to print He said, "don't!"?
puts "He said, \"don't!\""
# or
puts 'He said, "don\'t!"'

puts "First line \nsecond line"

# paragraf
puts "\tIndent"

# cara nulis simbol biar ga bentrok
puts "\""
puts "\'"
puts "\\"

# Search in a string
puts "Destination unknown, ruby Ruby".include?("Ruby")
puts "In the beginning, there was light".start_with?("In")
puts "In the end, it doesn't even matter".end_with?("matter")
puts "In the end, it doesn't even matter".end_with?("matter")
puts "Index finger, index finger where are you".index("y")


# ukuran string
"gedein".upcase
"KECILIN".downcase
# ngegedein yg kecil, kecilin yg gede
puts "a swap is needed herE".swapcase


kata = "aku sangat bahagia".split(" ")
print "#{kata}\n"

kata = kata.join(" ")
puts kata

# concatenating string
"Con" + "cat"
"Con" << "cat"

str = "Con"
str += "cat"

"Con".concat("cat")

# multiplying string
puts "-" * 7

# Substitusi string
puts "he was a great sub".sub("sub", "player")
puts "he was not a typical sub, he was a super sub".gsub("sub", "player")

#nil class
an_object = nil
puts an_object.nil?
