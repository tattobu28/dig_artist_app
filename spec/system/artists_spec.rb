require 'rails_helper'

RSpec.describe 'Artists', type: :system do
  before do
    @artist = FactoryBot.build(:artist)
  end
  context 'アーティスト新規登録ができるとき' do
    it '正しい情報を入力すればアーティスト新規登録ができてトップページに移動する' do
      # トップページに移動する
      visit root_path
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      # expect(page).to have_content('新規登録')
      # 新規登録ページへ移動する
      # visit new_artist_registration_path
      # ユーザー情報を入力する
      # image_path = Rails.root.join('public/images/bandsample.jpg')
      # attach_file('artist[image]', image_path, make_visible: true)
      # fill_in 'ID', with: @artist.artist_id
      # fill_in 'アーティスト名', with: @artist.name
      # fill_in 'メンバー', with: @artist.member
      # fill_in 'プロフィール', with: @artist.info
      # fill_in '活動拠点', with: @artist.city_id
      # fill_in 'ジャンル', with: @artist.genre_id
      # fill_in 'メールアドレス', with: @artist.email
      # fill_in 'Website', with: @artist.website
      # fill_in 'Twitter', with: @artist.twitter
      # fill_in 'Instagram', with: @artist.instagram
      # fill_in 'パスワード', with: @artist.password
      # fill_in 'パスワード確認', with: @artist.password_confirmation
      # サインアップボタンを押すとユーザーモデルのカウントが1上がることを確認する
      # expect{
      # find('input[name="commit"]').click
      # }.to change { Artist.count }.by(1)
      # トップページへ遷移したことを確認する
      # expect(current_path).to eq(root_path)
      # トップページにログアウトボタンがあることを確認する
      # expect(page).to have_content('ログアウト')
      # サインアップページへ遷移するボタンや、ログインページへ遷移するボタンが表示されていないことを確認する
      # expect(page).to have_no_content('新規登録')
      # expect(page).to have_no_content('ログイン')
    end
  end
  context 'アーティスト新規登録ができないとき' do
    it '誤った情報ではアーティスト新規登録ができずに新規登録ページへ戻ってくる' do
      # トップページに移動する
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      # 新規登録ページへ移動する
      # ユーザー情報を入力する
      # サインアップボタンを押してもユーザーモデルのカウントは上がらないことを確認する
      # 新規登録ページへ戻されることを確認する
    end
  end
end
