def sing_in_and_paly
  visit '/'
  fill_in :player_1_name, with: 'Sara'
  fill_in :player_2_name, with: 'AK'
  click_button 'Submit'
end
