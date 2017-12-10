<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

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

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th style="width: 150px">이름</th>
							<th style="width: 150px">학번</th>
							<th style="width: 150px">학과</th>
							<th style="width: 150px">3_in전체인증</th>
							<th style="width: 150px">모죽 가입여부</th>
						</tr>
						<c:forEach items="${listv}" var="mojukVO">
							<tr>
								<td><a href='/mojuk/read?cnum=${mojukVO.cnum}'>${mojukVO.username}</a></td>
								<td>${mojukVO.cnum}</td>
								<td>${mojukVO.depart}</td>
								<td>${mojukVO.comp}</td>
								<td>${mojukVO.soci}</td>
							</tr>
						</c:forEach>
						<form role="form" method="post" name="dod">
	</form>
						
					</table>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">Footer</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<%@include file="../include/footer.jsp"%>