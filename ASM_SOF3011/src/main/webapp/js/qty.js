    // Lấy các phần tử cần thiết
    const decreaseButton = document.querySelector('.decrease-button');
    const increaseButton = document.querySelector('.increase-button');
    const quantityInput = document.querySelector('.quantity-input');
  
    // Xử lý sự kiện giảm số lượng
    decreaseButton.addEventListener('click', function() {
      let currentValue = parseInt(quantityInput.value);
      if (currentValue > 1) {
        quantityInput.value = currentValue - 1;
      }
    });
  
    // Xử lý sự kiện tăng số lượng
    increaseButton.addEventListener('click', function() {
      let currentValue = parseInt(quantityInput.value);
      quantityInput.value = currentValue + 1;
    });
  
    // Xử lý sự kiện khi người dùng nhập giá trị số lượng thủ công
    quantityInput.addEventListener('change', function() {
      let currentValue = parseInt(quantityInput.value);
      if (currentValue < 1) {
        quantityInput.value = 1;
      }
    });