class Country < ActiveRecord::Base
    attr_accessible :code, :name

    has_many :addresses
    has_many :states
    has_many :territories

    validates_presence_of :code, :name
    
    def full_name
        name + ' (' + code + ')'
    end

end