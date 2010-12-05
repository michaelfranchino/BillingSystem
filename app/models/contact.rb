class Contact < ActiveRecord::Base
  has_many :client_relationships
  has_many :clients, :through => :client_relationships
end
