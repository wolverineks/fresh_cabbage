class Movie < ActiveRecord::Base
  include PgSearch
  validates :title, :mpaa_rating, :synopsis, :runtime, :release_date, presence: true
  has_many :ratings
  has_many :reviews
  has_many :reviewers, through: :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  scope :new_releases, -> { where("release_date < ?", DateTime.now).order(release_date: :desc).limit(10) }

  pg_search_scope :search, :against => [:title, :synopsis]


  def released?
    self.release_date < DateTime.now
  end

  def critic_ratings
    ratings.critic_ratings
  end

  def user_ratings
    ratings.user_ratings
  end

  def average_critic_rating
    ratings.average_critic_rating
  end

  def average_user_rating
    ratings.average_user_rating
  end
end
