class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
         
         has_many :posts
         has_many :comments, dependent: :destroy

         with_options presence: true do
         validates :nickname
         
         validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze, message: 'は半角英数で入力してください。' }
         validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力してください。' }
         validates :family_name,format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力してください。' }
         validates :first_name_kana,format: { with: /\A[ァ-ヶー－]+\z/, message: 'は全角カタカナで入力して下さい。' }
         validates :family_name_kana,format: { with: /\A[ァ-ヶー－]+\z/, message: 'は全角カタカナで入力して下さい。' }
         validates :birth_day
         validates :email, uniqueness: true
         end
end
