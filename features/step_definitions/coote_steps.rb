Given /^there are 3 request data$/ do
  Factory.build(:mono001).save!
  Factory.build(:mono002).save!
  Factory.build(:mono003).save!
end

Given /^there is no data$/ do
  Mono.delete_all
end

Then /^I should see new mono form$/ do
  page.should have_xpath(".//input[@type='text']", :count => 2)
  page.should have_xpath(".//textarea", :count => 1)
  page.should have_xpath(".//input[@type='submit']", :count => 1)
end

And /^I should see (\d+) requests/ do |count|
  page.should have_xpath(".//div[@class='coote_request']", :count => count.to_i)
end
