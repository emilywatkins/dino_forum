require 'rails_helper'

describe Discussion do
  it { should validate_presence_of :description }
  it { should belong_to :topic }
  it { should have_many :posts }
end
