DEFINISI
class = DNA
object = orang atau perwujudan dari class

convention(ketentuan) in ruby
1. nama class di awali huruf besar
2. nama object diawali huruf kecil

  INSTANCE VARIABLE
  class Person
    def initialize(name)
      @name = name #instance variable diawali @, akan dibuat ketika object dibuat
    end

    def panggil_nama #instance variable harus lewat method untuk ngeluarinnya. Called Getter
      @name
    end

    def ganti_nama=(str) #method untuk ngerubah variable dalem object. Called Setter
      @name = str
    end
  end

  person = Person.new("Satria Laksana")
  puts "Hallo nama saya #{person.panggil_nama}"
  person.ganti_nama = "Sakana"
  puts "Hallo nama saya sekarang #{person.panggil_nama}"

ATRIBUT AJAIB
  class Person
    attr_reader :name # menggantikan method ganti_nama
    attr_writer :name # menggantikan method panggil_nama

    def initialize(name)
      @name = name #variable class diawali @, akan dibuat ketika object dibuat
    end
  end

  person = Person.new("Satria Laksana")
  puts "Hallo nama saya #{person.name}"
  person.name = "Sakana"
  puts "Hallo nama saya sekarang #{person.name}"

  ATRIBUT SUPER AJAIB
    class Person
      attr_accessor :name # menggantikan atribute reader dan writer

      def initialize(name)
        @name = name #variable class diawali @, akan dibuat ketika object dibuat
      end
    end

    person = Person.new("Satria Laksana")
    puts "Hallo nama saya #{person.name}"
    person.name = "Sakana"
    puts "Hallo nama saya sekarang #{person.name}"

CLASS VARIABLE
# variable milik class
# class = pabrik robot, object = robot , nah pabrik robot ini juga bisa punya catatan sendiri yang disebut class variable

  class Person
    attr_accessor :name # menggantikan atribute reader dan writer
    @@people_count = 0

    def initialize(name)
      @name = name #variable class diawali @, akan dibuat ketika object dibuat
      @@people_count += 1
    end

    def self.people_count
      @@people_count
    end

    def people_count
      @@people_count
    end
  end

  person1 = Person.new("Satria Laksana")
  person2 = Person.new("Sakura Haruno")
  puts "Jumlah Populasi adalah #{Person.people_count}"
  puts "Jumlah Populasi menurut penduduk adalah #{person1.people_count}"

GLOBAL VARIABLE
  $earth_circumference = 40000
  class Person
    @@people_count = 12

    def self.show_population
      puts """
      There are a total of #{@@people_count} people in this whole #{$earth_circumference}
      km of earth circumference
      """
    end
  end
  $earth_circumference = 76 # bisa diakses dari manapun
