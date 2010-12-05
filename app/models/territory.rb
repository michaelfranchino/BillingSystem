class Territory < ActiveRecord::Base
    attr_accessible :name, :description, :country_id, :state_id
    validates_presence_of :name
    
    has_many :employees
    belongs_to :country
    belongs_to :state
    
    def self.search(search, page)
      paginate :per_page => 10, :page => page,
               :conditions => ['name like ?', "%#{search}%"], :order => 'name'
    end
end
