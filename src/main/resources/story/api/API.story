Scenario:  Add product to cart
When I issue a HTTP POST request for a resource with the URL 'http://demowebshop.tricentis.com/addproducttocart/catalog/13/1/1'
Then the response code is equal to '200'
Then the response body contains 'The product has been added'








