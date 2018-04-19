require 'rails_helper'

describe "the edit a discussion process" do
  it "edits a discussion" do
    topic = Topic.create(:title => 'Dinosore')
    discussion = Discussion.create(:description => 'Dinosores r dumb', :topic_id => topic.id)
    visit topic_path(topic)
    click_on 'Edit'
    fill_in 'Description', :with => 'Dumb dumb dinosaur'
    click_on 'Update Discussion'
    expect(page).to have_content 'Dumb dumb dinosaur'
  end
end
