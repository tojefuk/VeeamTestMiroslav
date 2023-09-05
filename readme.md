Introduction
--------------------
Selenium UI test for Veeam Careers

Project Installation
--------------------
In your current python venv
`pip install robotframework==6.1.1`

`pip install --upgrade robotframework-seleniumlibrary==6.1.1`

`pip install webdrivermanager==0.10.0`

`webdrivermanager firefox chrome --linkpath <ABSOLUTE_PATH_TO_PROJECT_ROOT>webDrivers`

Usage example
--------------------
From project root directory:

`robot -v browser:firefox -v expectedNumberOfJobs:5 -T -d reports/veeam/vacancies testSuites/veeam/vacancies/tests/expectedNumberOfJobs.robot`

report will be generated to the reports directory
