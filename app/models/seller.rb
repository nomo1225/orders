class Seller < ApplicationRecord
  has_many :receiveds
  
  validates :company, presence: true, length: {maximum: 40 }
  validates :address, presence: true, length: {maximum: 100 }
  validates :post_number, presence: true, length: {maximum: 8 }
  
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'CP932:UTF-8') do |row| #文字コード変更
      seller = find_by(id: row['id']) || new
      seller.attributes = row.to_hash.slice(*updatable_attributes)
      seller.save
    end
  end
  
  def self.updatable_attributes
    ['id', 'company', 'address', 'post_number']
  end
end
