class Movie < ActiveRecord::Base
  include PgSearch
  extend FriendlyId
  serialize :omdb_json, JSON

  friendly_id :title, use: [:slugged, :finders]

  validates :title, :mpaa_rating, :synopsis, :runtime, presence: true
  has_many :ratings
  has_many :reviews
  has_many :reviewers, through: :reviews
  has_many :movie_categories
  has_many :categories, through: :movie_categories

  scope :new_releases, -> { where("release_date < ?", DateTime.now).order(release_date: :desc).limit(10) }

  scope :critically_acclaimed, -> { where.not(average_critic_rating: nil).order(average_critic_rating: :desc).limit(10) }

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

  def reset_average_critic_rating
    self.average_critic_rating = calculate_average_critic_rating
  end

  private

  def calculate_average_critic_rating
    critic_ratings.average(:value)
  end

  def average_user_rating
    user_ratings.average(:value)
  end
end
