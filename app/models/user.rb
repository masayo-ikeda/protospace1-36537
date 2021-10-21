class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
        # バリデーションとは保存の時弾くのか弾かないのかを選別します
        # aが通ろうとする時、内容が空なら通過させません
        # email&PWは記述なしでOK
        # 先生と一緒に勉強した所
          validates :name, presence: true
          validates :profile, presence: true
          validates :occupation, presence: true
          validates :position, presence: true

          has_many :prototypes
        # アソシエーションUserが１対多の関係で複数のprototypesを持っている
          has_many :comments
        end


