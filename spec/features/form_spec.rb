# feature 'Submits name' do
#   scenario 'asks user to submit their name' do
#     visit ('/')
#     fill_in(:name, with: "Lola")
#     click_button 'Submit'
#     expect(page).to have_content "Lola" 
#   end
# end

feature 'Submits Name & DOB' do
  scenario 'asks user to submit their name and date of birth' do
    visit ('/')
    fill_in(:name, with: 'Lola')
    fill_in(:day, with: '1')
    fill_in(:month, with: 'January')
    click_button 'Go!'
    expect(page).to have_content "Happy Birthday Lola!" 
  end
end