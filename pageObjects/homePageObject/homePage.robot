*** Settings ***
Resource        ../base/base.robot
Variables       homePage_locator.yaml 


Library    AppiumLibrary

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible        ${login_homePage}

Click Sign In Button On Home Page 
    Wait Until Element Is Visible        ${signIn_button_homePage}
    ${Sign Element}=                     ${signIn_button_homePage}

Verify User Is Logged In
    Wait Until Element Is Visible        ${userName_text_homePage}   