*** Settings ***
Resource        ../base/base.robot
Variables       loginpage_locator.yaml

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Input User Email On Login Page
    [Arguments]    ${email}
    Input Text     ${email_input_loginPage}    ${email}

Input User Password On Login Page  
    [Arguments]    ${password}
    Input Text     ${password_input_loginPage}    ${password}

Click Sign In Button On Login Page
    Click Element    ${signIn_button_loginPage}