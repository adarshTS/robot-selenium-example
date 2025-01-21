*** Settings ***
Library    SeleniumLibrary
Library    env/lib/python3.11/site-packages/robot/libraries/String.py

*** Test Cases ***
amazon Test
    Open Browser    
    FOR    ${user}    ${password}    IN ZIP    @{usernames}    @{passwords}
        Input Text    ${username_field}    ${user}
        Input Text    ${password_field}    ${password}
        Click Button    ${login_button}
        Wait Until Page Contains    ${welcome_message}
        Click Button    ${logout_button}
    EN
    Close Browser