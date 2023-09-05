*** Settings ***
Library  SeleniumLibrary
Resource    resources/variables.resource
Resource    resources/pageElements.resource

*** Keywords ***
open maximized browser with veeam vacancies
	Open Browser  ${url}  ${browser}
	Maximize Browser Window
    Wait Until Element Is Visible    ${veeam_logo}  timeout=10
