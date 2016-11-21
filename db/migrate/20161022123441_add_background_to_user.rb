class AddBackgroundToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :int
    add_column :users, :education, :string
    add_column :users, :expertise, :string
  end
end
