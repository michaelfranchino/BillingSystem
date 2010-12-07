class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer     :parent_id
      t.integer     :position
      t.string      :name,         :null => false, :limit => 60
      t.text        :description  
      t.integer     :status,       :null => false
      
      t.references  :projects

      t.string      :reference,    :limit => 20

      t.date        :planned_start_date
      t.date        :actual_start_date
      t.date        :planned_end_date
      t.date        :actual_end_date
      t.integer     :duration
      t.string      :duration_type
      t.integer     :perc_complete
      
      t.integer     :priority
      t.boolean     :notif_email
      
      t.timestamps
    end
    
  end

  def self.down
    drop_table :tasks
  end
end
