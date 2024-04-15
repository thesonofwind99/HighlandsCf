var emailInput = document.getElementById('customer_email');
var emailError = document.getElementById('emailError');

var passwordInput = document.getElementById('customer_password');
var passwordError = document.getElementById('passwordError');

var lastnameInput = document.getElementById('customer_lastname');
var lastnameError = document.getElementById('lastnameError');

var nameInput = document.getElementById('customer_name');
var nameError = document.getElementById('nameError');

var phoneInput = document.getElementById('customer_phone');
var phoneError = document.getElementById('phoneError');

// Sự kiện input để kiểm tra mỗi khi người dùng nhập liệu
emailInput.addEventListener('input', function() {
// Kiểm tra điều kiện và hiển thị thông báo lỗi nếu cần
if (!emailInput.validity.valid) {
    emailError.textContent = emailInput.validationMessage;
    emailInput.style.border = '#b5313a solid 1px';
} else {
    emailError.textContent = ""; // Xóa thông báo lỗi nếu không có lỗi
    emailInput.style.border = '1px solid #e1e1e1';
}
});
passwordInput.addEventListener('input', function(){
    if(!passwordInput.validity.valid){
        passwordError.textContent = passwordInput.validationMessage;
        passwordInput.style.border = '#b5313a solid 1px';
    }else{
        passwordError.textContent = "";
        passwordInput.style.border = '1px solid #e1e1e1';
    }
});
lastnameInput.addEventListener('input', function(){
    if(!lastnameInput.validity.valid){
        lastnameError.textContent = lastnameInput.validationMessage;
        lastnameInput.style.border = '#b5313a solid 1px';
    }else{
        lastnameError.textContent = "";
        lastnameInput.style.border = '1px solid #e1e1e1';
    }
});
nameInput.addEventListener('input', function(){
    if(!nameInput.validity.valid){
        nameError.textContent = nameInput.validationMessage;
        nameInput.style.border = '#b5313a solid 1px';
    }else{
        nameError.textContent = "";
        nameInput.style.border = '1px solid #e1e1e1';
    }
});
phoneInput.addEventListener('input', function(){
    var phoneNumberPattern = /^\d{10}$/; 
    if(!phoneInput.validity.valid){
        phoneError.textContent = phoneInput.validationMessage;
        phoneInput.style.border = '#b5313a solid 1px';
    }else{
        if(!phoneNumberPattern.test(phoneInput.value)){
            phoneError.textContent = "Please, enter correct phone number format";
            phoneInput.style.border = '#b5313a solid 1px';
        }else{
            phoneError.textContent = "";
            phoneInput.style.border = '1px solid #e1e1e1';
        }
    }
});




