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
    </style>
<title>Trang chủ</title>
</head>
<body>
	    <div class="container-fluid">
        <div class="top_header">
            <div class="container">
                <div class="inside_top_header">
                    <p>GIAO HÀNG TOÀN QUỐC</p>
                </div>
            </div>
        </div>
        <header>
            <div class="top_hea_menu">
                <div class="container">
                    <div class="row">
                        <div class="col-3 col-lg-3 d-flex" style="align-items: center; position: relative;">
                            <div class="header_action_item">
                                <div class="header_action_text d-flex" id="menu">
                                    <a href="#">
                                        <span class="bi bi-list"></span>
                                        <span class="icon_text">MENU</span>
                                    </a>
                                </div>
                                <div class="header_action_dropdown" id="menu_hidden">
                                    <div class="header_dropdown_content">
                                        <div class="sitenav_content">
                                            <div class="sitenav_content_title">
                                                <a class="d-flex" href="">
                                                    <i class="bi bi-house-door"></i>
                                                    <button class="btn btn_close"><i class="bi bi-x-lg"></i></button>
                                                </a>
                                            </div>
                                            <div class="sitenav_content_block">
                                                <div class="mobile_menu">
                                                    <div class="mobile_menu_inner">
                                                        <ul class="nav_la_list_items">
                                                            <li class="ng_scope active"><a href="index.html">TRANG CHỦ</a></li>
                                                            <li class="ng_scope"><a href="flash_sale.html">FLASH SALE</a></li>
                                                            <li class="ng_scope"><a href="">KHUYẾN MÃI</a></li>
                                                            <li class="ng_scope"><a href="">MUA SỈ</a></li>
                                                            <li class="ng_scope"><a href="">GIỚI THIỆU</a></li>
                                                        </ul>
                                                        <div class="mobile_menu_help">
                                                            <p class="help_title">Bạn cần hỗ trợ</p>
                                                            <div class="help_item">
                                                                <a class="help_item_link" href=""><i class="bi bi-telephone"></i>
                                                                    0917561212
                                                                </a>
                                                            </div>
                                                            <div class="help_item">
                                                                <a class="help_item_link" href=""><i class="bi bi-envelope-paper"></i>
                                                                    cpg.customerservice@vtijs.com
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="logo" href="">
                                <img src="/ASM_SOF3011/img/logo.webp" alt="">
                            </a>
                        </div>
                        <div class="col-5 col-lg-6 d-flex" style="align-items: center;">
                          <div class="input-group">
                            <input type="text" class="form-control input_search" placeholder="Tìm sản phẩm..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <button class="input-group-text btn_search" id="basic-addon2"><i class="bi bi-search"></i></button>
                          </div>
                        </div>
                        <div class="col-4 col-lg-3 d-flex" style="align-items: center; justify-content: end;">
                            <a href="" class="search d-none">
                                <span class="bi bi-search"></span>
                            </a>
                            <a href="login.html" class="account">
                                <span class="bi bi-person"></span>
                                <span class="account_text">Tài khoản</span>
                            </a>
                            <a href="cart.html" class="account" style="margin-left: 15px;">
                                <span class="bi bi-cart"></span>
                                <span class="account_text">Giỏ hàng</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_main_nav">
                <div class="container">
                    <a class="house" href=""><span class="bi bi-house-door"></span></a>
                    <ul class="nav">
                        <li class="nav-item active"><a class="nav-link" href="index.html">TRANG CHỦ</a></li>
                        <li class="nav-item"><a class="nav-link" href="flash_sale.html">FLASH SALE</a></li>
                        <li class="nav-item"><a class="nav-link" href="">KHUYẾN MÃI</a></li>
                        <li class="nav-item"><a class="nav-link" href="">MUA SĨ</a></li>
                        <li class="nav-item"><a class="nav-link" href="">GIỚI THIỆU</a></li>
                    </ul>
                </div>
            </div>
            <div class="menu_child">
                <div class="container">
                    <ul class="nav_child"> 
                        <li class="nav-item"><a class="nav-link" href="">Cà phê Rang Xay</a></li>
                        <li class="nav-item"><a class="nav-link" href="">Cà Phê Hạt</a></li>
                        <li class="nav-item"><a class="nav-link" href="">Cà Phê Hoà Tan</a></li>
                        <li class="nav-item"><a class="nav-link" href="">Cà Phê Uống Liền</a></li>
                        <li class="nav-item"><a class="nav-link" href="">Cà Phê Hộp Giấy</a></li>
                    </ul>
                </div>
            </div>
        </header>
        <div class="awe_section_1">
            <div class="container">
                <!-- Carousel -->
                <div id="slide" class="carousel slide" data-bs-ride="carousel">
                    <!-- Indicators/dots -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#slide" data-bs-slide-to="0" class="active"></button>
                        <button type="button" data-bs-target="#slide" data-bs-slide-to="1"></button>
                        <button type="button" data-bs-target="#slide" data-bs-slide-to="2"></button>
                    </div>                   
                    <!-- The slideshow/carousel -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/ASM_SOF3011/img/slider_1.webp" class="d-block" style="width:100%">
                        </div>
                        <div class="carousel-item">
                            <img src="/ASM_SOF3011/img/slider_2.webp" class="d-block" style="width:100%">
                        </div>
                        <div class="carousel-item">
                            <img src="/ASM_SOF3011/img/slider_3.webp" class="d-block" style="width:100%">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="awe_section_2">
            <div class="section_polyci">
                <div class="container">
                    <div class="inside_container d-flex" style="justify-content: space-between; flex-wrap: wrap; align-items: center;">
                        <div class="item_inside">
                            <a href="">
                                <img src="/ASM_SOF3011/img/policy_1.webp" alt="">
                                <span>Giao hàng</span>
                            </a>
                        </div>
                        <div class="item_inside">
                            <a href="">
                                <img src="/ASM_SOF3011/img/policy_2.webp" alt="">
                                <span>
                                    <b>Độc quyền</b>
                                </span>
                            </a>
                        </div>
                        <div class="item_inside">
                            <a href="">
                                <img src="/ASM_SOF3011/img/policy_3.webp" alt="">
                                <span>Bán chạy</span>
                            </a>
                        </div>
                        <div class="item_inside">
                            <a href="">
                                <img src="/ASM_SOF3011/img/policy_4.webp" alt="">
                                <span>Cửa hàng</span>
                            </a>
                        </div>
                        <div class="item_inside">
                            <a href="">
                                <img src="/ASM_SOF3011/img/policy_5.webp" alt="">
                                <span>Cách pha</span>
                            </a>
                        </div>
                        <div class="item_inside">
                            <a href="">
                                <img src="/ASM_SOF3011/img/policy_6.webp" alt="">
                                <span>Liên hệ</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="awe_section_3">
            <div class="section_uu_dai">
                <div class="container">
                    <div class="title_uu_dai" style="text-align: start;">
                        <b>Ưu đãi của bạn</b>
                    </div>
                    <div class="list_promotion row" style="padding: 0;">
                        <div class="col-sm-3 col-3">
                            <div class="inside_col">
                                <div class="inside_promotion">
                                    <a href="">
                                        <span class="title"><b>Voucher 50K</b></span>
                                        <span class="content"><p>Giảm 50K cho đơn hàng từ 1,124,000đ</p></span>
                                    </a>
                                    <div class="discount">
                                        <p>VOUCHER 50K</p>
                                        <button class="btn">
                                            <span>Lưu</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-3">
                            <div class="inside_col">
                                <div class="inside_promotion">
                                    <a href="">
                                        <span class="title"><b>Quà tặng độc quyền</b></span>
                                        <span class="content"><p>Nhận quà hấp dẫn khi mua cùng cà phê Highlands</p></span>
                                    </a>
                                    <div class="discount">
                                        <p></p>
                                        <button class="btn">
                                            <span>Lưu</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-3">
                            <div class="inside_col">
                                <div class="inside_promotion">
                                    <a href="">
                                        <span class="title"><b>Giao hàng toàn quốc</b></span>
                                        <span class="content"><p>Giao hàng toàn quốc với giá chỉ từ 25K</p></span>
                                    </a>
                                    <div class="discount">
                                        <p></p>
                                        <button class="btn">
                                            <span>Lưu</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-3">
                            <div class="inside_col">
                                <div class="inside_promotion">
                                    <a href="">
                                        <span class="title"><b>Ưu đãi tại cửa hàng</b></span>
                                        <span class="content"><p>Nhận ưu đãi tại quán khi mua hàng tại website chính hãng Highlands Coffee</p></span>
                                    </a>
                                    <div class="discount">
                                        <p></p>
                                        <button class="btn">
                                            <span>Lưu</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="awe_section_4">
            <div class="section_flash_sale">
                <div class="container">
                    <div class="box_mail">
                        <div class="row">
                            <div class="col-md-12 col-lg-12 col-12 col-sm-12">
                                <div class="tt_sale_flase">
                                    <h2>
                                        <img src="/ASM_SOF3011/img/icon_flash.webp" alt="">
                                        <a href="">DEAL ĐANG DIỄN RA</a>
                                    </h2>
                                    <span class="label_countdown">
                                        <span class="inside_label_countdown">|</span>
                                    </span>
                                    <div class="count_down">
                                        <div class="timer_view">
                                            <div class="block_timer">
                                                <p>00</p>
                                            </div>
                                            <span class="doc_tine">:</span>
                                            <div class="block_timer">
                                                <p>00</p>
                                            </div>
                                            <span class="doc_tine">:</span>
                                            <div class="block_timer">
                                                <p>00</p>
                                            </div>
                                            <span class="doc_tine">:</span>
                                            <div class="block_timer">
                                                <p>00</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="show_all" href="">Xem tất cả</a>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12 col-12 col-sm-12 col-xl-12">
                                <div class="inside_col_12 d-flex" style="margin: 0 -10px;">
                                    <c:forEach var="item" items="${list1}">
	                                    	<div class="item_inside_col prod-flash">
		                                        <form>
		                                            <div>
		                                                <a href="detail?index=${item.id_prod}">
		                                                    <img src="/ASM_SOF3011/img/${item.img_main}" alt="">
		                                                </a>
		                                                <span class="sale">${item.sale}%</span>
		                                                <a class="text_product" href="#">
		                                                    ${item.title}
		                                                </a>
		                                                <div class="price_box">
		                                                    <span class="price">${item.new_price}đ</span>
		                                                    <span class="old_price">${item.price}đ</span>
		                                                </div>
		                                                <div class="price_review d-flex">
		                                                    <div class="d-flex">
		                                                        <div class="d-flex">
		                                                            <i class="bi bi-star"></i>
		                                                            &nbsp;
		                                                            <i class="bi bi-star"></i>
		                                                            &nbsp;
		                                                            <i class="bi bi-star"></i>
		                                                            &nbsp;
		                                                            <i class="bi bi-star"></i>
		                                                            &nbsp;
		                                                            <i class="bi bi-star"></i>
		                                                        </div>
		                                                    </div>
		                                                    <div class="cart">
		                                                        <i class="bi bi-cart2"></i>
		                                                    </div>
		                                                </div>
		                                                <div class="pro_down">
		                                                    <div class="count_down">
		                                                        <div class="timer_view" style="justify-content: center;">
		                                                            <div class="block_timer">
		                                                                <p>00</p>
		                                                            </div>
		                                                            <span class="doc_tine">:</span>
		                                                            <div class="block_timer">
		                                                                <p>00</p>
		                                                            </div>
		                                                            <span class="doc_tine">:</span>
		                                                            <div class="block_timer">
		                                                                <p>00</p>
		                                                            </div>
		                                                            <span class="doc_tine">:</span>
		                                                            <div class="block_timer">
		                                                                <p>00</p>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                                <div class="product_action">
		                                                    <div class="group_action">
		                                                        <button class="btn d-flex">
		                                                            <img src="/ASM_SOF3011/img/shopping-bag.webp" alt="">
		                                                            Chọn mua
		                                                        </button>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </form>
	                                    </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="awe_section_5">
            <div class="container">
                <a class="sports_title" href="">Sản phẩm bán chạy!</a>
                <div class="col-md-12 col-lg-12 col-12 col-sm-12 col-xl-12">
                    <div class="inside_col_12 d-flex" style="margin: 0 -10px;">
						<c:forEach var="item" items="${list2}">
							<div class="item_inside_col prod-best-seller">
								<form>
									<div>
										<a href="#"> <img src="/ASM_SOF3011/img/${item.img_main}"
											alt="">
										</a> <span class="sale">${item.sale}%</span> <a
											class="text_product" href="#"> ${item.title} </a>
										<div class="price_box">
											<span class="price">${item.new_price}đ</span> <span
												class="old_price">${item.price}đ</span>
										</div>
										<div class="price_review d-flex">
											<div class="d-flex">
												<div class="d-flex">
													<i class="bi bi-star"></i> &nbsp; <i class="bi bi-star"></i>
													&nbsp; <i class="bi bi-star"></i> &nbsp; <i
														class="bi bi-star"></i> &nbsp; <i class="bi bi-star"></i>
												</div>
											</div>
											<div class="cart">
												<i class="bi bi-cart2"></i>
											</div>
										</div>
										<div class="pro_down">
											<div class="count_down">
												<div class="timer_view" style="justify-content: center;">
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
												</div>
											</div>
										</div>
										<div class="product_action">
											<div class="group_action">
												<button class="btn d-flex">
													<img src="/ASM_SOF3011/img/shopping-bag.webp" alt="">
													Chọn mua
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</c:forEach>
                    </div>
                </div>
                <div class="evo_block_view">
                    <a href="">Xem sản phẩm <b>sản phẩm bán chạy</b></a>
                </div>
            </div>
        </div>
        <div class="awe_section_6">
            <div class="container">
                <a class="sports_title" href="">Cà phê rang xay</a>
                <div class="col-md-12 col-lg-12 col-12 col-sm-12 col-xl-12">
                    <div class="inside_col_12 d-flex" style="margin: 0 -10px;">
                    	<c:forEach var="item" items="${list1}">
							<div class="item_inside_col prod-cafe-rang-xay">
								<form>
									<div>
										<a href="#"> <img src="/ASM_SOF3011/img/${item.img_main}"
											alt="">
										</a> <span class="sale">${item.sale}%</span> <a
											class="text_product" href="#"> ${item.title} </a>
										<div class="price_box">
											<span class="price">${item.new_price}đ</span> <span
												class="old_price">${item.price}đ</span>
										</div>
										<div class="price_review d-flex">
											<div class="d-flex">
												<div class="d-flex">
													<i class="bi bi-star"></i> &nbsp; <i class="bi bi-star"></i>
													&nbsp; <i class="bi bi-star"></i> &nbsp; <i
														class="bi bi-star"></i> &nbsp; <i class="bi bi-star"></i>
												</div>
											</div>
											<div class="cart">
												<i class="bi bi-cart2"></i>
											</div>
										</div>
										<div class="pro_down">
											<div class="count_down">
												<div class="timer_view" style="justify-content: center;">
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
												</div>
											</div>
										</div>
										<div class="product_action">
											<div class="group_action">
												<button class="btn d-flex">
													<img src="/ASM_SOF3011/img/shopping-bag.webp" alt="">
													Chọn mua
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</c:forEach>
                    </div>
                </div>
                <div class="evo_block_view">
                    <a href="">Xem sản phẩm <b>cà phê rang xay</b></a>
                </div>
            </div>
        </div>
        <div class="awe_section_7">
            <div class="container">
                <a class="sports_title" href="">Cà phê uống liền</a>
                <div class="col-md-12 col-lg-12 col-12 col-sm-12 col-xl-12">
                    <div class="inside_col_12 d-flex" style="margin: 0 -10px;">
                    <c:forEach var="item" items="${list4}">
							<div class="item_inside_col prod-cafe-uong-lien">
								<form>
									<div>
										<a href="#"> <img src="/ASM_SOF3011/img/${item.img_main}"
											alt="">
										</a> <span class="sale">${item.sale}%</span> <a
											class="text_product" href="#"> ${item.title} </a>
										<div class="price_box">
											<span class="price">${item.new_price}đ</span> <span
												class="old_price">${item.price}đ</span>
										</div>
										<div class="price_review d-flex">
											<div class="d-flex">
												<div class="d-flex">
													<i class="bi bi-star"></i> &nbsp; <i class="bi bi-star"></i>
													&nbsp; <i class="bi bi-star"></i> &nbsp; <i
														class="bi bi-star"></i> &nbsp; <i class="bi bi-star"></i>
												</div>
											</div>
											<div class="cart">
												<i class="bi bi-cart2"></i>
											</div>
										</div>
										<div class="pro_down">
											<div class="count_down">
												<div class="timer_view" style="justify-content: center;">
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
													<span class="doc_tine">:</span>
													<div class="block_timer">
														<p>00</p>
													</div>
												</div>
											</div>
										</div>
										<div class="product_action">
											<div class="group_action">
												<button class="btn d-flex">
													<img src="/ASM_SOF3011/img/shopping-bag.webp" alt="">
													Chọn mua
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</c:forEach>
                    </div>
                </div>
                <div class="evo_block_view">
                    <a href="">Xem sản phẩm <b>cà phê uống liền</b></a>
                </div>
            </div>
        </div>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3 footer_infos">
                        <h4 class="footer_title">Highlands Coffee CPG</h4>
                        <div class="content_foo">
                            <p style="font-size: 11px;">Công ty TNHH MTV Thái Kiên tự hào là nhà phân phối hợp lệ và 
                                độc quyền cho tất cả các sản phẩm cà phê mang thương hiệu Highlands Coffee®.</p>
                        </div>
                        <div class="bct" style="margin-top: 10px;">
                            <a href=""><img src="/ASM_SOF3011/img/logo_bct.webp" alt="" style="width: 70%;"></a>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 footer_infos footer_nav_menu">
                        <h4 class="footer_title">Thông tin công ty</h4>
                        <p><strong>Trụ sở văn phòng: </strong>127 Nguyễn Cơ Thạch, An Lợi Đông, Q.2, Tp. Hồ Chí Minh</p>
                        <p>
                            <strong>Điện thoại: </strong>
                            <a href="tel:0917561212" title="0917561212">0917561212</a>
                        </p>
                        <p>
                            <strong>Email: </strong>
                            <a href="mailto:cpg.customerservice@vtijs.com" title="cpg.customerservice@vtijs.com">cpg.customerservice@vtijs.com</a>
                        </p>
                    </div>
                    <div class="col-sm-6 col-lg-2 footer_nav_menu">
                        <h4 class="footer_title">Hỗ trợ khách hàng</h4>
                        <ul class="footer_menu">
                            <li><a href="">Tìm kiếm</a></li>
                            <li><a href="">Giới thiệu</a></li>
                            <li><a href="">Chính sách đổi trả</a></li>
                            <li><a href="">Chính sách bảo mật</a></li>
                            <li><a href="">Chính sách giao hàng</a></li>
                            <li><a href="">Liên hệ</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-3 footer_nav_menu">
                        <h4 class="footer_title">Chăm sóc khách hàng</h4>
                        <div class="footerInfo-hline d-flex">
                            <div class="box-icon">
                                <i class="bi bi-telephone"></i>
                            </div>
                            <div class="box-content">
                                <b>Cà phê đóng gói: 091.756.1212</b>
                                <br>
                                <b>Cà phê tại quán: 1900.1755</b>
                                <p style="font-size: 12px; text-decoration: none; margin-bottom: 15px;">cpg.customerservice@vtijs.com</p>
                            </div>
                        </div>
                        <h4 class="footer_title">Follow us</h4>
                        <div class="social">
                            <a href=""><i class="bi bi-facebook"></i></a>
                            <a href=""><i class="bi bi-twitter"></i></a>
                            <a href=""><i class="bi bi-youtube"></i></a>
                            <a href=""><i class="bi bi-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright text-center">		
                <span>
                    © Bản quyền thuộc về 
                    <b>Highlands Coffee® CPG</b> 
                    <span class="s480-f">|</span> Cung cấp bởi 
                    <a href="" title="Sapo" target="_blank" rel="nofollow">Sapo</a>
                </span>               
            </div>
        </footer>
    </div>
</body>
</html>
    <script type="text/javascript">
    	<%@include file="/js/my_js.js"%>
    </script>