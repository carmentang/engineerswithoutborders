class AddHoursToProject < ActiveRecord::Migration
  def change
    add_column :projects, :hours_per_week, :integer
  end
end
