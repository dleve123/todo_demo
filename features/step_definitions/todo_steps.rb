When(/^I create a todo with the content "(.*?)"$/) do |content|
  fill_in 'Content', with: content
  click_button 'Create Todo'
end

Given(/^I have the todo "(.*?)"$/) do |content|
  Todo.create(content: content)
end

When(/^I complete the todo "(.*?)"$/) do |content|
  todo = Todo.where(content: content).first
  within "div##{todo.id}" do
    click_link 'done'
  end
end
