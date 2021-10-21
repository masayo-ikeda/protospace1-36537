class Prototype < ApplicationRecord
  belongs_to :user
  # アソシエーションのプロトタイプは一人のユーザーに属している
  has_one_attached :image
  # Prototypeモデルに、has_one_attachedを使用してimageカラムとのアソシエーションを記述した
  # プロトタイプとイメージを紐付けすることができた
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  # 47.imageカラムのバリデーションについては、Prototypeモデルに以下のように設定
  # 48.Prototypeモデルに、プロトタイプの名称、キャッチコピー、コンセプト、画像に関するバリデーションを記述
end
