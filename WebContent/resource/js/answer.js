var btnCheck = document.querySelector("#btn-check");
var titleCheck= document.querySelector("ul input:first-child");
var contentCheck= document.querySelector("ul input:first-child+input");
var recipientCheck= document.querySelector("ul input+input+input");

btnCheck.onclick = function() {
	if(titleCheck.value == ""){
		alert("제목을 입력하세요");	
		return false;
	};
	if(contentCheck.value == ""){
		alert("내용을 입력하세요");
		return false;
};
	if(recipientCheck.value =="" ){
		alert("받는이를 입력해주세요");
		return false;
	};
};