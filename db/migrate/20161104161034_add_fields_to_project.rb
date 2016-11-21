class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :start_date, :date
    add_column :projects, :name, :string
    add_column :projects, :description, :string
    add_column :projects, :string, :string
    add_column :projects, :volunteer_capacity, :int
    add_column :projects, :volunteers, :int
    add_column :projects, :location, :string
  end
end
