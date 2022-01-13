require 'rails_helper'
RSpec.describe Artist, type: :model do
  before do
    @artist = FactoryBot.build(:artist)
  end

  describe 'アーティスト新規登録' do
    it '必須項目が存在すれば登録できる' do
      expect(@artist).to be_valid
    end
  end
end
