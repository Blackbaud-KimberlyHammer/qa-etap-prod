When(/^I click Accounts$/) do
  landing = Admin::Landing.new
  landing.accounts_click
end

And(/^I click Advanced Find$/) do
  sleep 3
  search = Account::AdvancedSearch.new
  search.advanced_click
end

And(/^I type '([^']*)' into the Name field$/) do |name|
  search = Account::AdvancedSearch.new(:search_field=>name)
  search.clear_email_field
  search.clear_phone_field
  search.create
end

And(/^I clear the email field on the advanced find page$/) do
  search = Account::AdvancedSearch.new()
  search.clear_email_field
end

Then(/^'([^']*)' should show in the advanced find name results$/) do |name|
  sleep 0.5
  search = Account::AdvancedSearch.new
  expect(search.account_name_exists? name).to eq(true)
end
#
And(/^I type '([^']*)' into the Email field$/) do |email|
  search = Account::AdvancedSearch.new(:email_field=>email)
  search.clear_name_field
  search.clear_phone_field
  search.create
end

And (/^I set Phone to '([^']*)' on the Advanced Find screen/) do |value|
  search = Account::AdvancedSearch.new(:phone_field=>value)
  search.clear_name_field
  search.create
end

When (/^I set the State to '([^']*)' on the advanced find page/) do |state_name|
  search = Account::AdvancedSearch.new(:adv_find_state_field=>state_name)
  search.create
  search.clear_name_field
  search.clear_phone_field
  search.clear_email_field
end

When (/^I type '([^']*)' into the Address Lines field/) do |address|
  search = Account::AdvancedSearch.new(:address_field=>address)
  search.create
end

And (/^I type '([^']*)' into the Account Name field on the advanced find page/) do |account_name|
  search = Account::AdvancedSearch.new(:search_field=>account_name)
  search.create
end

And (/^I type '([^']*)' into the Email field on the advanced find page/) do |email|
  search = Account::AdvancedSearch.new(:email_field=>email)
  search.create
end

And (/^I type '([^']*)' into the State field on the advanced find page/) do |state|
  search = Account::AdvancedSearch.new(:state_field=>state)
  search.create
end

And (/^I type '([^']*)' into the Postal Code field on the advanced find page/) do |postal|
  search = Account::AdvancedSearch.new(:postal_field=>postal)
  search.create
end

And (/^I type '([^']*)' into the Phone Number field on the advanced find page/) do |phone|
  search = Account::AdvancedSearch.new(:phone_field=>phone)
  search.create
end

And (/^I type '([^']*)' into the City field on the advanced find page/) do |city|
search = Account::AdvancedSearch.new(:city_field=>city)
search.create
end

#And (/^I set the country to 'United States' on the advanced find page/) |

And (/^I click Add an Account on the Advanced Find page/) do
  search = Account::AdvancedSearch.new
  search.add_account_advanced_find
end

