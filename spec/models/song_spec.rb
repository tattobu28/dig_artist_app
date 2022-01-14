require 'rails_helper'
RSpec.describe Song, type: :model do
  before do
    @song = FactoryBot.build(:song)
  end

  describe '楽曲アップロード' do
    context '楽曲アップロードできる場合' do
      it '必須項目が存在すれば登録できる' do
        expect(@song).to be_valid
      end
    end
    context '楽曲アップロードできない場合' do
      it 'titleが空ではアップロードできない' do
        @song.title = ''
        @song.valid?
        expect(@song.errors.full_messages).to include("タイトルを入力してください")
      end
      it 'composerが空ではアップロードできない' do
        @song.composer = ''
        @song.valid?
        expect(@song.errors.full_messages).to include("作曲者を入力してください")
      end
      it 'imageが空ではアップロードできない' do
        @song.image = nil
        @song.valid?
        expect(@song.errors.full_messages).to include("アルバムアートワークを入力してください")
      end
      it 'fileが空ではアップロードできない' do
        @song.file = nil
        @song.valid?
        expect(@song.errors.full_messages).to include("楽曲ファイルを入力してください")
      end
    end
  end
end
