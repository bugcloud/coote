Given /^There are 3 request data/ do
  Factory.build(:mono001).save!
  Factory.build(:mono002).save!
  Factory.build(:mono003).save!
end

And /^I should see (\d+) requests/ do |count|
  page.should have_xpath(".//div[@class='coote_request']", :count => 3)
end
