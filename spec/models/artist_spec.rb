require 'rails_helper'
RSpec.describe Artist, type: :model do
  before do
    @artist = FactoryBot.build(:artist)
  end

  describe 'アーティスト新規登録' do
    context 'アーティスト新規登録できる場合' do
      it '必須項目が存在すれば登録できる' do
        expect(@artist).to be_valid
      end
    end
    context 'アーティスト新規登録できない場合' do
      it 'artist_idが空では登録できない' do
        @artist.artist_id = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('IDを入力してください')
      end
      it 'artist_idが全角では登録できない' do
        @artist.artist_id = 'テスト'
        @artist.valid?
        expect(@artist.errors.full_messages).to include('IDは半角英数字で入力してください')
      end
      it 'nameが空では登録できない' do
        @artist.name = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('アーティスト名を入力してください')
      end
      it 'memberが空では登録できない' do
        @artist.member = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('メンバーを入力してください')
      end
      it 'city_idが空では登録できない' do
        @artist.city_id = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('活動拠点を入力してください')
      end
      it 'genre_idが空では登録できない' do
        @artist.genre_id = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('ジャンルを入力してください')
      end
      it 'emailが空では登録できない' do
        @artist.email = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('メールアドレスを入力してください')
      end
      it 'imageが空では登録できない' do
        @artist.image = nil
        @artist.valid?
        expect(@artist.errors.full_messages).to include('画像を入力してください')
      end
      it 'passwordが空では登録できない' do
        @artist.password = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワードを入力してください')
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @artist.password_confirmation = ''
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
      end
      it '重複したemailが存在する場合登録できない' do
        @artist.save
        another_artist = FactoryBot.build(:artist)
        another_artist.email = @artist.email
        another_artist.valid?
        expect(another_artist.errors.full_messages).to include('メールアドレスはすでに存在します')
      end
      it 'passwordが5文字以下では登録できない' do
        @artist.password = '12345'
        @artist.valid?
        expect(@artist.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'infoが250文字以上なら登録できない' do
        @artist.info = 'a' * 251
        @artist.valid?
        expect(@artist.errors.full_messages).to include('プロフィールは250文字以内で入力してください')
      end
    end
  end
end
