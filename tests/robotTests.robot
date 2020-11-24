*** Settings ***
Documentation     Testes do R4U.
Library           OperatingSystem
Library           DatabaseLibrary
Library           Selenium2Library
Suite Setup       Connect To Database    dbapiModuleName=psycopg2    dbName=pi    dbUsername=fatec    dbPassword=fatec    dbHost=localhost    dbPort=5432
Suite Teardown    Close Browser


testFrontend
    ${frontIP}    Run    hostname -I | awk '{print $1}'
    ${proxy}    Evaluate    selenium.webdriver.Proxy()
    ${proxy.http_proxy}    Set Variable    ${frontIP}:8080
    Create Webdriver    Firefox    proxy=${proxy}
    ${service args}    Create List    --proxy=${frontIP}:8080
    Wait Until Element Is Visible    xpath=.//html/body/div/div[2]/div/button
    Click Element    xpath=.//html/body/div/div[2]/div/button
    Wait Until Element Is Visible    xpath=.//html/body/div/div[2]/div/p[2]
    ${resultFront}    Get Text    xpath=.//html/body/div/div[2]/div/p[2]
    ${query}    Query    SELECT NOME FROM Recommendation WHERE NOME = '${resultFront}'
    Should Be Equal    ${query[0][0]}    ${resultFront}