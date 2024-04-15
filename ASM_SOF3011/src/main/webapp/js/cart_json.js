
fetch('http://localhost:3000/cart')
.then(response => response.json())
.then(data => {
  // Xử lý dữ liệu ở đây, ví dụ in ra console
  console.log('Dữ liệu từ API:', data);

  // Hiển thị dữ liệu trên trang web
  displayData(data);
})
.catch(error => console.error('Lỗi khi tải dữ liệu:', error));

// Hàm hiển thị dữ liệu trên trang web
function displayData(data) {

// Lặp qua mỗi bài viết và hiển thị thông tin
data.forEach(prodbox => {
  const postElement = document.querySelectorAll("price_infor");
  postElement.innerHTML = `
  <div class="row m-0">
  <div class="col-lg-3 col-md-3 col-sm-6 col-6 p-0">
      <div class="img_controler">
          <img src="img/${prodbox.img}" alt="">
      </div>
  </div>
  <div class="col-lg-9 col-md-9 col-sm-6 col-6 p-0">
      <div class="all_model">
          <div class="title_product">                                     
               ${prodbox.title}                                          
          </div>
          <div class="quality">
              <span>Số lượng: 
                  <div class="qty">
                      <button class="btn_cts decrease-button">-</button>
                      <input class="input_price quantity-input" value="1" type="text">
                      <button class="btn_cts increase-button">+</button>
                  </div>
              </span>
          </div>
          <div class="price_box">
              <span>${prodbox.price}đ</span>
          </div>
          <div class="btn_miss_box">
              <button><i class="bi bi-x-lg"></i></button>
          </div>
      </div>
  </div>
</div>
  `;
});
}
