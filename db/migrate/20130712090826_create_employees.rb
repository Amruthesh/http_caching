class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.hstore :salary

      t.timestamps
    end
  end
end
