require 'rails_helper'

describe Idea, type: :model do
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:user_id)}
end