class Project < ActiveRecord::Base
  attr_accessible :name, :description, :reference, :status, :type, :client_id, :planned_start_date, :planned_end_date, :actual_start_date, :actual_endDate
  
  validates_presence_of :name, :description, :status, :client_id
  
  belongs_to :client
  
end
