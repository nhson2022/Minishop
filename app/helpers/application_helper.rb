module ApplicationHelper
  def category_select_options
    Category.all.map { |c| [c.name, c.id] }
  end
end
