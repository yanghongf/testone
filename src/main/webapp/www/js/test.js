function formcom() {
	document.myform.submit();
}

function add_ajax(){
	var username=$('#add_username').val();
	var password=$('#add_password').val();
	$.ajax({
		type:'post',
		url:"http://localhost:8080/sample_1/add_ajax",
		data:{'username':username,'password':password},
		dataType:'json',
		success:function(result){
			if(result.success){
				window.location.href = "http://localhost:8080/sample_1/userlist2/1";
			}
		}
	});
}
var add = function() {
	window.location.href = "http://localhost:8080/sample_1/toadd";
}

var change = function(pagenext) {
	window.location.href = "http://localhost:8080/sample_1/userlist2/"
			+ pagenext;
};

var update = function(id) {
	window.location.href = "http://localhost:8080/sample_1/toupdate/" + id;
};
var del = function(id) {
	window.location.href = "http://localhost:8080/sample_1/delete/" + id;
};
var search = function() {
	var username = $('#search_text').val();
	window.location.href = "http://localhost:8080/sample_1/search_users/"
			+ username;
};

// var search2=function(){
// document.searchform.submit();
// };
