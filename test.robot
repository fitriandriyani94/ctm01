*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}    chrome
${url}        https://www.google.com/
${ctmUrl}     https://ctm-dev.yukemon.com/client/login

*** Keywords ***
Go to ctm
    Open Browser        ${ctmUrl}    ${browser}
    Input text          name:input[username]      pemrovjabar2020@gmail.com
    Input text          name:input[password]      Admin321
    Click Element       id:btn-login
    Sleep               5s
    Close Browser

*** Test Cases ***
Google Index
    Go to ctm
