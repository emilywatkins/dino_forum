require 'rails_helper'

describe Topic do
  it { should validate_presence_of :title }
  it { should have_many :discussions }
end
