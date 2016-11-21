class AddFieldsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :phone, :int
  	add_column :users, :zip, :int
  	add_column :users, :location, :string
  	# languages
  	add_column :users, :lang1, :string
  	add_column :users, :lang1_fluency, :string
  	add_column :users, :lang2, :string
  	add_column :users, :lang2_fluency, :string
  	# availability
  	add_column :users, :time_commitment, :string

  	add_column :users, :sunday_availability, :string
  	add_column :users, :monday_availability, :string
  	add_column :users, :tuesday_availability, :string
  	add_column :users, :wednesday_availability, :string
  	add_column :users, :thursday_availability, :string
  	add_column :users, :friday_availability, :string
  	add_column :users, :saturday_availability, :string

  	add_column :users, :availability_comments, :string

  end
end