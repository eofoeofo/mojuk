<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../include/header.jsp"%>
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
	vertical-align: text-middle;
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
	transform: scale(1);
	transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가함 */
	background-color: #EE4949;
}

.cl_1:hover {
	transform: scale(1.02);
}

.cl_2 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	vertical-align: text-middle;
	transform: scale(1);
	transition: all 0.3s ease-in-out;
	/* 부드러운 모션을 위해 추가함 */
	color: #FFFFFF;
	background-color: #EE4949;
	transition: all 0.3s ease-in-out;
}

.cl_2:hover {
	transform: scale(1.02);
}

.cl_3 {
	border: solid 1px;
	margin: 5px;
	width: 200px;
	height: 100px;
	float: left;
	color: #FFFFFF;
	transform: scale(1);
	transition: all 0.3s ease-in-out;
	/* 부드러운 모션을 위해 추가함 */
	background-color: #EE4949;
	transition: all 0.3s ease-in-out;
}

.cl_3:hover {
	transform: scale(1.02);
}
</style>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" method="post" name="dod">

					<input type='hidden' name='cnum' value="${mojukVO.cnum}">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">이름</label> <input type="text"
								name='username' class="form-control" value="${mojukVO.username}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">학번</label> <input type="text"
								name="cnum" class="form-control" value="${mojukVO.cnum}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">학과</label> <input type="text"
								name="depart" class="form-control" value="${mojukVO.depart}"
								readonly="readonly">
						</div>
					</div>
					<h1 style="text-align: left;">인증현황</h1>
					<hr>
					<div>
						<h1 class="text1_in" style="text-align: left;">1_in</h1>
					</div>
					<c:forEach items="${list1}" var="mojukVO" varStatus="status">
						<label class="cl_1" id="1_in${status.index}"> <input
							type="checkbox" id="1_inc${status.index}"
							onClick="change(${status.index},${list1[status.index]})"
							name="chkok${status.index}" class="ch"><span
							id="spanname${status.index}"></span></label>
						<script>
					// 체크된 항목은 다시 풀 수 없게 만들어 줄 변수 선언
					/* var check1_in${status.index} = ${list1[status.index]}; */
					var temp${status.index} = ${list1[status.index]};
					var chd${status.index} = document.getElementById("1_in${status.index}");
					var chc${status.index} = document.getElementById("1_inc${status.index}");
					
					if (temp${status.index} == true) {
						chd${status.index}.style.backgroundColor = "#159468";
					} else {
						chd${status.index}.style.backgroundColor = "#EE4949";
					}

					if (temp${status.index} == true)  {
						chc${status.index}.checked = true;
					} else {
						chc${status.index}.checked = false;
					}
				</script>
					</c:forEach>
					<br> <br> <br> <br> <br> <br>
					<div>
						<h1 class="text2_in" style="text-align: left;">2_in</h1>
					</div>
					<c:forEach items="${list2}" var="mojukVO" varStatus="status">
						<label class="cl_2" id="2_in${status.index}"> <input
							type="checkbox" id="2_inc${status.index}"
							onClick="change(${status.index},${list2[status.index]})"
							name="chkok2${status.index}" class="ch"><span
							id="spanname2${status.index}"></span>
						</label>
						<script>
					// 체크된 항목은 다시 풀 수 없게 만들어 줄 변수 선언
					/* var check1_in${status.index} = ${list1[status.index]}; */
					var temp2${status.index} = ${list2[status.index]};
					var chd2${status.index} = document.getElementById("2_in${status.index}");
					var chc2${status.index} = document.getElementById("2_inc${status.index}");
					
					if (temp2${status.index} == true) {
						chd2${status.index}.style.backgroundColor = "#159468";
					} else {
						chd2${status.index}.style.backgroundColor = "#EE4949";
					}

					if (temp2${status.index} == true)  {
						chc2${status.index}.checked = true;
					} else {
						chc2${status.index}.checked = false;
					}
				</script>
					</c:forEach>
					<br> <br> <br> <br> <br> <br>
					<div>
						<h1 class="text3_in" style="text-align: left;">3_in</h1>
					</div>
					<c:forEach items="${list3}" var="mojukVO" varStatus="status">
						<label class="cl_3" id="3_in${status.index}"> <input
							type="checkbox" id="3_inc${status.index}"
							onClick="change(${status.index},${list3[status.index]})"
							name="chkok3${status.index}" class="ch"><span
							id="spanname3${status.index}"></span>
						</label>
						<script>
					// 체크된 항목은 다시 풀 수 없게 만들어 줄 변수 선언
					/* var check1_in${status.index} = ${list1[status.index]}; */
					var temp3${status.index} = ${list3[status.index]};
					var chd3${status.index} = document.getElementById("3_in${status.index}");
					var chc3${status.index} = document.getElementById("3_inc${status.index}");
					
					if (temp3${status.index} == true) {
						chd3${status.index}.style.backgroundColor = "#159468";
					} else {
						chd3${status.index}.style.backgroundColor = "#EE4949";
					}

					if (temp3${status.index} == true)  {
						chc3${status.index}.checked = true;
					} else {
						chc3${status.index}.checked = false;
					}
				</script>
					</c:forEach>
					<div class="box-footer">
						<br> <br> <br> <br> <br> <br>
						<button type="submit" class="btn btn-primary">Submit</button>
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
		function change(num,temp) {
			var chkdiv = document.getElementById('1_in'+num);
			var chkbox = document.getElementById('1_inc'+num);
			var chkdiv2 = document.getElementById('2_in'+num);
			var chkbox2 = document.getElementById('2_inc'+num);
			var chkdiv3 = document.getElementById('3_in'+num);
			var chkbox3 = document.getElementById('3_inc'+num);

			if(chkbox.checked == true){
				chkdiv.style.backgroundColor = "#159468";
				chkbox.checked = true;
			}else{
				chkdiv.style.backgroundColor = "#EE4949";
				chkbox.checked = false;
			}
			
			console.log(chkbox2.checked);
			if(chkbox2.checked == true){
				chkdiv2.style.backgroundColor = "#159468";
				chkbox2.checked = true;
			}else{
				chkdiv2.style.backgroundColor = "#EE4949";
				chkbox2.checked = false;
			}
			
			if(chkbox3.checked == true){
				chkdiv3.style.backgroundColor = "#159468";
				chkbox3.checked = true;
			}else{
				chkdiv3.style.backgroundColor = "#EE4949";
				chkbox3.checked = false;
			}
		}
		</script>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>
