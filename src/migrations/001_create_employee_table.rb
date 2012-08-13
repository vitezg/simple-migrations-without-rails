
#notice the file name and the class name
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
