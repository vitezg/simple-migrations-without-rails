
#the class name must be the camelcased version of the filename
class AddEmployeeRole <  ActiveRecord::Migration
  def up
    change_table :employee do |t|
      t.string :role
    end
  end
 
  def down
    remove_column :employee, :role
  end
end
