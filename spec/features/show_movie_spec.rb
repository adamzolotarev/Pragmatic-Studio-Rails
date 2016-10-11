require 'rails_helper'

describe 'Viewing an individual movie' do
  it 'Shows the movie details' do
    movie = Movie.create(movie_attributes(total_gross: 318_412_101))

    visit movie_url(movie)

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text('$318,412,101.00')
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
  end
end
