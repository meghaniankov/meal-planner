feature 'Generate New Meal Plan' do
  scenario 'Shows Mondays Meal' do
    visit '/'
    click_link 'Generate New Meal Plan'
    expect(page).to have_content 'Monday: Main: Frozen Chicken, Side: Veg'
  end
end