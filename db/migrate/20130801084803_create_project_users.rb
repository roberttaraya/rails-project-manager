class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.references :project, index: true
      t.references :user, index: true
      t.integer :role, default: 1 

      t.timestamps
    end
  end
end


# same as below: 

# class CreateProjectUsers < ActiveRecord::Migration
#   def change
#     create_table :project_users do |t|
#       t.integer :user_id
#       t.integer :project_id
#       t.integer :role

#       t.timestamps
#     end

#     add_index :project_users, :user_id
#     add_index :project_users, :project_id
#   end
# end
