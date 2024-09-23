*** Settings ***
Library  Browser  
Library    SeleniumLibrary
Test Setup    New Browser    chromium    No
*** Test Cases ***
Handle Browser Windows
    # Create Webdriver    Chromium    
    # SeleniumLibrary.Go To   http://demo.automationtesting.in/Windows.html   
    # Maximize Browser Window
    # ${location}=        Get Location
    # log to console       ${location}
    # New Page    https://onet.pl
    SeleniumLibrary.Open Browser     https://wp.pl         chrome         options=add_experimental_option("detach", True)
    log to console       Test
    


    # Go To     https://www.selenium.dev/selenium/docs/api/java/index
    # ${location}=        Get Location
    # log to console       ${location}

    # Go Back
    # ${location}=        Get Location
    # log to console       ${location}

    # Close All Browsers