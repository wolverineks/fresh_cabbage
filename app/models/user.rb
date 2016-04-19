class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :username, { uniqueness: true, presence: true }
  has_many :ratings
  has_many :reviews, foreign_key: :reviewer
  has_many :comments

  scope :critics, ->{ where(role: 'critic') }
  scope :admins, ->{ where(role: 'admin') }
  scope :users, ->{ where(role: 'user') }

  def is_admin?
  	self.role == "admin"
  end

  def is_critic?
  	self.role == "critic"
  end

  def is_user?
  	self.role == "user" || self.role == nil
  end

end
