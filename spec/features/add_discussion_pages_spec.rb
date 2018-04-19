require 'rails_helper'

describe "the add a discussion process" do
  it "adds a new discussion" do
    topic = Topic.create(:title => 'Dinosore')
    discussion = Discussion.create(:description => 'Dinosores r dumb', :topic_id => topic.id)
    visit topic_path(topic)
    click_link 'Add a discussion'
    fill_in 'Description', :with => 'Let\'s chat'
    click_on 'Create Discussion'
    expect(page).to have_content 'Let\'s chat'
  end

end
