<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        <#--  ${msg("emailVerifyTitle")}  -->
    <#elseif section = "form">
        <#--  <p class="instruction">${msg("emailVerifyInstruction1",user.email)}</p>   -->
         <div class="container">
           <div class="logo-container">
          <img
            style="height: 45px"
            src="${url.resourcesPath}/img/logo.png"
            alt=""
          />
          <p>Data Platform</p>
        </div>
           <div class="row">
           <div class="col-6">
            <img
              src="${url.resourcesPath}/img/banner-login.png"
              alt=""
            />
          </div>
<div id="loginbox" class="mainbox col-6">
            <p class="login-text">Xác thực tài khoản</p>
            <div class="verify-email">
              <svg
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M10.7059 3.74999L2.45585 18C2.32442 18.2276 2.25512 18.4858 2.25488 18.7487C2.25465 19.0115 2.3235 19.2698 2.45452 19.4977C2.58555 19.7256 2.77416 19.915 3.00145 20.0471C3.22875 20.1791 3.48674 20.2491 3.7496 20.25H20.2496C20.5125 20.2491 20.7705 20.1791 20.9978 20.0471C21.225 19.915 21.4137 19.7256 21.5447 19.4977C21.6757 19.2698 21.7446 19.0115 21.7443 18.7487C21.7441 18.4858 21.6748 18.2276 21.5434 18L13.2934 3.74999C13.1629 3.52206 12.9746 3.33263 12.7474 3.20088C12.5202 3.06914 12.2622 2.99976 11.9996 2.99976C11.737 2.99976 11.479 3.06914 11.2518 3.20088C11.0246 3.33263 10.8363 3.52206 10.7059 3.74999Z"
                  fill="#FDD762"
                  stroke="#082555"
                  stroke-width="1.5"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
                <path
                  d="M12 9.75V13.5"
                  stroke="#082555"
                  stroke-width="1.5"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                />
                <path
                  d="M12 18C12.6213 18 13.125 17.4963 13.125 16.875C13.125 16.2537 12.6213 15.75 12 15.75C11.3787 15.75 10.875 16.2537 10.875 16.875C10.875 17.4963 11.3787 18 12 18Z"
                  fill="#082555"
                />
              </svg>

              <p>
                Bạn cần xác thực tài khoản bằng email để kích hoạt tài khoản
              </p>
            </div>
            <div class="email-send">
              <p>
                Email kèm hướng dẫn xác thực tài khoản được gửi tới địa chỉ:
                <span>${(user.email)}</span> <br />
                Truy cập vào email để kích hoạt tài khoản của bạn
              </p>
            </div>
     <#elseif section = "info">       
            <p class="resend">
              Không nhận được Email kích hoạt tài khoản ? <br />
              Nhấn tại
              <a
                style="color: #345fff; font-weight: 600"
                href="${url.loginAction}"
                >đây</a
              >
              để được gửi lại email
            </p>
          </div>
           </div>
         </div>
    </#if>
</@layout.registrationLayout>
