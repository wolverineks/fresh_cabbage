class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :username, { uniqueness: true, presence: true }
  has_many :ratings
  has_many :reviews, foreign_key: :reviewer
  has_many :comments


  def admin?
  	role == "admin"
  end

  def critic?
  	role == "critic"
  end

  def user?
  	role == "user"
  end

end
