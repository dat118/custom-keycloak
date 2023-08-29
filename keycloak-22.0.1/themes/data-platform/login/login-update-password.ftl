<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        <#--  ${msg("updatePasswordTitle")}  -->
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
           
              <p class="login-text" style="margin-bottom:28px">Tạo mật khẩu mới</p>
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                   readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password"  autocomplete="current-password" style="display:none;"/>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-new" class="${properties.kcLabelClass!}">Mật khẩu</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}"
                           autofocus autocomplete="new-password"
                           aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                    />
                      <span id="password-toggle" class="password-toggle-icon">
                        <img src="${url.resourcesPath}/img/eye.svg" alt="Toggle Password"></span>
                    <#if messagesPerField.existsError('password')>
                        <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="${properties.kcLabelClass!}">Nhập lại mật khẩu</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" name="password-confirm"
                           class="${properties.kcInputClass!}"
                           autocomplete="new-password"
                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                    />
  <span id="password-toggle" class="password-toggle-icon">
                        <img src="${url.resourcesPath}/img/eye.svg" alt="Toggle Password"></span>
                    <#if messagesPerField.existsError('password-confirm')>
                        <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </span>
                    </#if>

                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <#--  <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <div class="checkbox">
                            <label><input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked> ${msg("logoutOtherSessions")}</label>
                        </div>
                    </div>
                </div>  -->

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}" style="margin-top:24px">
                    <#--  <#if isAppInitiatedAction??>
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
                        <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                    <#else>  -->
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="Tạo mật khẩu" />
                    <#--  </#if>  -->
                </div>
            </div>
        </form>
        </div>
        </div>
     </div>
 </div>
    </#if>
</@layout.registrationLayout>