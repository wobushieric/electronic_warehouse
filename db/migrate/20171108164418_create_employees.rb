class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :job_title
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
