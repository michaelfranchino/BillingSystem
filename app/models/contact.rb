class Contact < ActiveRecord::Base
  validates_presence_of :name, :title, :first_name, :last_name
  
  belongs_to :contactable, :polymorphic => true
end
