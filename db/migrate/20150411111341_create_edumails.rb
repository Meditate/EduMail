class CreateEdumails < ActiveRecord::Migration
  def change
    create_table :edumails do |t|
      t.references :user, index: true
      t.string :status
      t.string :edu_mail
      t.string :edu_password

      t.timestamps null: false
    end
    add_foreign_key :edumails, :users
  end
end
