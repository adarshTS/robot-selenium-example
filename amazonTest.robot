*** Settings ***
Library    SeleniumLibrary
Library    env/lib/python3.11/site-packages/robot/libraries/String.py

*** Variables ***



*** Test Cases ***
amazon Test
    Open Browser    https://www.amazon.in/
    # ${screen_width}=    Execute Javascript    return screen.width
    # ${screen_height}=    Execute Javascript    return screen.height
    # Set Window Size    ${screen_width}    ${screen_height}
    # Wait Until Element Is Visible    //input[@id="twotabsearchtextbox"]
    # Click Element    //input[@id="twotabsearchtextbox"]
    # Input Text    //input[@id="twotabsearchtextbox"]    iPhone 14
    # Click Element    //input[@id="nav-search-submit-button"]
    # Wait Until Element Is Visible    //span[text()="iOS 14"]
    # Click Element    //span[text()="iOS 14"]
    # Wait Until Element Is Visible    //span[@class='a-button a-button-dropdown a-button-small']
    # Click Element    //span[@class='a-button a-button-dropdown a-button-small']
    # Wait Until Element Is Visible    //a[text()='Price: High to Low']
    # Click Element    //a[text()='Price: High to Low']
    # Wait Until Element Is Visible    //div[@class="a-section a-spacing-none puis-padding-right-small s-title-instructions-style"]

    # @{elements}    Get WebElements    //div[@class="a-section a-spacing-none puis-padding-right-small s-title-instructions-style"]
    # ${elSize}    Get Length    ${elements}
    # FOR    ${i}    IN RANGE    ${elSize}
    #     ${DeviceName}    Get Text    (//span[@class='a-size-medium a-color-base a-text-normal'])[${i}]
    #     Run Keyword And Ignore Error    Log   ${i}. Device Name: ${DeviceName}
    # END
    ${url_list}    Create List    https://www.amazon.in    https://www.bstackdemo.com    https://www.openai.com
    FOR    ${url}    IN    @{url_list}
       Go To    ${url}
       Capture Page Screenshot    ${url}.png
    END
    Close Browser