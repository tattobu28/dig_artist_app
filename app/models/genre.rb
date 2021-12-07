class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ポップ' },
    { id: 3, name: 'シンガーソングライター' },
    { id: 4, name: 'ロック' },
    { id: 5, name: 'パンク・メロコア・ハードコア' },
    { id: 6, name: 'オルタナティブ' },
    { id: 7, name: 'ギターロック' },
    { id: 8, name: 'ハードロック・ヘビーメタル' },
    { id: 9, name: 'ミクスチャー' },
    { id: 10, name: 'ダンス・エレクトロ' },
    { id: 11, name: 'ヒップホップ・ラップ' },
    { id: 12, name: 'ジャズ' },
    { id: 13, name: 'R&B' },
    { id: 14, name: 'レゲエ' },

  ]

  include ActiveHash::Associations
  has_many :artists

  end