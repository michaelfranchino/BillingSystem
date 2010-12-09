class Client < ActiveRecord::Base
  
  has_many :addresses, :as => :addressable
  has_many :projects
  
  belongs_to :territory, :foreign_key => :home_territory
  
  accepts_nested_attributes_for :addresses
  
end
