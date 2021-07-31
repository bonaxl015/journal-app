require 'rails_helper'

RSpec.describe 'Edits a category', type: :feature do

  it 'edits category, saves and shows edited category' do
    category = Category.create!(name: 'This is a category')
    visit edit_category_path(id: category.id)
    expect(current_path).to eq edit_category_path(id: category.id)
    fill_in 'Name', with: 'This is a category edited'
    #click submit button (in form, it is button)
    click_button 'Update Category'
    expect(page).to have_content('This is a category edited')

    cat1 = Category.order("id").last
    expect(cat1.name).to eq('This is a category edited')
  end
end

