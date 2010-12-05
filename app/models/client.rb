class Client < ActiveRecord::Base
  has_many :client_relationships
  has_many :contacts, :through => :client_relationships
end
