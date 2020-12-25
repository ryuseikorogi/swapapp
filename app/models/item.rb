class Item < ApplicationRecord
  belongs_to :user  # userテーブルとのアソシエーション
  has_many :likes #中間テーブルのlikesテーブルとのアソシエーション
end
