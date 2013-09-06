When(/^I create a todo with the content "(.*?)"$/) do |content|
  fill_in 'Content', with: content
  click_button 'Create Todo'
end
