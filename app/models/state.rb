class State < ActiveRecord::Base
    attr_accessible :code, :name, :country_id

    validates_presence_of :code, :name, :country_id

  validate :code

    has_many :addresss
    has_many :territories
    
    belongs_to :country
    
end