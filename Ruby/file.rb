# read whole text
file = File.open("log.txt")
file_data = file.read

puts file_data

# misahin per spasi jadi elemen array
    # file_data = File.read("driver_name.txt").split


# basic way
    f = File.open("my/file/path", "r")
    f.each_line do |line|
      puts line
    end
    f.close

# jadiin array per baris tapi \n nya kebaca
    # file_data =  File.readlines('driver_name.txt')
    # puts file_data
    # print file_data 


# Best turn file into array
f = open('driver_name.txt')
contents_array = []
f.each_line { |line| contents_array << line }
f.close

puts contents_array

# into hash
    f = File.open("f.txt", "r")
        f.each_line do |line|
        a[line.split(',')[0]] = line.split(',')[1]
        end
    f.close

# write niban
File.open("log.txt", "w") { |f| f.write "#{Time.now} - User logged in\n" }

# input argument dari command line
ARGV.each do|a|
    puts "Argument: #{a}"
  end
  then
  
  $ ./test.rb "test1 test2"
  or
  
  v1 = ARGV[0]
  v2 = ARGV[1]
  puts v1       #prints test1
  puts v2       #prints test2