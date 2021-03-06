feature 'Attacking' do
  scenario 'attack palyer_2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Sara attacked AK'
  end

  scenario 'reduce player_2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'AK: 100'
    expect(page).to have_content 'AK: 90'
  end

  scenario 'reduce player_1 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Sara: 100 HP'
    expect(page).to have_content 'Sara: 90 HP'
  end

  scenario 'be attacked by player_2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'AK attacked Sara'
  end
end
