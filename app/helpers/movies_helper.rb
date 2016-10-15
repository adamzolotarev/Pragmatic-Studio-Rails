module MoviesHelper
  def format_total_gross(movie)
    if movie.flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.total_gross)
    end
  end

  def image_for(movie)
    return image_tag(movie.image_file_name) unless movie.image_file_name.blank?
    image_tag('placeholder.png')
  end
end
