feature 'Submits name' do
  scenario 'asks user to submit their name' do
    visit ('/')
    fill_in(:name, with: "Lola")
    click_button 'Submit'
    expect(page).to have_content "Lola" 
  end
end
