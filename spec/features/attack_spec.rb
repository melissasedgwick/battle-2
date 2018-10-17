feature 'attack player' do
  scenario 'shows confirmation when attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduces player HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).to have_content 'Mittens: 90HP'
  end
end
