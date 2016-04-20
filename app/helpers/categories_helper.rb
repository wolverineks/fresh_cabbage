module CategoriesHelper
  def top_categories
    @top_categories ||= Category.first(10)
  end
end
