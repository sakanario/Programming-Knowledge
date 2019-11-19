
Array
  .collect
  .collect!
  .map
  .select
  .to_a : to array
  .call : untuk manggil lambda atau proc

  .all? : jika salah satu element array ada yg bernilai false, maka false
    %w[ant bear cat].all? { |word| word.length >= 3 }
      or
    word =lambda { |word| word.length >= 3 }
    %w[ant bear cat].all? word

PERBEDAAN SELECT DAN COLLECT
  print (1..100).to_a.select(&multiples_of_3) #hanya menselect bila bernilai true
  print (1..100).collect(&multiples_of_3) #menselect semua dan mengeluarkan true or false

PASSING LAMBDA AS METHOD PARAMETER
  Contoh 1
  my_lambda = lambda {|x| x > 9}
  def check(&block)
    cek = false
    x = 0
    until cek == true
      x+=1
      if ( block.call(x) )
        cek = true
        return x
      end
    end
  end
  check {|x| x > 9} #works
  check(my_lambda) #error

  Contoh 2
    lam1 = lambda {|x| x > 9}
    def check(block)
      cek = false
      x = 0
      until cek == true
        x+=1
        if ( block.call(x) )
          cek = true
          return x
        end
      end
    end
    check {|x| x > 9} #error
    check(lam1) #works

OPTIONAL ARGUMENT
# optional argument digunakan ketika kita ga tau berapa jumlah pasti argumen yang
# akan dimasukkan ke method
  SPLAT OPERATOR
    SPLAT OPERATOR PADA PARAMETER
      def qualifier (zone, *countries)
        puts "The winner of #{zone} qualifier are:\n"
        countries.each do |countries|
          puts "-#{countries}\n"
        end
      end

      qualifier("South Amerika","Brazil","Uruguay")
      qualifier("Asia","Iran","South Korea")
      #NOTE : kita ga bisa pake dua splat operator pada method yang sama

    KEBALIKAN, MENGGUNAKAN SPLAT OPERATOR PADA ARGUMENT
      def full_name(first_name,last_name,title)
        puts "#{first_name} #{last_name} #{title}"
      end

      person = ["Uzumaki", "Naruto","M.D"]
      full_name(*person)

PRIVATE METHOD
	class Person
	  attr_accessor :name # menggantikan atribute reader dan writer
	  @@people_count = 0

	  def initialize(name)
		@name = name #variable class diawali @, akan dibuat ketika object dibuat
		@@people_count += 1
		@person_id = @@people_count
	  end

	  def print_person_id
		puts "The person_id is #{@person_id}"
	  end

	private
	  def person_id
		@person_id
	  end
	end


	orang = Person.new("Satria")
	orang.person_id # will error karena di private
	orang.print_person_id # bisa dipanggil hanya dengan method yang ada di dalam class

PROTECTED METHOD
# bisa pake explicit definition
	class Person
	  attr_accessor :name # menggantikan atribute reader dan writer
	  @@people_count = 0

	  def initialize(name)
      @name = name #variable class diawali @, akan dibuat ketika object dibuat
      @@people_count += 1
      @person_id = @@people_count
	  end
	
	  def print_person_id
	  	puts "The person_id is #{@person_id}"
	  end	
		
	  def print_person_id_with_explicit_receiver
		  puts "The person_id is #{self.person_id}"
	  end

	  protected
	  def person_id
		  @person_id
	  end
	end	
	
	orang = Person.new("Satria")
	orang.print_person_id
  orang.print_person_id_with_explicit_receiver
  
  





