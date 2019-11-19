playersRef.on('value', showData, showError)

// metode on ini punya 3 argumen
// yg pertama event type (value,child_added,child_removed,child_changed,child_moved)
// maksudnya gmn tuh? kalo pake child_added maka setiap ada penambahan data maka akan tertriger
//yg kedua adalah fungsi kalo datanya berhasil di akses
//yg ketiga kalo error

// FILTER DAN SORT
    // SORT
    //note : belum tau cara nampilin dua referensi
        //orderByChild 
        playersRef.orderByChild('nama').on('value', showData, showError)

        function showData(items) {
            var _ul = document.getElementsByTagName('ul')[0];

            var _content = '';

            items.forEach(function (item) {
                _content += "<li>" + item.val().nama + " - " + item.val().no + "</li>"

            })
            _ul.innerHTML = _content;
        }

        //orderByValue
        topscorersRef.orderByValue().on('value', showData2, showError)

        function showData2(items) {
            var _ul = document.getElementsByTagName('ul')[0];

            var _content = '';

            items.forEach(function (item) {
                _content += "<li>" + item.key + " - " + item.val() + "</li>"

            })
            _ul.innerHTML = _content;
        }

    //FILTER
    //startAt(), endAt(), equalTo(), limitToFirst(), limitToLast() 

//CRUD
    //set : rewrite or replace
    //  set ga ngasih id samsek
    playersRef.set({
        "nama": "Buffon",
        "no": 1
    })//kalo kaya gini data bakal langsung jadi child dari player 

    playersRef.set({
        1:{
            "nama": "Buffon",
            "no": 1
        }
    })
        
    //push : nambahin & generate id unik
    playersRef.push({
        "nama": "Buffon",
        "no": 1
    })

    //update : edit or nambahin dengan spesifik id 
        //ga bisa update sepotong, misal childnya ada 2, harus dikasih nilai kedua childnya, atau
        //replace id yg udh ada
    playersRef.update({
        1: {
            "nama": "Buffon",
            "no": 1
        }
        
    })

    //delete
    playerRef.child(3).remove();
    


