require "administrate/base_dashboard"

class MovieDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    categories: Field::HasMany,
    mpaa_rating: Field::String,
    runtime: Field::Number,
    ratings: Field::HasMany,
    release_date: Field::DateTime,
    reviews: Field::HasMany,
    # reviewers: Field::HasMany.with_options(class_name: "User"),
    # movie_categories: Field::HasMany,
    synopsis: Field::Text,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :ratings,
    # :reviews,
    # :reviewers,
    # :movie_categories,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :mpaa_rating,
    :runtime,
    :release_date,
    :synopsis,
    :categories,
    :ratings,
    :reviews,
    # :reviewers,
    # :movie_categories,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :runtime,
    :mpaa_rating,
    :release_date,
    :ratings,
    :categories,
    :synopsis,
    :reviews,
    # :reviewers,
    # :movie_categories,
  ]

  # Overwrite this method to customize how movies are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(movie)
  #   "Movie ##{movie.id}"
  # end
end
