require 'rails_helper'

describe "the add a topic process" do
  it "adds a new topic" do
    visit topics_path
    click_link 'add a new topic'
    fill_in 'Title', :with => 'Dinosaur'
    click_on 'Create Topic'
    expect(page).to have_content 'Topics'
  end

end
