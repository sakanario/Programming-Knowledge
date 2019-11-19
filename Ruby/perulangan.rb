UNTIL
# jalan ketika bernilai false
  counter = 1
  until counter > 10
    puts counter
    counter+=1
  end

FOR
  2. Inclusive
  for i in 1..10
    puts i
  end
  # will print 1 - 10
  # equal with i<=10

  1. Exclusive
  for i in 1...10
    puts i
  end
  # will print 1 - 9
  # equal with i<10

SPECIAL METHOD (ITERATION)
  TIMES
    10.times do
      puts "hello"
    end

    10.times do |counter|
      puts counter
    end
    # will print 0 - 9
    # counter itu semacam bawaan dari times yang awalnya 0 dan akan ++ setiap perulangan

  UPTO
    0.upto(10) do |counter|
      puts counter
    end
    # will print 0 - 10
    # nilai awal counter akan mengikuti angka disamping kiri "."

  DOWNTO
    10.upto(0) do |counter|
      puts counter
    end

  EACH
    [1,2,3,4,5].each do |val|
      puts val
    end
