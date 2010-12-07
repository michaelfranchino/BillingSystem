class Client < ActiveRecord::Base
  
  has_many :contacts, :as => :contactable
  has_many :addresses, :as => :addressable
  has_many :projects
  
end
