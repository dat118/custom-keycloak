<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        <#--  ${msg("emailForgotTitle")}  -->
    <#elseif section = "form">
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
            <div>
            <div style="display: flex">
            <svg
              width="20"
              height="21"
              viewBox="0 0 20 21"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M12.4995 17.0999L7.06621 11.6666C6.42454 11.0249 6.42454 9.9749 7.06621 9.33324L12.4995 3.8999"
                stroke="#345FFF"
                stroke-width="1.5"
                stroke-miterlimit="10"
                stroke-linecap="round"
                stroke-linejoin="round"
              />
            </svg>

            <a class="back-login" href="${url.loginUrl}">Đăng nhập</a>
          </div>
              <p class="login-text" style="margin-bottom:28px">Quên mật khẩu</p>
        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>Tên đăng nhập<#elseif !realm.registrationEmailAsUsername>Email hoặc Tên đăng nhập<#else>${msg("email")}</#if></label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    <#if messagesPerField.existsError('username')>
                        <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <#--  <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>  -->

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}" style="margin-top:24px">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="Gửi email"/>
                </div>
            </div>
                 <p class="forgot-pass-instruction">
                Nhập địa chỉ email. Chúng tôi sẽ gửi lại hướng dẫn <br />
                tạo lại mật khẩu vào email của bạn
              </p>
        </form>
        </div>
        </div>
        </div>
    <#elseif section = "info" >
        <#if realm.duplicateEmailsAllowed>
            <#--  ${msg("emailInstructionUsername")}  -->
        <#else>
            <#--  ${msg("emailInstruction")}  -->
        </#if>
    </#if>
</@layout.registrationLayout>
