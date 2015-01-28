And(/^I click Fundraisers on the Management menu$/) do
  fund = Management::Fundraisers.new()
  fund.management_fundraisers_click
  # pending # express the regexp above with the code you wish you had
end

And(/^I click New Fundraiser on the Fundraisers menu/) do
  fund = Management::Fundraisers.new()
  fund.fundraiser_new_fundraiser_click
end

And(/^I set the date to Today on the new Fundraiser page/) do
  fund = Management::Fundraisers.new(:new_fund_date => Date.today.strftime('%x'))
  fund.create
end

And(/^I set Name to '([^']*)' on the new Fundraiser page/) do |name|
  fund = Management::Fundraisers.new(:new_fund_name => name)
  fund.create
end

And(/^I set Status to Active on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.set_new_fundraiser_status_active
end

And(/^I set the Goal to '([^']*)' on the new Fundraiser page/) do |amount|
  fund = Management::Fundraisers.new(:new_fund_goal => amount)
  fund.create
end

And(/^I click Next on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_next_click
end

And (/^I set the Site Name to '([^']*)' on the new Fundraiser page/) do |sitename|
  fund = Management::Fundraisers.new(:new_fund_sitename => sitename)
  fund.create
end

And (/^I set Administrative Contact Name to '([^']*)' on the new Fundraiser page/) do |contactname|
  fund = Management::Fundraisers.new(:new_fund_contactname => contactname)
  fund.create
end

And (/^I set Administrative Contact Email to '([^']*)' on the new Fundraiser page/) do |contactemail|
  fund = Management::Fundraisers.new(:new_fund_contactemail => contactemail)
  fund.create
end

And (/^I set the template to Float on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.new_fundraiser_set_template_float
end

And (/^I highlight the Main Page Text on the new Fundraiser page/) do
  fund = Management::Fundraisers.new()
  fund.select_main_page_text
end

