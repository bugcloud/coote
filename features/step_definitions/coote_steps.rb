mono001 = Factory.build(:mono001)
mono002 = Factory.build(:mono002)
mono003 = Factory.build(:mono003)

Given /^there are 3 request data$/ do
  mono001.save!
  mono002.save!
  mono003.save!
end

Given /^there is no data$/ do
  Mono.delete_all
end

Given /^there are (\d+) comments to first request data$/ do |count|
  pending "Factory.build(:comment).save"
end

Given /^I am seeing the new comment form$/ do
  pending
end

When /^I click "reply" of first request$/ do
  click_link("reply_to_#{mono001}")
end


Then /^I should see new mono form$/ do
  page.should have_xpath(".//input[@type='text']", :count => 2)
  page.should have_xpath(".//textarea", :count => 1)
  page.should have_xpath(".//input[@type='submit']", :count => 1)
end

Then /^I should see new comment form$/ do
  pending
end

Then /^I should see (\d+) requests/ do |count|
  page.should have_xpath(".//div[@class='coote_request']", :count => count.to_i)
end
