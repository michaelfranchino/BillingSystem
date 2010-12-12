class Client < ActiveRecord::Base
  attr_accessible :name, :account, :enabled, :home_territory, :contacts_attributes, :addresses_attributes
  
  has_many :addresses, :as => :addressable, :dependent => :destroy
  has_many :contacts,  :as => :contactable, :dependent => :destroy
  has_many :projects
  
  belongs_to :territory, :foreign_key => :home_territory
  
  accepts_nested_attributes_for :addresses, :contacts, :allow_destroy => true
end
