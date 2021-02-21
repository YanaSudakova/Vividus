Scenario:  Sign up
Given I am on the main application page
When I wait until element located `By.xpath(//*[contains(text(),'Register')])` appears
When I click on element located `By.xpath(//*[contains(text(),'Register')])`
When I wait until element located `By.xpath(//*[contains(text(),'Gender:')])` appears
When I click on element located `By.xpath(//*[@id="gender-male"])`
When I fill <firstName>, <lastName>, <email> and <password> in the registration form
When I click on element located `By.xpath(//*[@id="register-button"])`
When I wait until element located `By.xpath(//*[contains(@class, 'button-1 register-continue-button')])` appears
Then the text 'Your registration completed' exists
When I click on element located `By.xpath(//*[contains(text(),'Log out')])`

Examples:
|firstName				    |lastName					   |email					          |password                      |
|#{generate(Name.firstName)}|#{generate(Name.lastName)}    |#{generate(Internet.emailAddress)}|#{generate(Internet.password)}|
