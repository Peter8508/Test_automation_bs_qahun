When(/^I'm going to "([^"]*)"$/) do |link|
  visit(link)
  sleep(5)
end