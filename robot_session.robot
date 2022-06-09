*** Settings ***
Library    Selenium2Library

*** Variables ***
${LOGIN BUTTON}    css=#__next > div > div > div:nth-child(1) > div.d-lg-none > div.background-white.d-flex.flex-row.align-items-center.menuMember-button > div.click.ml-auto > div:nth-child(1) > div > div > div
${LOGIN BUTTON1}    css=#__next > div > div > div:nth-child(1) > div.d-lg-none > div.background-white.d-flex.flex-row.align-items-center.menuMember-button > div.click.ml-auto > div.MenuMemberPopOver__PopperView-sc-8xh8ff-0.ebQote.menumember-popper.p-0 > div > a.p-0.none-style.pl-0 > div
${CLOSE POPUP}    css=#eventPopupModal > div > div > div > div:nth-child(1)
${BUTTON COOKIE}    //*[@id="onetrust-accept-btn-handler"]
${SIGNIN BUTTON}    css=#login-form > div.mt-2.click
${USERNAME TEXTBOX}    css=#login_form-email_or_phone-input
${PASSWORD TEXTBOX}    css=#password
*** Test Cases ***
Case 1: Customers can login Makro Website
    Open Browser    https://www.makroclick.com/th    Chrome
    Close Popup
    Click Button Cookie
    Login    xxxxxx    123456789   #Test แบบ pass/user ไม่ถูกต้อง
    Sleep    5s
    Close Browser
    

*** Keywords ***
Click Button Cookie
    Click Button    ${BUTTON COOKIE}
Close Popup
    Click Element    ${CLOSE POPUP}
Login
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Click Element    ${LOGIN BUTTON}
    Click Element    ${LOGIN BUTTON1}
    Input Text    ${USERNAME TEXTBOX}    ${USERNAME}
    Sleep    3s
    Input Text    ${PASSWORD TEXTBOX}    ${PASSWORD}
    Sleep    3s
    Click Element    ${SIGNIN BUTTON}

