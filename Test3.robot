*** Settings ***
Library    SeleniumLibrary
Library    env/lib/python3.11/site-packages/robot/libraries/String.py

*** Test Cases ***
amazon Test
    Open Browser    
    # ${url_list}    Create List    https://www.amazon.in    https://www.bstackdemo.com    https://www.openai.com
    FOR    ${index}    IN RANGE    3
        ${url}    Set Variable    https://www.example${index}.com
        Go To    ${url}
        Capture Page Screenshot    ${url}.png
    END    
    Close Browser