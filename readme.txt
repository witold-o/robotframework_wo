|__Test_Case_folder (only .robot files with TestCases)
|__Results_folder (report.html, log, etc…)
|__Resources_folder
|__Locators_folder (just a py file with web locators to be used to identify web elements)
|__Variables_folder (a .resource file with all the variables that i need… users, logins, pass, environment, browser…)
|__Keywords__folder (a .resorce file with all the keywords that could be reused between TestCases)

Then inside each TestCase (in Settings) i call:
Resource …/Resources/Variables/Variables.resource

And then inside Variables.resource file (in Settings) i call:
Resource …/Keywords/Keywords.resource
Library SeleniumLibrary

So finally in Keyword.resource (in Settings) i call:
Variables …/Locators/Locator.py