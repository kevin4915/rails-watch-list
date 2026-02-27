module ApplicationHelper
  def render_stars(rating)
  return "" unless rating.present?

  full_stars  = "★" * rating
  empty_stars = "★" * (5 - rating)

  content_tag(:span, style: "font-size: 1.2rem;") do
    safe_join([
      content_tag(:span, full_stars, style: "color: #ffc107;"),
      content_tag(:span, empty_stars, style: "color: #e4e5e9;")
    ])
  end
  end
end
