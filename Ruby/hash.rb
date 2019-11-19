DECLARASI
  a = Hash["key",12]

  a = Hash.new {["default_value"]}
  # jika value suatu key belum diinput, maka akan bernilai default value

SHOW ALL KEY
  a.keys #["kucing", "anjing"]
  # SHOW ALL VALUES
  a.values #[9, 10]

ITERATION
  kekuatan = Hash["Naruto", 90,"Sasuke",100]

  kekuatan.each do|nama,value|
    puts "Kekuatas #{nama} adalah sebesar #{value}"
  end

  kekuatan.each {|nama,value| puts "Kekuatas #{nama} adalah sebesar #{value}"}

ONLY ITERATING THE KEY
  kekuatan.each_key do |nama|
    puts "#{nama}"
  end

ONLY ITERATING THE VALUE
  kekuatan.each_value do |value|
    puts "#{nama}"
  end

Symbol
symbol adalah objek yang bersifat unique dan tidak dapat diubah
symbol is good for a key of a hash, untuk mengurangi pemborosan dan menghindari pembuatan nama yang sama.
  DECLARASI
    :name

  APLIKASI
    barang = Hash[:nama,"sepeda",:harga,1000]
      # or
    barang = Hash[nama:"sepeda",harga:1000]
