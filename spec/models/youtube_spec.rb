require 'rails_helper'
RSpec.describe Youtube, type: :model do
  before do
    @youtube = FactoryBot.build(:youtube)
  end

  describe 'MVアップロード' do
    context 'MVアップロードできる場合' do
      it '必須項目が存在すれば登録できる' do
        expect(@youtube).to be_valid
      end
    end
    context 'MVアップロードできない場合' do
      it 'titleが空ではアップロードできない' do
        @youtube.title = ''
        @youtube.valid?
        expect(@youtube.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'composerが空ではアップロードできない' do
        @youtube.composer = ''
        @youtube.valid?
        expect(@youtube.errors.full_messages).to include('作曲者を入力してください')
      end
      it 'urlが空ではアップロードできない' do
        @youtube.url = ''
        @youtube.valid?
        expect(@youtube.errors.full_messages).to include('YouTube URLを入力してください')
      end
    end
  end
end
