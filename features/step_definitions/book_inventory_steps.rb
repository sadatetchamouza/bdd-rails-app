Given('I am a registred user') do
  @registered_user = FactoryBot.create(:user,
    :email => "tester@testdomain.test", 
    :password => "pa$$word") # Write code here that turns the phrase above into concrete actions
end

Given('I have populated my inventory with several books') do
  FactoryBot.create(:book,
    :user => @registered_user,
    :name => "Don Quixote",
    :author => "Miguel de Cervantes")

    FactoryBot.create(:book,
    :user => @registered_user,
    :name => "Moby Dick",
    :author => "Herman Melville")
end

When('I visit the homepage') do
    visit root_path # Write code here that turns the phrase above into concrete actions
end

Then('I should see the list of my books') do
  expect(page).to have_content("Don Quixote")
  expect(page).to have_content("Moby Dick")  
end

When('I submit the new book to my inventory') do
  click_link "New Book"
  
  fill_in "book_name",	with: "War and Peace"
  fill_in "book_author",	with: "Leo Tolstoy"
  
  click_button "Create Book" # Write code here that turns the phrase above into concrete actions
end

Then('I should see the new book in my inventory') do
  visit root_path 
  
  expect(page).to have_content("War and Peace")
  expect(page).to have_content("Leo Tolstoy") # Write code here that turns the phrase above into concrete actions
end

Given('I have a book in my inventory') do
  FactoryBot.create(:book, :user => @registered_user, 
    :name => "War and Peace", :author => "Leo Tolstoy") # Write code here that turns the phrase above into concrete actions
end

When('I change the book title') do
  visit root_path

  click_link "Edit"

  fill_in "book_name",	with: "Guerra y Pez"
  
  click_button "Update Book"
  # Write code here that turns the phrase above into concrete actions
end

Then('I should have the book with the new title') do
  visit root_path
  
  expect(page).to_not have_content("War and Peace")  
  expect(page).to have_content("Guerra y Pez")  # Write code here that turns the phrase above into concrete actions
end

When('I remove a book from my inventory') do
  visit root_path
  
  click_link "Destroy" # Write code here that turns the phrase above into concrete actions
end

Then('I should not see it listing in my inventory') do
  expect(page).to_not have_content("War and Peace")   # Write code here that turns the phrase above into concrete actions
end