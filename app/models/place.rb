class Place < ApplicationRecord
  has_many :receiveds
  
  validates :company, presence: true
  validates :address, presence: true
  
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'CP932:UTF-8') do |row| #文字コード変更
      place = find_by(id: row['id']) || new
      place.attributes = row.to_hash.slice(*updatable_attributes)
      place.save
    end
  end
  
  def self.updatable_attributes
    ['id', 'company', 'address']
  end
end
