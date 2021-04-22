class Product < ApplicationRecord
  has_many :receiveds
  
  validates :supplier, presence: true, length: {maximum: 30 }
  validates :name, presence: true, length: {maximum: 30 }
  validates :unit, presence: true, length: {maximum: 5 }
  validates :purchase_price, presence: true
  
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'CP932:UTF-8') do |row| #文字コード変更
      product = find_by(id: row['id']) || new
      product.attributes = row.to_hash.slice(*updatable_attributes)
      product.save
    end
  end
  
  def self.updatable_attributes
    ['id', 'supplier', 'name', 'details', 'remarks1', 'remarks2', 'unit', 'purchase_price', 
    'sale_price_nb', 'sale_price_nk', 'sale_price_tt']
  end
end
