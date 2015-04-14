class AddEmailToEdumails < ActiveRecord::Migration
  def change
    add_column :edumails, :email, :string
  end
end
