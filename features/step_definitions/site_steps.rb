Given /I go to the home page/ do
  Page.browser.goto "www.cukesetaptesting.com"
end

Then /the url should contain "(.*?)"/ do |url|
  Page.browser.url.should match(url)
end