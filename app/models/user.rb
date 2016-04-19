class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :username, { uniqueness: true, presence: true }
  has_many :ratings
  has_many :reviews, foreign_key: :reviewer_id
  has_many :likes

  scope :critics, ->{ where(role: 'critic') }
  scope :admins, ->{ where(role: 'admin') }
  scope :users, ->{ where(role: 'user') }

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
