feature 'Attack' do
  scenario 'shows confirmation when attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduces player HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Mittens: 90HP'
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end
end
