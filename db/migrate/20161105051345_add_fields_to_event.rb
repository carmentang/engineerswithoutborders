class AddFieldsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :description, :string
    add_column :events, :start_time, :date
    add_column :events, :end_time, :date
    add_column :events, :location, :string
    add_column :events, :repeats, :boolean
    add_column :events, :days, :string
  end
end
