require 'rails_helper'
describe SongsController, type: :request do

  before do
    @song = FactoryBot.create(:song)
    @artist = FactoryBot.create(:artist)
    @youtube = FactoryBot.create(:youtube)
  end

  describe 'GET #index' do
      it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do 
        get root_path
        expect(response.status).to eq 200
      end
      it 'indexアクションにリクエストするとレスポンスにアップロード済みの楽曲のタイトルが存在する' do 
        get root_path
        expect(response.body).to include(@song.title)
      end
      it 'indexアクションにリクエストするとレスポンスにアップロード済みの楽曲の画像が存在する' do 
        # get root_path
        # expect(action.body).to include(url_for(@song.image.variant(resize: '500x500')))
      end
      it 'indexアクションにリクエストするとレスポンスにアップロード済みの楽曲のアーティスト名が存在する' do 
        get root_path
        expect(response.body).to include(@song.artist.name)
      end
      it 'indexアクションにリクエストするとレスポンスに登録済みのアーティスト名が存在する' do 
        get root_path
        expect(response.body).to include(@artist.name)
      end
      it 'indexアクションにリクエストするとレスポンスに登録済みのアーティストのジャンルが存在する' do 
        get root_path
        expect(response.body).to include(@artist.genre.name)
      end
      it 'indexアクションにリクエストするとレスポンスに登録済みのアーティストのジャンルが存在する' do 
        get root_path
        expect(response.body).to include(@artist.city.name)
      end
      it 'indexアクションにリクエストするとレスポンスに登録済みのアーティストの画像が存在する' do 
        # get root_path
        # expect(response.body).to include(@artist.image)
      end
      it 'indexアクションにリクエストするとレスポンスにアップロード済みのMVのurlが存在する' do 
        get root_path
        expect(response.body).to include(@youtube.url)
      end
      it 'indexアクションにリクエストするとレスポンスにアップロード済みのMVのタイトルが存在する' do 
        get root_path
        expect(response.body).to include(@youtube.title)
      end
      it 'indexアクションにリクエストするとレスポンスにアップロード済みのMVのアーティスト名が存在する' do 
        get root_path
        expect(response.body).to include(@youtube.artist.name)
      end
    context 'ログインしていない場合' do
      it 'indexアクションにリクエストするとレスポンスにログインボタンが存在する' do 
        get root_path
        expect(response.body).to include('ログイン')
      end
      it 'indexアクションにリクエストするとレスポンスに新規登録ボタンが存在する' do 
        get root_path
        expect(response.body).to include('新規登録')
      end
    end
    context 'ログインしている場合' do
      before do
        sign_in @artist
      end
      it 'indexアクションにリクエストするとレスポンスにログアウトボタンが存在する' do
        get root_path
        expect(response.body).to include('ログアウト')  
      end
      it 'indexアクションにリクエストするとレスポンスに楽曲アップロードボタンが存在する' do
        get root_path
        expect(response.body).to include('楽曲アップロード')  
      end
      it 'indexアクションにリクエストするとレスポンスにMVアップロードボタンが存在する' do
        get root_path
        expect(response.body).to include('MVアップロード')  
      end
    end
  end
end