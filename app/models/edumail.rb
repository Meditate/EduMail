class Edumail < ActiveRecord::Base
  belongs_to :user
  validates :imie, presence: true
  validates :nazwisko, presence: true
  validates :nr_albumu, presence: true
  validates :faculty, presence: true
  validates :rok_nauczenia, presence: true
end
