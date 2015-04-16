class AddParamsToEdumails < ActiveRecord::Migration
  def change
    add_column :edumails, :nr_albumu, :int
    add_column :edumails, :rok_nauczenia, :int
    add_column :edumails, :faculty, :string
    add_column :edumails, :imie, :string
    add_column :edumails, :nazwisko, :string
  end
end
