feature 'Submits Name & DOB' do
  # scenario 'asks user to submit their name and date of birth' do
  #   visit ('/')
  #   fill_in(:name, with: 'Lola')
  #   fill_in(:day, with: '1')
  #   find("option[value='January']").select_option
  #   click_button 'Go!'
  #   expect(page).to have_content "Lola! Your birthday is on January 1!" 
  # end

  scenario 'return a birthday greeting if birthday is today' do
    visit ('/')
    fill_in(:name, with: 'Lola')
    fill_in(:day, with: '22')
    find("option[value='March']").select_option
    click_button 'Go!'
    expect(page).to have_content "Happy Birthday Lola!" 
  end
  
  scenario 'returns the number of days left in the birthday' do
    visit ('/')
    fill_in(:name, with: 'Lola')
    fill_in(:day, with: '22')
    find("option[value='February']").select_option
    click_button 'Go!'
    expect(page).to have_content "Lola! Your birthday is in 337 days!" 
  end
end