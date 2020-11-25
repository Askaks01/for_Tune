require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    it "textがあれば保存できること" do
      expect(@comment).to be_valid
    end

    it "textがなければ保存できないこと" do
      @comment.text = nil
      @comment.valid?
    end
  end
end
