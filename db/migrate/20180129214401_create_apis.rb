class CreateApis < ActiveRecord::Migration[5.1]
  def change
    create_table :apis do |t|
      t.string :action
      t.string :uri
      t.integer :status
      t.string :response

      t.timestamps
    end
  end
end
