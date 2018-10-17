feature 'Viewing HP' do
  scenario 'should show player hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end
