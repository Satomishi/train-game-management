class User < ApplicationRecord
  has_many :collections, dependent: :destroy
  has_many :owned_games, through: :collections, source: :games

  validates :nickname, presence: true
  validates :nickname, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
