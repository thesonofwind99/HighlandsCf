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
    	<%@include file="/css/prod.css"%>
    	<%@include file="/css/detail_prod.css"%>
    </style>
    <script type="text/javascript">
	    <%@include file="/js/my_js.js"%>
		<%@include file="/js/qty.js"%>
		<%@include file="/js/rotate_img.js"%>
		<%@include file="/js/click_img.js"%>
    </script>
<title>Detail Prod</title>
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
                                                            <li class="ng_scope"><a href="index.html">TRANG CHỦ</a></li>
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
                        <li class="nav-item"><a class="nav-link" href="index.html">TRANG CHỦ</a></li>
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
        <section class="bread_crumb">
            <div class="container">
                <ul>
                    <li class="li_home"><a href="index.html"><span>Trang chủ</span></a></li>
                    <li class="li_home"><a href=""><span>DEAL</span></a></li>
                    <li class="itemListElement"><strong><span>${item.title}</span></strong></li>
                </ul>
            </div>
        </section>
        <section class="product">
            <div class="mobile_title_head">
                [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
            </div>
            <div class="container">
                <div class="product_details row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="product_img row">
                            <div class="col-xl-10 col-lg-9 order-xl-2 order-md-1 order-1">
                                <div class="box_img">
                                    <div class="inside_box">
                                        <a class="img_control" href="">
                                            <img id="img_focus" src="/ASM_SOF3011/img/${item.img_main}" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-3 order-xl-1 order-md-2 order-2">
                                <div class="slider_img">
                                    <div class="inside_slider_img">
                                        <div class="picture_slider">
                                            <img onclick="click_img(this)" src="/ASM_SOF3011/img/${item.img_main}" alt="">
                                        </div>
                                    </div>
                                    <c:forEach var="listItem" items="${list_img}">
                                    	<div class="inside_slider_img">
	                                        <div class="picture_slider">
	                                            <img onclick="click_img(this)" src="/ASM_SOF3011/img/${listItem}" alt="">
	                                        </div>
                                    	</div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="product_top">
                            <h1 class="title_head">${item.title}</h1>
                            <div class="sku_product">
                                <span>Thương hiệu: Highlands Coffee</span>
                                <span class="variant_sku">Mã sản phẩm: ${item.id_prod}</span>
                            </div>
                        </div>
                        <div>
                            <div class="price_box">
                                <span class="special_price">
                                    <span class="price_product">${item.new_price}₫</span>
                                </span>
                                <span>
                                    Giá thị trường: 
                                    <del class="price_product">${item.price}₫</del>
                                </span>
                                <span class="save_price">
                                    Tiết kiệm: 
                                    <span class="price_product">
                                        ${item.price - item.new_price}₫
                                    </span>
                                </span>
                            </div>
                        </div>
                        <div class="form_product">
                            <div class="form_group d-flex">
                                <div class="qty">
                                    <button class="btn_cts decrease-button">-</button>
                                    <input class="input_price quantity-input" value="1" type="text">
                                    <button class="btn_cts increase-button">+</button>
                                </div>
                                <div class="btn_mua">
                                    <button class="btn_add_to_cart">
                                        Thêm vào giỏ
                                    </button>
                                </div>
                            </div>
                            <div class="product_wish">
                                <button class="favourite_btn">
                                    <i class="bi bi-suit-heart"></i>
                                    Thêm vào yêu thích
                                </button>
                            </div>
                        </div>
                        <div class="evo_main_product_content">
                            <div class="card">
                                <div class="card-header">
                                    <button onclick="rotateImage(this)" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1">MÔ TẢ SẢN PHẨM
                                        <img class="rotate-image" src="/ASM_SOF3011/img/pngwing.com.png" alt="" width="15px">
                                    </button>
                                </div>
                                <div id="collapse1" class="collapse">
                                    <div class="card-body">
                                        <p>[Mua 2 tặng 2]</p>
                                        <ul>
                                            <li>Combo 2 túi cà phê Truyền Thống Highlands Coffee 1kg, tặng 01 túi cói Highlands thời trang + 01 gói cà phê Truyền Thống 200g</li>
                                            <li>Số lượng sản phẩm khuyến mãi có hạn.</li>
                                            <li>Thời gian: đến 31/01/2024.</li>
                                        </ul>
                                        <p>Hạt cà phê thượng hạng trồng ở vùng cao nguyên của Việt Nam được rang và phối trộn theo công thức độc đáo tại Highlands&ensp;<br>
                                            Sự kết hợp hài hòa giữa&nbsp;<strong>Arabica và Robusta&ensp;</strong><br>
                                            Vị đậm và ngọt đầy&ensp;<br>
                                            Là sản phẩm đặc sản của café Sữa Đá, Café Đá tại hệ thống Highlands Coffee&ensp;<br>
                                            <em>80% Robusta - 20% Arabica&ensp;</em><br>
                                            Cà phê Highlands Coffee được đóng gói tiện lợi cho việc sử dụng và bảo quản. Không chỉ dùng trong gia đình, với bao bì lịch sự còn thích hợp làm quà tặng ý nghĩa dành cho người thân, bạn bè và đồng nghiệp.&ensp;<br>
                                            <br>
                                            <strong>Hướng dẫn sử dụng:&ensp;</strong><br>
                                            1. Cho 20 gram vào phin &ensp;<br>
                                            2. Dùng nước tinh khết đun nóng. Châm 30ml vào phin và đợi 2 phút rồi rót thêm 40ml nước để có ly cà phê thành phẩm&ensp;<br>
                                            3. Cho thêm đá hoặc đường hoặc sữa đặc&ensp;<br>
                                            &ensp;<br>
                                            Xuất xứ: Việt Nam&ensp;<br>
                                            &ensp;<br>
                                            Hạn sử dụng: 18 tháng kể từ ngày sản xuất</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <button onclick="rotateImage(this)" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2">GIAO HÀNG TOÀN QUỐC
                                        <img class="rotate-image" src="/ASM_SOF3011/img/pngwing.com.png" alt="" width="15px">
                                    </button>
                                </div>
                                <div id="collapse2" class="collapse">
                                    <div class="card-body">
                                        <div class="alert alert-info">
                                            Nội dung đang cập nhật !
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <button onclick="rotateImage(this)" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3">HƯỚNG DẪN BẢO QUẢN
                                        <img class="rotate-image" src="/ASM_SOF3011/img/pngwing.com.png" alt="" width="15px">
                                    </button>
                                </div>
                                <div id="collapse3" class="collapse">
                                    <div class="card-body">
                                        <div class="alert alert-info">
                                            Nội dung đang cập nhật !
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <button onclick="rotateImage(this)" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4">ĐÁNH GIÁ
                                        <img class="rotate-image" src="/ASM_SOF3011/img/pngwing.com.png" alt="" width="15px">
                                    </button>
                                </div>
                                <div id="collapse4" class="collapse">
                                    <div class="card-body">
                                        <div class="alert alert-info">
                                            Nội dung đang cập nhật !
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                 
                </div>
            </div>
            <div class="container">
                <div class="product_gray">
                    <div class="home_title">
                        <h2>SẢN PHẨM LIÊN QUAN</h2>
                    </div>
                    <div class="row">
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                        <div class="inside_row col-6 col-sm-4 col-md-3 col-lg-3">
                            <form action="">
                                <div>
                                    <a href="">
                                        <img src="/ASM_SOF3011/img/ctw-t1-03.webp" alt="">
                                    </a>
                                    <span class="sale">22%</span>
                                    <a class="text_product" href="">
                                        [Mua 2 tặng 2: Tặng túi cói Thời Trang Highlands+01 gói cà phê 200g] Combo 2 Túi Cà Phê Truyền Thống Highlands Coffee 1kg
                                    </a>
                                    <div class="price_box">
                                        <span class="price">590.000đ</span>
                                        <span class="old_price">758.000đ</span>
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
                    </div>
                </div>
            </div>
        </section>
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