function list()
{
	$http.get("/accounts").then(function(res){
		alert("aaaa");
		_this.reps=res.body.listPhyexamer;
	});
}

