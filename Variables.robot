*** Variables ***
${url}    https://www.amazon.in/
${browser}    chrome

# X-path for required elements   
${Todaysdeals}    xpath://h2[contains(text(),'Today’s Deals')]
${Requireddeal}    xpath:(//li[@class='feed-carousel-card _deals-shoveler-v2_style_dealCard__1HqkZ _deals-shoveler-v2_style_dealCardMinHeight__3YZz0'])[3]
${RequiredItem}    xpath://ul[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']/li[3]
# ${Seealldetails}    xpath:(//div[@class='ProductShowcaseActions__action__o0KFb ProductShowcaseActions__detail-button__quhUh'])
${Price}    xpath:(//span[@class='a-price aok-align-center reinventPricePriceToPayMargin priceToPay'])
${Seemoreproductdetails}    xpath://a[contains(text(),'See more product details')]
${price1}    xpath:(//li[@class='a-list-normal a-spacing-none no-margin-right overflow-hidden octopus-response-li-width'])[2]
${price2}    xapth://span[@id='taxInclusiveMessage']/preceding::span[3]/child::span[2]   

# xpath for table items
${Tablerow}    xpath:(//table[@id='productDetails_techSpec_section_1'])/tbody/tr
${Tablecolumn}    xpath:(//table[@id='productDetails_techSpec_section_1'])/tbody/tr[1]/td
# ${Color}    Colour
${Expectedata}    Red
# variables for setup and teardown
${tc1}    Navigated to the Amazon Website setup successfully
${td1}    Navigated to the Amazon Website teardown completely 
${tc2}    verify the price setup successfully
${td2}    verify the price teardown completely
${tc3}    Iteration of product table setup successfully
${td3}    Iteration of product table teardown completely
