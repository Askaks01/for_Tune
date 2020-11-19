require 'rails_helper'

RSpec.describe Routine, type: :model do
  describe '#create' do
    before do
      @routine = FactoryBot.build(:routine)
    end

    it 'name,image,category,timeframe,descriptionが存在していれば保存できること' do
      expect(@routine).to be_valid
    end

    it 'nameが空では保存できないこと' do
      @routine.name = nil
      @routine.valid?
      expect(@routine.errors.full_messages).to include("Name can't be blank")
    end

    it 'imageが空では保存できないこと' do
      @routine.image = nil
      @routine.valid?
      expect(@routine.errors.full_messages).to include("Image can't be blank")
    end

    it 'descriptionが空では保存できないこと' do
      @routine.description = nil
      @routine.valid?
      expect(@routine.errors.full_messages).to include("Description can't be blank")
    end

    it 'categoryが___では保存できないこと' do
      @routine.category_id = 1
      @routine.valid?
      expect(@routine.errors.full_messages).to include('Category Select')
    end

    it 'timeframeが___では保存できないこと' do
      @routine.timeframe_id = 1
      @routine.valid?
      expect(@routine.errors.full_messages).to include('Timeframe Select')
    end
  end
end
