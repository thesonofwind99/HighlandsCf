<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- Link css bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> 
    <!-- Link js bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">   
    <!-- Link icon bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Link css -->
    <style type="text/css">
    	<%@include file="/css/index.css"%>
    	<%@include file="/css/login.css"%>
    	<%@include file="/css/admin.css"%>
    </style>
<title>Admin</title>
</head>
<body>
<div class="container-fluid">
		<header>
			<div class="top_hea_menu">
				<div class="container">
					<div class="row">
						<div class="col-3 col-lg-3 d-flex"
							style="align-items: center; position: relative;">
							<div class="header_action_item">
								<div class="header_action_text d-flex" id="menu">
									<a href="#"> <span class="bi bi-list"></span> <span
										class="icon_text">MENU</span>
									</a>
								</div>
								<div class="header_action_dropdown" id="menu_hidden">
									<div class="header_dropdown_content">
										<div class="sitenav_content">
											<div class="sitenav_content_title">
												<a class="d-flex" href> <i class="bi bi-house-door"></i>
													<button class="btn btn_close">
														<i class="bi bi-x-lg"></i>
													</button>
												</a>
											</div>
											<div class="sitenav_content_block">
												<div class="mobile_menu">
													<div class="mobile_menu_inner">
														<ul class="nav_la_list_items">
															<li class="ng_scope"><a href="#">QUẢN LÝ MẬT
																	KHẨU</a></li>
															<li class="ng_scope"><a href="#">QUẢN LÝ DANH
																	MỤC</a></li>
															<li class="ng_scope active"><a href>QUẢN LÝ SẢN
																	PHẨM</a></li>
															<li class="ng_scope"><a href>QUẢN LÝ BANNER</a></li>
														</ul>
														<div class="mobile_menu_help">
															<p class="help_title">Bạn cần hỗ trợ</p>
															<div class="help_item">
																<a class="help_item_link" href><i
																	class="bi bi-telephone"></i> 0917561212 </a>
															</div>
															<div class="help_item">
																<a class="help_item_link" href><i
																	class="bi bi-envelope-paper"></i>
																	cpg.customerservice@vtijs.com </a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a class="logo" href="index.html"> <img
								src="/ASM_SOF3011/img/logo.webp" alt>
							</a>
						</div>
						<div class="col-5 col-lg-6 d-flex" style="align-items: center;">
							<div class="input-group">
								<input type="text" class="form-control input_search"
									placeholder="Tìm sản phẩm..." aria-label="Recipient's username"
									aria-describedby="basic-addon2">
								<button class="input-group-text btn_search" id="basic-addon2">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
						<div class="col-4 col-lg-3 d-flex"
							style="align-items: center; justify-content: end;">
							<a href class="search d-none"> <span class="bi bi-search"></span>
							</a> 
							<a href="" class="account"> <span
								class="bi bi-person-circle"></span> <span class="account_text">Tài
									khoản</span>
							</a> 
							<a href="loginAdmin" class="account" style="margin-left: 15px;"> 
							<span class="bi bi-box-arrow-right"></span> <span class="account_text">Thoát</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="header_main_nav">
				<div class="container">
					<a class="house" href><span class="bi bi-house-door"></span></a>
					<ul class="nav">
						<li class="nav-item"><a class="nav-link" href="#">MẬT
								KHẨU</a></li>
						<li class="nav-item"><a class="nav-link" href>DANH MỤC</a></li>
						<li class="nav-item active"><a class="nav-link" href="#">SẢN
								PHẨM</a></li>
						<li class="nav-item"><a class="nav-link" href>BANNER</a></li>
					</ul>
				</div>
			</div>
		</header>
		<div class="container"
                style="margin-top: 30px; margin-bottom: 20px;" ng-controller="myCtrl">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-md-12">
                        <div class="page_login">
                            <div id="login" class="row m-0">
                                <div
                                    class="evo_account_content col-lg-12 col-md-12">
                                    <ul class="auth_block nav-tabs" role="tablist">
                                        <li><a class="active" href="#table" data-bs-toggle="tab" id="ds_sp">Danh sách sản phẩm</a></li>
                                        <li><a class="" href="#form" data-bs-toggle="tab">Thêm sản phẩm</a></li>
                                    </ul>
                                    <div class="modal" id="myModal">
                                        <div class="modal-dialog">
                                          <div class="modal-content">               
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                              <h4 class="modal-title">Cập nhật sản phẩm</h4>
                                              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>                                                 
                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <form action="/ASM_SOF3011/main" name="form_update" method="post" enctype="multipart/form-data">
                                                    <fieldset class="form_group" style="margin-bottom: 0;">
                                                        <label class="form-label"
                                                            for="btn_chooseFile">ẢNH<span class="required">*</span></label> <br>
                                                         <input id="id_prod_again" type="hidden" name="id">   
                                                        <img id="img_again" class="mb-2" src="" alt="" width="20%">  
                                                        <input class="form-control form-control-sm" name="img_main_again" 
                                                        type="file">
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            for="name_prod">TÊN SẢN PHẨM<span class="required">*</span></label>
                                                        <input
                                                            autocomplete="off"
                                                            placeholder="Nhập Tên sản phẩm"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            required
                                                            id="title_again"
                                                            name="title_again">
                                                        <span
                                                            class="help-block form-error"
                                                            id="name_prodError"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            for="price">GIÁ GỐC<span class="required">*</span></label>
                                                        <input
                                                            autocomplete="off"
                                                            placeholder="Nhập Giá gốc"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            name="price_again"
                                                            required  
                                                            id="price_again">
                                                        <span
                                                            class="help-block form-error"
                                                            id="priceError"></span>
                                                    </fieldset>
                                                    <div class="modal-footer">
                                              <button type="submit" formaction="/ASM_SOF3011/admin/update" class="btn btn-primary">Cập nhật</button>  
                                              <button type="button" id="close" class="btn btn-danger" data-bs-dismiss="modal">Đóng</button>
                                            </div>  
                                                </form>
                                            </div>                                                                                                                                         
                                          </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    	<form action="/ASM_SOF3011/main" method="post">
                                    		<div class="modal-dialog modal-dialog-centered">
									    	<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="staticBackdropLabel">Modal
														title</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<input value="" type="hidden" id="id_prod_again_delete"
														name="id_delete"> Bạn có muốn xoá sản phẩm này ?
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Đóng</button>
													<button formaction="/ASM_SOF3011/admin/delete" type="submit" class="btn btn-danger">Xoá</button>
												</div>
											</div>
									  </div>
                                    	</form>	
                                    							  
									</div>
                                    <div class="evo_login tab-content">
                                        <table class="table table-hover tab-pane active" id="table">
                                            <thead>
                                              <tr class="table-warning">
                                                <th class="col-1">STT</th>
                                                <th class="col-1">Hình</th>
                                                <th class="col-4">Tên</th>
                                                <th class="col-2">Giá</th>
                                                <th class="col-2">Lượt xem</th>
                                                <th class="col-2">Thao tác</th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                              <c:forEach var="item" items="${sessionScope.adminProdList}" varStatus="loop">
                                              	<tr class="admin_prod_list">
                                                <td>${loop.index+1}</td>
                                                <td><img src="/ASM_SOF3011/img/${item.img_main}" alt=""></td>
                                                <td>
                                                    ${item.title}
                                                </td>
                                                <td>${item.price}đ</td>
                                                <td>0</td>
                                                <td>
                                                    <button class="btn edit-btn" data-bs-toggle="modal" data-bs-target="#myModal" data-id="${item.id_prod}" data-img="${item.img_main}" data-title="${item.title}" data-price="${item.price}"><i class="bi bi-arrow-repeat"></i> Sửa</button>
                                                    <button class="btn delete-btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="${item.id_prod}"><i class="bi bi-trash3"></i> Xoá</button>
                                                </td>
                                              </tr>
                                              </c:forEach>
                                            </tbody>
                                        </table>
                                        <div class="control_btn">
                                        	<button class="btn_login">UPLOAD FILE</button>
                                        </div>
                                        <div class="tab-pane fade" id="form">
                                            <form action="/ASM_SOF3011/main" method="post" id="customer_login" name="form_add" enctype="multipart/form-data">
                                                <div class="form_signup_clear">
                                                    <fieldset class="form_group" style="margin-bottom: 0;">
                                                        <label class="form-label">ẢNH<span class="required">*</span></label>
                                                        <input name="img_main" class="form-control form-control-sm" required type="file">
                                                        <span
                                                            class="help-block form-error"
                                                            id="formFileSmError"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            >MÃ SẢN PHẨM<span class="required">*</span></label>
                                                        <input
                                                        	name="id_prod"
                                                            autocomplete="off"
                                                            placeholder="Nhập Mã sản phẩm"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            required  
                                                            id="id_prod">
                                                        <span
                                                            class="help-block form-error"
                                                            id="categoryError"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            >TÊN SẢN PHẨM<span class="required">*</span></label>
                                                        <input
                                                        	name="title"
                                                            autocomplete="off"
                                                            placeholder="Nhập Tên sản phẩm"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            required
                                                            id="name_prod1">
                                                        <span
                                                            class="help-block form-error"
                                                            id="name_prodError1"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            >GIÁ GỐC<span class="required">*</span></label>
                                                        <input
                                                        	name="price"
                                                            autocomplete="off"
                                                            placeholder="Nhập Giá gốc"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            required  
                                                            id="price1">
                                                        <span
                                                            class="help-block form-error"
                                                            id="priceError1"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            >PHẦN TRĂM GIẢM GIÁ<span class="required">*</span></label>
                                                        <input
                                                        	name="sale"
                                                            autocomplete="off"
                                                            placeholder="Nhập Phần trăm giảm giá"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            required  
                                                            id="km">
                                                        <span
                                                            class="help-block form-error"
                                                            id="kmError"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            >GIÁ KHUYẾN MÃI<span class="required">*</span></label>
                                                        <input
                                                        	name="new_price"
                                                            autocomplete="off"
                                                            placeholder="Nhập Giá khuyến mãi"
                                                            type="text"
                                                            class="form-control form-control-lg error"
                                                            value=""
                                                            required  
                                                            id="price_km">
                                                        <span
                                                            class="help-block form-error"
                                                            id="price_kmError"></span>
                                                    </fieldset>
                                                    <fieldset class="form_group">
                                                        <label class="form-label"
                                                            >MÔ TẢ CHI TIẾT<span class="required">*</span></label>
                                                        <textarea name="describe" class="form-control" id="moTaCT" placeholder="Nhập Mô tả" rows="3" required></textarea>
                                                        <span
                                                            class="help-block form-error"
                                                            id="moTaCTError"></span>
                                                    </fieldset>
                                                    <div class="text-center d-flex justify-content-space-between" style="margin-top: 15px;">
                                                        <button class="btn_login me-2" style="background-color: rgb(16, 16, 126);">HUỶ</button>
                                                        <button formaction="/ASM_SOF3011/admin/create" type="submit" class="btn_login ms-2">THÊM SẢN PHẨM</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
<script>
    // Lắng nghe sự kiện khi nút button được nhấn
	document.querySelectorAll('.edit-btn').forEach(button => {
	    button.addEventListener('click', function() {
	        // Lấy thông tin về item từ thuộc tính data
	        const id = this.getAttribute('data-id')
	        const img = this.getAttribute('data-img');
	        const title = this.getAttribute('data-title');
	        const price = this.getAttribute('data-price');
	
	        // Thực hiện các xử lý mong muốn với thông tin về item ở đây
	        // Ví dụ: Truyền thông tin vào form khác
	        document.getElementById('id_prod_again').value = id;
	        document.getElementById('img_again').src = "/ASM_SOF3011/img/" + img;
	        document.getElementById('title_again').value = title;
	        document.getElementById('price_again').value = price;
    	});
});
</script>


<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function () {
    var deleteButtons = document.querySelectorAll(".delete-btn");
    deleteButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            var idProd = button.dataset.id;
            // Perform delete action if needed
            document.getElementById('id_prod_again_delete').value = idProd;
            console.log(idProd);
        });
    });
});
</script>

