require 'spec_helper'

describe auteur do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is wrong!
    @micropost = auteur.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @auteur }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
end
