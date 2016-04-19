class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :username, { uniqueness: true, presence: true }

  # has_many :ratingsreviewer
  has_many :reviews
  has_many :comments

end
