class Employee < ActiveRecord::Base

    attr_accessible :first_name, :last_name, :standard_rate, :enabled, :territory_id, :dateofbirth
    belongs_to :territory
    
    validates_presence_of :first_name, :last_name

    def full_name
        [first_name, last_name].join(' ')
    end
end
