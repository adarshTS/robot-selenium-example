*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
BrowserStack Demo Website
    Open Browser    https://bstackdemo.com/signin    Chrome
    Click Element    //div[text()='Select Username']
    Wait Until Element Is Visible    //div[@id="react-select-2-option-0-0"]
    Click Element    //div[@id="react-select-2-option-0-0"]
    Click Element    //div[text()='Select Password']
    Wait Until Element Is Visible    //div[@id="react-select-3-option-0-0"]
    Click Element    //div[@id="react-select-3-option-0-0"]
    Click Element    //button[@id="login-btn"]
    Wait Until Element Is Visible    //div[@class="shelf-item__buy-btn"]
    Click Element    //div[@class="shelf-item__buy-btn"]
    Click Element    //span[text()='Google']
    Wait Until Element Is Visible    xpath=(//div[@class="shelf-item__buy-btn"])[2]
    Click Element    xpath=(//div[@class="shelf-item__buy-btn"])[2]
    Click Element    //div[@class="buy-btn"]
    Wait Until Location Is    https://bstackdemo.com/checkout
    Input Text    //input[@id="firstNameInput"]    Adarsh
    Input Text    //input[@id="lastNameInput"]    S
    Input Text    //input[@id="addressLine1Input"]    Street1
    Input Text    //input[@id="provinceInput"]    State
    Click Element    //div[@class="checkout-address"]
    Input Text    //input[@id="postCodeInput"]    4999
    Click Element    //button[@id="checkout-shipping-continue"]
    Wait Until Location Is    https://bstackdemo.com/confirmation

