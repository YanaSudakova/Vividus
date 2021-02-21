GivenStories: story/web/Sign up.story

Scenario: Sign in
Given I am on the main application page
When I wait until element located `By.xpath(//*[contains(text(),'Register')])` appears
When I click on element located `By.xpath(//*[contains(text(),'Log in')])`
When I login as a registered user
When I click on element located `By.xpath(//*[contains(@class, 'button-1 login-button')])`
When I wait until element located `By.xpath(//*[contains(text(),'Log out')])` appears
Then the text '${userEmail}' exists

Scenario: Verify user Profile
When I click on element located `By.xpath(//*[contains(text(),'${userEmail}')])`
Then the text 'My account - Customer info' exists
Then field located `By.xpath(//*[@id="FirstName"])` exists

Scenario: page content
When I click on element located `By.xpath((//*[contains(text(),'Books')])[1])`
When I COMPARE_AGAINST baseline with `Books` ignoring:
|Element                         |
|By.xpath(//div[@class="header"])|
When I click on element located `By.xpath((//*[contains(text(),'Computers')])[1])`
When I COMPARE_AGAINST baseline with `Computers` ignoring:
|Element                         |
|By.xpath(//div[@class="header"])|
When I click on element located `By.xpath((//*[contains(text(),'Electronics')])[1])`
When I COMPARE_AGAINST baseline with `Electronics` ignoring:
|Element                         |
|By.xpath(//div[@class="header"])|
When I click on element located `By.xpath((//*[contains(text(),'Jewelry')])[1])`
When I COMPARE_AGAINST baseline with `Jewelry` ignoring:
|Element                         |
|By.xpath(//div[@class="header"])|
When I click on element located `By.xpath((//*[contains(text(),'Digital downloads')])[1])`
When I COMPARE_AGAINST baseline with `Digital downloads` ignoring:
|Element                         |
|By.xpath(//div[@class="header"])|

Scenario: Checkout
When I click on element located `By.xpath(//*[@id="topcartlink"]/a/span[1])`
When I click on element located `By.xpath(//*[@id="checkout"])`
When I find = '1' elements By.xpath(//*[@id="terms-of-service-warning-box"]/p) and while they exist do up to 2 iteration of
|step																									               |
|When I click on element located `By.xpath(//*[contains(@class, 'ui-button-icon-primary ui-icon ui-icon-closethick')])`|
|When I click on element located `By.xpath(//*[@id="termsofservice"])`												   |
|When I click on element located `By.xpath(//*[@id="checkout"])`													   |

