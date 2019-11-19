new Vue({
  el:"#app",
  data: {
	  title: "Vue Js Basic",
	  berat:80
  },
  
  methods:{
	  BeratBadan(jml){
		  this.berat = this.berat + jml;
	  }, 
  }

})