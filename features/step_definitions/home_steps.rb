Given(/^I know Jobfers is the most popular job platform$/) do
end

When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see at least one offer$/) do
  expect(page.all('ul li').size).not_to eq 0
end

Given(/^I know there are offers$/) do
  visit root_path
  expect(page.all('ul li').size).not_to eq 0
end

When(/^I look a specific offer$/) do
  @offer = page.first("ul li")
  #expect(page.all('ul li').size).not_to eq 0
end

Then(/^I should see the title and the dedication$/) do
  expect(@offer.find("strong")).not_to be_nil
  expect(@offer.find("div.offer")).not_to be_nil
end