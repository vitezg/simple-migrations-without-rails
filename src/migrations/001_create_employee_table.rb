
#the class name must be the camelcased version of the filename
class CreateEmployeeTable <  ActiveRecord::Migration
  def up
    create_table :employee do |t|
      t.string :name
      t.integer :salary
    end
  end
 
  def down
    drop_table :employee
  end
end
