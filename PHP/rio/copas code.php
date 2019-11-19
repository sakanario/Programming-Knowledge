<?php

//Tanggal
$ldate = date('Y-m-d H:i:s');

//Tanggal ver 2
namespace Carbon;
$mytime = Carbon::now();
echo $mytime->toDateTimeString();

//Hari
namespace Carbon;
$weekMap = [
  0 => 'SU',
  1 => 'MO',
  2 => 'TU',
  3 => 'WE',
  4 => 'TH',
  5 => 'FR',
  6 => 'SA',
];
$dayOfTheWeek = Carbon::now()->dayOfWeek;
$weekday = $weekMap[$dayOfTheWeek];

//Cek null
//null == 0
if(!$variable){
  echo 'kosong!';
}
//Cek null ver2
if($variable == null){
  echo 'kosong!';
}

//upload gambar
public function store(Request $request)

 {

     $this->validate($request, [

             'filename' => 'required',
             'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'

     ]);

     if($request->hasfile('filename'))
      {
        $file = $request->file('filename');
        $name = $file->getClientOriginalName();
        $file->move(public_path().'/storage/', $name);

        //upload banyak gambar sekaligus
         // foreach($request->file('filename') as $image)
         // {
         //     $name=$image->getClientOriginalName();
         //     $image->move(public_path().'/images/', $name);
         //     $data[] = $name;
         // }
      }

      $table= new course();
      $table->filename=$name;
      $table->jawaban=$request->jawaban;
      $table->nama=$request->nama;


     $table->save();

     return back()->with('success', 'Your images has been successfully');
 }
