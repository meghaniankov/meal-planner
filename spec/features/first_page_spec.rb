feature 'Meal Plan' do

  scenario 'Shows link to generate a new meal plan' do
    visit '/'
    expect(page).to have_content 'Generate New Meal Plan'
  end
end
