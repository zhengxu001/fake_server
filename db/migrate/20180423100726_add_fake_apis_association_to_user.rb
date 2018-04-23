class AddFakeApisAssociationToUser < ActiveRecord::Migration[5.1]
  def change
  	add_reference :fake_apis, :user
  end
end
