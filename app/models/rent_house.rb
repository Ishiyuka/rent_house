class RentHouse < ApplicationRecord
  # validates :name, presense:true
  # validates :rent, presense:true
  # validates :address, presense:true
  # validates :age, presense:true

  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations
end
