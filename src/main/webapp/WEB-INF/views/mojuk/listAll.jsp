<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@include file="../include/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.text1_in {
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	border-top: solid 1px;
	font-weight: bold;
}

.text2_in {
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	border-top: solid 1px;
	font-weight: bold;
}

.text3_in {
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	border-top: solid 1px;
	font-weight: bold;
}

.ch {
	display: none;
}

.cl_1 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	color: #FFFFFF;
	background-color: #EE4949;
}

.cl_2 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	vertical-align: text-middle;
	color: #FFFFFF;
	background-color: #EE4949;
}

.cl_3 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	color: #FFFFFF;
	background-color: #EE4949;
}

.cl_2 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	vertical-align: text-middle;
	color: #FFFFFF;
	background-color: #EE4949;
}

.cl_3 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	color: #FFFFFF;
	background-color: #EE4949;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- main content -->
	<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<form role="form" method="post" name="dod">
				<div class="box-body">
					<div>
						<h1 class="text1_in" style="text-align: left;">1_in</h1>
					</div>
					<table class="table table-bordered">
						<c:forEach items="${list1}" var="mojukVO" varStatus="status">
							<div class="cl_1" id="1_in${status.index}">
								<input type="checkbox" id="1_in${status.index}"
									onchange="change${status.index}(${list1[status.index]})"
									name="chkok${status.index}">영상으로 만나는 학습법 특강
							</div>
							<script>
							var temp${status.index} = ${list1[status.index]};
							var chc${status.index} = document.getElementById("1_in${status.index}");
							
							if (temp${status.index}) {
								chc${status.index}.style.backgroundColor = "#159468";
							} else {
								chc${status.index}.style.backgroundColor = "#EE4949";
							}
							
							if (temp${status.index} == true)  {
								dod.chkok${status.index}.checked = true;
							} else {
								dod.chkok${status.index}.checked = false;
							}
							
							function change${status.index}(temp) {
								var chc${status.index} = document.getElementById("1_in${status.index}");
							}
							</script>
						</c:forEach>
					</table>
				</div>
			</form>
			<!-- /.box-body -->
			<div class="box-footer">Footer</div>
			<!-- /.box-footer -->
		</div>
	</div>
	</section>
	<script>
		var result = '${msg}';
		console.log(result);
		if (result == 'success') {
			alert("처리가 완료되었습니다.");
		}
	</script>
	<%@include file="../include/footer.jsp"%>
</body>
</html>