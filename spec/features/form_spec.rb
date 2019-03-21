feature 'Submits Name & DOB' do
  scenario 'asks user to submit their name and date of birth' do
    visit ('/')
    fill_in(:name, with: 'Lola')
    fill_in(:day, with: '1')
    find("option[value='January']").select_option
    click_button 'Go!'
    expect(page).to have_content "Lola! Your birthday is on January 1!" 
  end
end