Given(/^I am on the todo index page$/) do
  visit root_path
end


When(/^I click on the link "(.*?)"$/) do |link_name|
  click_link link_name
end

Then(/^I should be on a new todo form$/) do
  current_path.should eq(new_todo_path)
end

Then(/^I should be on the todo list page$/) do
  current_path.should eq(todos_path)
end

Then(/^the todo "(.*?)" should be listed on the page$/) do |todo_content|
  within '#list' do
    page.should have_content(todo_content)
  end
end

Then(/^error messages should be displayed$/) do
  page.should have_content "Content cannot be empty!"
end
