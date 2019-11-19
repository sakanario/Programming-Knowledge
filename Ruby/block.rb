
BLOCK
# is a method without a name
# block bisa di jadikan parameter untuk method apapun, namun jika methodnya tidak
# memiliki yield, block tersebut tidak akan dieksekusi
# tujuan penting block adalah melakukan macem macem pada tiap element pada array
  Contoh :
  2.times{puts "this is a one line block"}

  2.times do
    puts "this is multy line block"
  end

USING BLOCK AS PARAMETER
  num = [1,2,3]
  num.collect {|i| i+1 } #[2, 3, 4] tidak merubah array asli
  num.collect! {|i| i+1 } #[2, 3, 4] merubah array asli

YIELD
  Contoh :
  def accept_block #kayanya def itu buat deklarasi method
    puts "This is a method"
    puts "Start"
    yield
    puts "End"
  end
  accept_block {puts "Sasukeee"}
  output :
  # This is a method
  # Start
  # Sasukeee
  # End

  PASSING ARGUMENT KE YIELD
    def ninja(name)
      yield(name)
      puts "-" * 7
      yield("sasuke")
    end
    ninja("naruto") { |name| puts "aku adalah #{name}, seorang ninja terkuat "}
    output :
    aku adalah naruto, seorang ninja terkuat
    -------
    aku adalah sasuke, seorang ninja terkuat

  HOW COLLECT METHOD WORKS USING YIELD
    def my_collect(array)
      new_array = []

      for element in array
        new_array.push yield element
      end
      new_array
    end
    num = [1,2,3]
    my_collect(num) {|i| i+=1} #[2, 3, 4]

PROC
# pembungkus BLOCK
  multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end

  HOW TO INVOKE
    print (1..100).to_a.select(&multiples_of_3)
    print (1..100).collect(&multiples_of_3)
    equal to
    print (1..100).to_a.select {|n| n % 3 == 0}

  Contoh, case: pembulatan
    float = [1.235,2.34123,6.1241,3.9214]
    round_down = Proc.new {|n| n.floor }
    print float.collect!(&round_down) #[1, 2, 6, 3]

  PERBEDAAN SELECT DAN COLLECT
    print (1..100).to_a.select(&multiples_of_3) #hanya menselect bila bernilai true
    print (1..100).collect(&multiples_of_3) #menselect semua dan mengeluarkan true or false

  MENGUBAH METHOD BIASA MENJADI PROC MENGGUNAKAN SYMBOL
    number = [1,2,3,4,5]
    number.map(&:to_s)
      equal to
    number.map{|n| n.to_s}

LAMBDA
  HOW TO DECLARE
    lambda {|param| block}
  SHORTHAND VERSION
    add = -> x,y {x+y}
      equal to
    add = lambda {|x,y| x+y}

  IN ACTION
    string = ['sasuke','naruto']
    symbolize = lambda { |str| str.to_sym}
    string.collect(&symbolize)

PERBEDAAN LAMBDA WITH PROC
 1. lambda akan error saat argumentnya missing, while proc engga
  l = lambda {|name| puts "Hello, #{name}"}
  p = Proc.new {|name| puts "Hello, #{name}"}

  l.call("naruto") # Hello, naruto
  p.call("naruto") # Hello, naruto

  l.call() #error
  p.call() #Hello,

 2. Lambda bisa inisiasi default argument
  l = lambda {|name = "siapa ni?"| puts "Hello, #{name}"}
  l.call() # Hello, siapa ni?

 3. proc akan langsung break dari method ketika jalan,
    sedangkan lambda akan nerusin methodnya
  def batman_v_superman_proc
    victor = Proc.new {return "Batman wins"}
    victor.call
    return "Superman Wins"
  end
  puts batman_v_superman_proc # Batman wins

  def batman_v_superman_lamb
    victor = lambda {return "Batman wins"}
    victor.call
    return "Superman Wins"
  end
  puts batman_v_superman_lamb # Superman Wins

WHY USE PROC AND LAMBDA?
karena keduanya memungkinkan kita untuk pass function sebagai argument kepada method
cara kaya gini dikenal sbg high order function
  crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt:"Dorf",
    ensign:"Ro",
    counselor:"Troi",
    doctor:"Crusher"
  }
  first_half = lambda {|key,value| value < 'M'} # ini sbg function
  # harus pakai key, karena crew  adalah hash
  a_to_m = crew.select(&first_half) # select adlh method
  puts a_to_m

CURRYING
membuat fungsi dari fungsi yang udah ada
  add = lambda {|x,y| x + y}
  add.call(100,200) #300
  increament = add.curry.call(1)
  increament.call(100) #101
  increament[100]  #101
