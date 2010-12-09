class Contact < ActiveRecord::Base
  attr_accessible :Name
  
  belongs_to :contactable, :polymorphic => true
  has_many :addresses, :as => :addressable
end
