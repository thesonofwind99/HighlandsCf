
fetch('http://localhost:3000/prods_cafe_uonglien')
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
data.forEach(prod => {
  const postElement = document.querySelectorAll("prod-cafe-uong-lien");
  postElement.innerHTML = `
  <form action="">
  <div>
      <a href="${prod.link}">
          <img src="img/${prod.img}" alt="">
      </a>
      <span class="sale">${prod.sale}%</span>
      <a class="text_product" href="${prod.link}">
          ${prod.title}
      </a>
      <div class="price_box">
          <span class="price">${prod.price}đ</span>
          <span class="old_price">${prod.old_price}đ</span>
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
                  <img src="img/shopping-bag.webp" alt="">
                  Chọn mua
              </button>
          </div>
      </div>
  </div>
</form>
  `;
});
}
