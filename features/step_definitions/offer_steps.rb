Given(/^I am at the homepage$/) do
  visit root_path
end

When(/^I click an offer$/) do
  page.first("li a").click
end

Then(/^the details of an offer are displayed$/) do
  expect(page.find("p")).not_to be_nil
end

Given(/^I am seeing the offer details$/) do
  visit offer_path(1)
end

Given(/^I clicked the edit button$/) do
  page.find_link("Editar").click
end

When(/^I modify the title$/) do
  page.fill_in 'Title', with: 'Some cool job title'
end

When(/^pressed the update button$/) do
  page.find("input[type=submit]").click
end

Then(/^I can see the updated offer page$/) do
  expect(page.find("h1").text).to match(/Some cool job title/)
end