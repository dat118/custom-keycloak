document.addEventListener("DOMContentLoaded", function () {
  const passwordInput = document.getElementById("password");
  const passwordToggle = document.getElementById("password-toggle");

  passwordToggle.addEventListener("click", function () {
    if (passwordInput.type === "password") {
      passwordInput.type = "text";
      passwordToggle.innerHTML =
        '<img src="/resources/obnbg/login/data-platform/img/eye-slash.svg" alt="Toggle Password">';
    } else {
      passwordInput.type = "password";
      passwordToggle.innerHTML =
        '<img src="/resources/obnbg/login/data-platform/img/eye.svg" alt="Toggle Password">';
    }
  });
});

document.addEventListener("DOMContentLoaded", function () {
  const acceptCheckbox = document.getElementById("accept");
  const submitButton = document.querySelector(
    '#kc-form-buttons input[type="submit"]'
  );

  acceptCheckbox.addEventListener("change", function () {
    submitButton.disabled = !acceptCheckbox.checked;
  });

  // Đảm bảo kiểm tra trạng thái ban đầu của checkbox để cập nhật trạng thái của nút submit
  submitButton.disabled = !acceptCheckbox.checked;
});
