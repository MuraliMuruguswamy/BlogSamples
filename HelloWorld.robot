*** Settings ***
Library    SeleniumLibrary

Suite Setup     Open Browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers


*** Variables ***
${URL}              http://www.google.com
${BROWSER}          Chrome

#Controls
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      Robot Framework


*** Test Cases ***
Search for Robot Framework
    Wait Until Element Is Visible  ${search_query}
    Input Text      ${search_query}   ${EMPTY}
    Input Text      ${search_query}   ${search_term}
    Submit Form