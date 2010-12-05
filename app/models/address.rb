class Address < ActiveRecord::Base
    attr_accessible :name, :city, :state_id, :country_id, :postal_code, :street
    validates_presence_of :name, :city, :country

    belongs_to :state
    belongs_to :country
end
