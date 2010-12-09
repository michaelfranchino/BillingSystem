class Address < ActiveRecord::Base
    attr_accessible :name, :city, :state_id, :country_id, :postal_code, :street
    validates_presence_of :name, :city, :country

    has_many   :contacts, :as => :contactable
    belongs_to :addressable, :polymorphic => true
    belongs_to :state
    belongs_to :country
    
    accepts_nested_attributes_for :contacts
end
