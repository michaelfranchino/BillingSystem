class Contact < ActiveRecord::Base
  belongs_to :contactable, :polymorphic => true
  has_many :addresses, :as => :addressable
end
