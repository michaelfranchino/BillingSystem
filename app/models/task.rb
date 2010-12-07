class Task < ActiveRecord::Base
  attr_accessible :name, :description, :reference, :status, :type, :client_id, 
                  :planned_start_date, :planned_end_date, :actual_start_date, :actual_endDate
  
  validates_presence_of :name, :description, :status, :project_id
  
  belongs_to :project
  
  acts_as_tree
  
end
