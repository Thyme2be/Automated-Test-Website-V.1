*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://allonline.7eleven.co.th/
${BROWSER}    chrome

*** Test Cases ***
ค้นหา ไฟน์ไลน์ ควรเจอ ไฟน์ไลน์
    เปิดเว็บเบราว์เซอร์และเข้าเว็บไซต์ all online
    ใส่คำค้นหา
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา

*** Keywords ***
เปิดเว็บเบราว์เซอร์และเข้าเว็บไซต์ all online
    Open Browser    url=${URL}    browser=${BROWSER}

ใส่คำค้นหา
    Input Text    name=q    ไฟน์ไลน์

กดปุ่ม Enter
    Press Keys    NONE    RETURN

ตรวจสอบผลการค้นหา
    Wait Until Page Contains    ผลการค้นหาสำหรับ »ไฟน์ไลน์«