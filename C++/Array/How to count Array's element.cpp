// array::size
#include <iostream>
#include <array>

int main ()
{	
  std::array<int,5> foo;
  std::cout << "size of foo: " << foo.size() << std::endl;
	//ini adalah cara mendeclare array dengan bantuan #include <array>
	/* namaArray.size() bisa langsung memunculkan jumlah element dari array,
	tapi sayangnya hanya bisa digunakan bila array dideclare dengan cara seperti ini*/
  
  std::cout << "sizeof(foo): " << sizeof(foo) << std::endl;
  //sizeof(namaArray) mengembalikan ukuran array dalam byte, bila ingin mengetahui jumlah element array harus 
  //dengan cara menghitung ukuran keseluruhan element array, dan membaginya dengan ukuran satu element
  //seperti ini :
  int size = sizeof(foo)/sizeof(foo[0]);
  std::cout <<"Banyak element array foo : "<< size;
  
  return 0;
}
