<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

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
	<%@include file="../include/header.jsp"%>
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
					<c:forEach items="${list1}" var="mojukVO" varStatus="status">
						<div class="cl_1" id="1_in${status.index}">
							<input type="checkbox" id="1_in${status.index}"
								onchange="change${status.index}(${list1[status.index]})"
								name="chkok${status.index}" class="ch"><span
								id="spanname${status.index}"></span>
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
					<br> <br> <br> <br> <br> <br>
					<div>
						<h1 class="text2_in" style="text-align: left;">2_in</h1>
					</div>
					<c:forEach items="${list2}" var="mojukVO" varStatus="status">
						<div class="cl_2" id="2_in${status.index}">
							<input type="checkbox" id="2_in${status.index}"
								onchange="change${status.index}(${list2[status.index]})"
								name="chkok2${status.index}" class="ch"><span
								id="spanname2${status.index}"></span>
						</div>
						<script>
							var temp2${status.index} = ${list2[status.index]};
							var chc2${status.index} = document.getElementById("2_in${status.index}");
							
							if (temp2${status.index}) {
								chc2${status.index}.style.backgroundColor = "#159468";
							} else {
								chc2${status.index}.style.backgroundColor = "#EE4949";
							}
							
							if (temp2${status.index} == true)  {
								dod.chkok2${status.index}.checked = true;
							} else {
								dod.chkok2${status.index}.checked = false;
							}
							
							function change${status.index}(temp) {
								var chc2${status.index} = document.getElementById("2_in${status.index}");
							}
							</script>
					</c:forEach>
					<br> <br> <br> <br> <br> <br>
					<div>
						<h1 class="text3_in" style="text-align: left;">3_in</h1>
					</div>
					<c:forEach items="${list3}" var="mojukVO" varStatus="status">
						<div class="cl_3" id="3_in${status.index}">
							<input type="checkbox" id="3_in${status.index}"
								onchange="change${status.index}(${list3[status.index]})"
								name="chkok3${status.index}" class="ch"><span
								id="spanname3${status.index}"></span>
						</div>
						<script>
							var temp3${status.index} = ${list3[status.index]};
							var chc3${status.index} = document.getElementById("3_in${status.index}");
							
							if (temp3${status.index}) {
								chc3${status.index}.style.backgroundColor = "#159468";
							} else {
								chc3${status.index}.style.backgroundColor = "#EE4949";
							}
							
							if (temp3${status.index} == true)  {
								dod.chkok3${status.index}.checked = true;
							} else {
								dod.chkok3${status.index}.checked = false;
							}
							
							function change${status.index}(temp) {
								var chc3${status.index} = document.getElementById("3_in${status.index}");
							}
							</script>
					</c:forEach>
				</div>
		</div>
		</form>
		<script>
		window.onload = function(){
			for(var num = 0; num<4; num++){
				var name = document.getElementById('spanname'+num);
				if(num == 0){
					name.innerHTML = "영상으로 만나는 학습법 특강";
				}else if(num == 1){
					name.innerHTML = "학습법 가이드 책자";
				}else if(num == 2){
					name.innerHTML = "학습법 특강";
				}else{
					name.innerHTML = "학습유형진단";
				}
			}

			for(var num = 0; num<3; num++){
				var name = document.getElementById('spanname2'+num);
				if(num == 0){
					name.innerHTML = "POM나는 경진대회";
				}else if(num == 1){
					name.innerHTML = "SOC들어오는 노트공모전";
				}else{
					name.innerHTML = "WOW캠프";
				}
			}
			
			for(var num = 0; num<3; num++){
				var name = document.getElementById('spanname3'+num);
				if(num == 0){
					name.innerHTML = "TOC튀는 멘토링";
				}else if(num == 1){
					name.innerHTML = "FLY튜터링";
				}else{
					name.innerHTML = "FLY UP튜터링";
				}
			}
		}
		</script>
		<!-- /.box-body -->
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