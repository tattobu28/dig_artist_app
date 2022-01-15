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
      get root_path
      expect(response.body).to include('songsample.jpg')
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
      get root_path
      expect(response.body).to include('bandsample.jpg')
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
  describe 'GET #show' do
    it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do 
      get song_path(@song)
      expect(response.status).to eq 200
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のタイトルが存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.title)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲の画像が存在する' do 
      get song_path(@song)
      expect(response.body).to include('songsample.jpg')
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のfileが存在する' do 
      get song_path(@song)
      expect(response.body).to include('SS.m4a')
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のinfoが存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.info)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のcomposerが存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.composer)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のwriterが存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.writer)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のlyricが存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.lyric)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のアーティスト名が存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.artist.name)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のアーティスト名が存在する' do 
      get song_path(@song)
      expect(response.body).to include(@song.artist.name)
    end
    it 'showアクションにリクエストするとレスポンスにアップロード済みの楽曲のアーティストの画像が存在する' do 
      get song_path(@song)
      expect(response.body).to include('bandsample.jpg')
    end
    it 'showアクションにリクエストするとレスポンスにtwitterのボタンが存在する' do 
      get song_path(@song)
      expect(response.body).to include('twitterアイコン')
    end
    it 'showアクションにリクエストするとレスポンスにfacebookのボタンが存在する' do 
      get song_path(@song)
      expect(response.body).to include('facebookアイコン')
    end
  end 
end