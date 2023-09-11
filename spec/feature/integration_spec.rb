require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path

    fill_in "book[title]", with: 'Harry Potter'
    fill_in "book[author]", with: 'J.K. Rowling'
    fill_in "book[price]", with: '19.99'
    fill_in "book[published_date]", with: '2001-07-08'

    click_on 'Create Book'

    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('19.99')
    expect(page).to have_content('July 08, 2001')

  end
end
