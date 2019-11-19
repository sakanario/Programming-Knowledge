new Vue({
  el:"#app",
  data: {
	  //ini variable array
	  title: "Vue Js Basic",
	  name : ["Satria","Laksana"],
	  url : "https://youtube.com",
	  classes:["one","two","three"]
	  
  },
  //ini tempat bikin/naro fungsi
  methods:{
	  greet(time){
		  //concate = penggabungan string
		  return `Hello and Good ${time}, ${this.name[0]} ${this.name[1]}`;
	  }
  }

})