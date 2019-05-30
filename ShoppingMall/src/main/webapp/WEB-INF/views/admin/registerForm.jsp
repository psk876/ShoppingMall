<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style media="screen">
.margin {
	margin-top: 20px;
}
</style>
<title>register form</title>
</head>
<body>
	<jsp:include page="../template/navBar.jsp" flush="false"></jsp:include>
	<div class="container text-center">
		<div class="row">
			<div class="col">
				<h1>GOODS REGISTER FORM</h1>
			</div>
		</div>
		<form id="registerForm" method="post" action="${contextPath }/admin/registerGoods" enctype="multipart/form-data" autocomplete="off">
			<div class="row justify-content-center margin">
				<div class="col-md-7 col-12 margin">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">항목</th>
								<th scope="col">입력란</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">상품이름</th>
								<td><input type="text" class="form-control text-center"
									aria-describedby="basic-addon2" name="name"></td>
							</tr>
							<tr>
								<th scope="row">상품코드</th>
								<td><input type="text" class="form-control text-center"
									aria-describedby="basic-addon2" name="code"></td>
							</tr>
							<tr>
								<th scope="row">대분류</th>
								<td>
									<select class="custom-select text-center" name="category-first">
											<option value="100">무기</option>
											<option value="200">방패</option>
											<option value="300">투구</option>
											<option value="400">갑옷</option>
											<option value="500">신발</option>
											<option value="600">장갑</option>
									</select>
								</td>
							</tr>
							<tr>
								<th scope="row">소분류</th>
								<td>
									<select class="custom-select text-center" name="category">
											
									</select>
								</td>
							</tr>
							<tr>
								<th scope="row">상품가격</th>
								<td><input type="text" class="form-control text-center"
									aria-describedby="basic-addon2" name="price"></td>
							</tr>
							<tr>
								<th scope="row">재고</th>
								<td><input type="text" class="form-control text-center"
									aria-describedby="basic-addon2" name="stock"></td>
							</tr>
							<tr>
								<th scope="row">상품설명</th>
								<td><textarea class="form-control" rows="10"
										name="description"></textarea></td>
							</tr>
							<tr>
								<th scope="row">썸네일</th>
								<td><input type="file" class="form-control text-center"
									aria-describedby="basic-addon2" name="imageFile"></td>
							</tr>
							<tr>
								<th scope="row">업로드된 이미지</th>
								<td><img id="uploaded-img" src=""></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="alert" class=""></div>
				<div class="col-md-7 col-12 margin text-right">
					<button type="button" class="btn btn-outline-success" onclick="register();">상품등록</button>
				</div>
			</div>
		</form>
		<div>
			<input type="hidden" value="${contextPath }" id="contextPath">
		</div>	
	</div>	
</body>
<script type="text/javascript">
	var resultData = '${resultData}';
</script>
<script type="text/javascript" src="../resources/JS/admin/categoryOption.js"></script>
<script type="text/javascript" src="../resources/JS/admin/registerForm.js"></script>
</html>