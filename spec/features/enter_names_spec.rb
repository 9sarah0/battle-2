feature 'Submiting players neames' do
  scenario 'Can enter players neames and see them' do
    sign_in_and_play
    expect(page).to have_content 'Sara vs. AK'
  end
end
