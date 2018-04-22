class CreateFakeApis < ActiveRecord::Migration[5.1]
  def change
    create_table :fake_apis do |t|
      t.string :method
      t.string :uri
      t.string :response

      t.timestamps
    end
  end
end
