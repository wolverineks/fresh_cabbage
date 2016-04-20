module CategoriesHelper
  def top_categories
    @top_categories ||= Category.first(5)
  end
end
