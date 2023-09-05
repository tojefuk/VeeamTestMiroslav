*** Settings ***
Resource    ../config.robot
Suite Setup    Open Maximized Browser With Veeam Vacancies
Suite Teardown    Close Browser

*** Test Cases ***
Research and Development
	[Documentation]  get count of job cards listed for research and development
	...  department. Number of cards listed should be equal to expected value
    [Tags]  critical  UI  veeam  vacancies  researchAndDevelopment  jobCard

	element Should Be Visible    ${all_departments_dropdown}
    click Element    ${all_departments_dropdown}
    Wait Until Element Is Visible  ${select_research&development_department}
    click Element    ${select_research&development_department}
    click Element    ${all_languages}
    Click Element    ${english_language_checkbox}

    Set Focus To Element  ${jobs_list}
    ${number_of_job_cards}  Get Element Count  ${job_card}
    Should Be Equal As Numbers  ${number_of_job_cards}  ${expectedNumberOfJobs}