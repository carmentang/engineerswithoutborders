class AddCertificationsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :certifications, :string
  end
end
