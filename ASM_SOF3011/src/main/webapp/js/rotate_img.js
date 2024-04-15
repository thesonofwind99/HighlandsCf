function rotateImage(button) {
    // Lấy hình ảnh bên trong button được nhấn
    var image = button.querySelector('.rotate-image');
  
    // Lấy góc xoay hiện tại
    var currentRotation = parseInt(image.style.transform.replace('rotate(', '').replace('deg)', '')) || 0;
  
    // Thực hiện xoay 180 độ
    var newRotation = currentRotation + 180;
    image.style.transform = 'rotate(' + newRotation + 'deg)';
}