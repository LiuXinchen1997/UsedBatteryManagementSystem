function check() {
	if(!validateUsername()) {
		alert('您还没有输入用户名~');
		return false;
	} else if(!validatePassword()) {
		alert('您还没有输入密码~');
		return false;
	} else {
		return true;
	}
}

$(function() {
	$("#username").on("blur", function() {
		validateUsername();
	})
	
	$("#password").on("blur", function() {
		validatePassword();
	})
});

function validateUsername() {
	return validateEmpty("username");
}

function validatePassword() {
	return validateEmpty("password");
}

function validateEmpty(eleId) {
	if ($("#" + eleId).val() == "") {
		$("#" + eleId + "Div").attr("class", "form-group has-error");
		$("#" + eleId + "Span").html("<span class='text-danger'>输入内容不能为空</span>");
		return false;
	} else {
		$("#" + eleId + "Div").attr("class", "form-group has-success");
		$("#" + eleId + "Span").html("<span class='text-success'>输入内容合法有效</span>");
		return true;
	}
}