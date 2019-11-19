DECLARING ARRAY
  DECLARE EMPTY ARRAY
    foo = []
    foo = Array.new

  DECLARE ARRAY WITH SET OF VALUE
    fop = [1,2,3,"a","b","c"]

  DECLARE ARRAY OF STRING
    foo = %w[aku ganteng] # return ["aku", "ganteng"]
      or
    foo = Array.new(3, "abc")

  DECLARE ARRAY USING BLOCK
    foo = Array.new(3) {"abc"} #["abc", "abc", "abc"]

    i = 0
    foo = Array.new(3) { i += 1} # return [1, 2, 3]

ACCESSING ARRAY
  [1,2,3,4,5][1] # 2
  [1,2,3,4,5][-2] # 4
  #last element has an index value of -1

  foo #["abc", "abc", "abc"]
  foo[0].upcase! #["ABC", "abc", "abc"]
  foo[1] = "xyz" #["ABC", "xyz", "abc"]

ADD ELEMENT
  foo = Array.new(3) { i += 1} #[1, 2, 3]
  foo << 12 #[1, 2, 3, 12]

SLICING ARRAY
  foo = ["a","b","c","d"]
  foo[0,2] # ["a","b"]
  foo[2,2] # ["c","d"]
  # 1st parameter : awal
  # 2nd parameter : jumlah element
  +---+---+---+---+
  | a | b | c | d |
  +---+---+---+---+
  0   1   2   3   4 -> index when slicing

  foo = [1,2,3,4,5]
  foo[0,3] = "cat"
  foo #["cat", 4, 5]
  # ambil sisanya tetapi element pertama adalah "cat"

  USING RANGE
    [1,2,3,4,5][0..2] # [1, 2, 3]
    [1,2,3,4,5][0...2] # [1, 2]



ARRAY INSIDE AN ARRAY
  foo = [1,2,3,4,5]
  foo[0] = ["satria","ganteng"]
  foo # [["satria", "ganteng"], 2, 3, 4, 5]
  foo[0] # ["satria", "ganteng"]
  foo[0][1] # "ganteng"



SKIPING INDEX
  foo[6] = "sugeeh"
  foo #[["satria", "ganteng"], 2, 3, 4, 5, nil, "sugeeh"]

TRANSFORMING ARRAY
  number = [1,2,3,4,5]
  plus_one = number.map {|i| i+1} #[2, 3, 4, 5, 6]
  plus_one = number.collect {|i| i+1} #[2, 3, 4, 5, 6] #just the same with map

FILTER
  event = number.select {|i| i.even? } #[2, 4]

  region = ["senen","menteng","cikini","Pluit"]
  region.select {|i| i.size >= 6} #["menteng", "cikini"]
  region.select {|i| i.length >= 6} #["menteng", "cikini"]

DELETING ELEMENT
  number = [1,2,1,4,5]
  number.delete(1) #mennghapus semua element yg bernilai 1
  number  #[2, 4, 5]
  number.delete_at(2) #mennghapus element pada index ke
  number  #[2, 4]

  number = [1,2,3,4,5]
  number.delete_if {|i| i.even?} # [1, 3, 5]

ITERATING ELEMENT OF AN ARRAY
  name = ["Sasuke","naruto","sakura","hinata"]
  for i in 0..3 do
    puts "My name is #{name[i]}"
  end
  # My name is Sasuke
  # My name is naruto
  # My name is sakura
  # My name is hinata

  for i in name do
    puts "My name is #{i}"
  end
  # My name is Sasuke
  # My name is naruto
  # My name is sakura
  # My name is hinata

  # without for
  name.each do |i|
    puts "My name is #{i}"
  end
  # My name is Sasuke
  # My name is naruto
  # My name is sakura
  # My name is hinata

ARRAY DE-STRUCTURING
  Contoh 1
  first,*list = [1,2,3,4]
  first #[1]
  *list #[2,3,4]
  Contoh 2
  *list,last = [1,2,3,4]
  *list #[1,2,3]
  last #[4]
  Contoh 3
  first,*center,last = [1,2,3,4]
  first # 1
  *center #[2,3]
  last #[4]

ARRAY COERCION
a = *"Hello"
a # ["Hello"]

b = *(1..3)
b # [1,2,3]
#note : 1..3 adalah class range
