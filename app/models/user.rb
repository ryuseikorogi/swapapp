class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :item  # tweetsテーブルとのアソシエーション
         has_many :likes #中間テーブルのlikesテーブルとのアソシエーション
end
