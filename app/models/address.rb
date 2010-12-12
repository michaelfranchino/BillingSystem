class Address < ActiveRecord::Base
  validates_presence_of :name, :city, :country

  belongs_to :addressable, :polymorphic => true
  belongs_to :state
  belongs_to :country
  
end
