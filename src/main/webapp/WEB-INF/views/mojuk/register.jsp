<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

input[checked] {
	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<form role="form" method="post" name="dod">
		<input type='hidden' name="cnum" value="${mojukVO.cnum}">
		<div class="box-body">
			<h1 style="text-align: left;">인증현황</h1>
			<hr>
			<div>
				<h1 class="text1_in" style="text-align: left;">1_in</h1>
			</div>
			<c:forEach items="${list1}" var="mojukVO" varStatus="status">
				<div class="cl_1" id="1_in${status.index}">
					<input type="checkbox" id="1_in${status.index}"
						onchange="change${status.index}(${list1[status.index]})"
						name="chkok${status.index}" value="true">영상
				</div>
				<script>
					// 체크된 항목은 다시 풀 수 없게 만들어 줄 변수 선언
					/* var check1_in${status.index} = ${list1[status.index]}; */
					var temp${status.index} = ${list1[status.index]};
					var chc${status.index} = document.getElementById("1_in${status.index}");
					
					if (temp${status.index} == true) {
						chc${status.index}.style.backgroundColor = "#159468";
					} else {
						chc${status.index}.style.backgroundColor = "#EE4949";
					}
					
					if (temp${status.index} == true)  {
						dod.chkok${status.index}.checked = true;
					} else {
						dod.chkok${status.index}.checked = false;
					}
					
					console.log("here: "+temp${status.index});
					
					// db에서 받아온 값이 true일 경우 check가 되어있어야 한다
					/* console.log(temp${status.index}); */
					
					function change${status.index}(temp) {
					var chc${status.index} = document.getElementById("1_in${status.index}");
					
					
					//체크된 항목은 다시 풀 수 없게 만들어 줄 input id를 get함.
					/* var check1_in${status.index} = document.getElementById("check1_in${status.index}")
					
					
					check1_in${status.index}.checked = true;
					check1_in${status.index}.checked = false; */
					
					/* if (temp === true) {
						chc${status.index}.style.backgroundColor = "#159468";
					} else {
						chc${status.index}.style.backgroundColor = "#EE4949";
					}  */
				}
				</script>
			</c:forEach>
			<!-- /.box - body -->
			<div class="box-footer">
				<br> <br> <br> <br> <br> <br>
				<button type="submit" class="btn btn-primary">Submit</button>
				<button type="submit" class="btn btn-warning">Modify</button>
			</div>
		</div>
	</form>
	<%@include file="../include/footer.jsp"%>
	<script>
		/* function change2() {
			var chc3 = document.getElementById("guide1");
			//var chc4 = document.getElementById("video2");
			var chc4 = document.dod.guide2.checked;

			console.log(chc4);
			if (chc4) {
				chc3.style.backgroundColor = "#159468";
			} else {
				chc3.style.backgroundColor = "#EE4949";
			}
		}
		function change3() {
			var chc5 = document.getElementById("tukgang1");
			//var chc6 = document.getElementById("tukgang2");
			var chc6 = document.dod.tukgang2.checked;

			console.log(chc6);
			if (chc6) {
				chc5.style.backgroundColor = "#159468";
			} else {
				chc5.style.backgroundColor = "#EE4949";
			}
		}
		function change4() {
			var chc7 = document.getElementById("jindan1");
			//var chc8 = document.getElementById("jindan2");
			var chc8 = document.dod.jindan2.checked;

			console.log(chc8);
			if (chc8) {
				chc7.style.backgroundColor = "#159468";
			} else {
				chc7.style.backgroundColor = "#EE4949";
			}
		}
		function change5() {
			var chc9 = document.getElementById("pom1");
			//var chc8 = document.getElementById("pom2");
			var chc10 = document.dod.pom2.checked;

			console.log(chc10);
			if (chc10) {
				chc9.style.backgroundColor = "#159468";
			} else {
				chc9.style.backgroundColor = "#EE4949";
			}
		}
		function change6() {
			var chc11 = document.getElementById("soc1");
			//var chc12 = document.getElementById("soc2");
			var chc12 = document.dod.soc2.checked;

			console.log(chc12);
			if (chc12) {
				chc11.style.backgroundColor = "#159468";
			} else {
				chc11.style.backgroundColor = "#EE4949";
			}
		}
		function change7() {
			var chc13 = document.getElementById("wow1");
			//var chc14 = document.getElementById("wow2");
			var chc14 = document.dod.wow2.checked;

			console.log(chc14);
			if (chc14) {
				chc13.style.backgroundColor = "#159468";
			} else {
				chc13.style.backgroundColor = "#EE4949";
			}
		}
		function change8() {
			var chc15 = document.getElementById("toc1");
			//var chc16 = document.getElementById("toc2");
			var chc16 = document.dod.toc2.checked;

			console.log(chc16);
			if (chc16) {
				chc15.style.backgroundColor = "#159468";
			} else {
				chc15.style.backgroundColor = "#EE4949";
			}
		}
		function change9() {
			var chc17 = document.getElementById("fly1");
			//var chc18 = document.getElementById("fly2");
			var chc18 = document.dod.fly2.checked;

			console.log(chc18);
			if (chc18) {
				chc17.style.backgroundColor = "#159468";
			} else {
				chc17.style.backgroundColor = "#EE4949";
			}
		}
		function change10() {
			var chc19 = document.getElementById("flyup1");
			//var chc20 = document.getElementById("flyup2");
			var chc20 = document.dod.flyup2.checked;

			console.log(chc20);
			if (chc20) {
				chc19.style.backgroundColor = "#159468";
			} else {
				chc19.style.backgroundColor = "#EE4949";
			}
		} */
		$(document).ready(function() {

			var formObj = $("form[role='form']");

			$(".btn-warning").on("click", function() {
				formObj.attr("action", "/mojuk/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});
			$(".btn-primary").on("click", function() {
				self.location = "/mojuk/listAll";
			});
		});
		
		
	</script>
</body>
</html>