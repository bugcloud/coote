Given /^there are 3 request data$/ do
  Mono.delete_all
  @mono001 = Factory.build(:mono001)
  @mono002 = Factory.build(:mono002)
  @mono003 = Factory.build(:mono003)
  @mono001.save!
  @mono002.save!
  @mono003.save!
end

Given /^there is no data$/ do
  Mono.delete_all
end

Given /^there are 3 comments to first request data$/ do
  @mono001.comments << [Factory.build(:comment001), Factory.build(:comment002), Factory.build(:comment003)]
  @mono001.save!
end

Given /^I am seeing the new comment form$/ do
  page.find(:xpath, "//a[@id='reply_to_#{@mono001.id}']").click
end

When /^I click "reply" of first request$/ do
  page.find(:xpath, "//a[@id='reply_to_#{@mono001.id}']").click
end


Then /^I should see new mono form$/ do
  page.should have_xpath(".//input[@type='text']", :count => 2)
  page.should have_xpath(".//textarea", :count => 1)
  page.should have_xpath(".//input[@type='submit']", :count => 1, :count => 1)
end

Then /^I should see new comment form$/ do
  page.should have_xpath(".//form[@action='/mono/#{@mono001.id}/comment/create']", :count => 1)
  page.should have_xpath(".//input[@id='comment_name']", :count => 1)
  page.should have_xpath(".//textarea[@id='comment_body']", :count => 1)
  page.should have_xpath(".//input[@id='comment_submit']", :count => 1)
end

Then /^I should see (\d+) requests/ do |count|
  page.should have_xpath(".//div[@class='coote_request']", :count => count.to_i)
end

Then /^I should see (\d+) (comment|comments)/ do |count, str|
  page.should have_xpath(".//div[@id='comments_area_#{@mono001.id}']", :count => 1)
  page.should have_xpath(".//div[@class='triangle-border right']", :count => count.to_i)
end
