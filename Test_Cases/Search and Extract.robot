*** Settings ***
Resource   ../Keywords/Details(all).robot
Resource   ../Keywords/Names,Price,shipping,rating,num.robot
Resource   ../Locators/URL.robot
Resource   ../Locators/Output_Path.robot
Resource   ../Locators/X-path(Searching).robot
Library    ../Python/Keywords/open_Browser-search.py


*** Test Cases ***
Search and Extract Product Details

    Open And Search    ${URL}    ${SEARCH_QUERY}    ${Search_button}       ${Prodct_elements}

    @{product_details} =         Get WebElements    ${Prodct_elements} 
    # FOR  ${product}  IN  @{product_details}
    #     Log Many ${product.text}
    # END
    
    Save Names To CSV            ${OUTPUT_FILE}     ${product_details}
    Save Details To CSV          ${OUTPUT_FILE1}    ${product_details}

