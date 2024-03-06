*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Library    ../Python/Keywords/append_operaion.py

*** Keywords ***
Append Product Details To File
    [Arguments]       ${file_name}    ${name}       ${price}        ${rating}       ${Number}
    Append Product Details    ${OUTPUT_FILE}    ${name}    ${price}    ${rating}    ${Number}
