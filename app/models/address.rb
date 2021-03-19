class Address < ApplicationRecord
  with_options presence: true do
    validates :address, length { maximum: 50 }
    validates :address_2, length { maximum: 20 }
  end
  # 以下二行でgeocodingする
  geocoded_by :address#入力した住所から緯度経度を保存
  after_validation :geocode, if address_changed?# 変更後の緯度経度を保存
end
