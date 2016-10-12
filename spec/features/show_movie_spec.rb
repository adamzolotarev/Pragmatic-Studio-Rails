require 'rails_helper'

describe 'Viewing an individual movie' do
  it 'Shows the movie details' do
    movie = Movie.create(movie_attributes(total_gross: 318_412_101))

    visit movie_url(movie)

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
  end

  it 'shows the total gross if the total gross exceeds $50M' do
    movie = Movie.create(movie_attributes(total_gross: 600_000_000.00))

    visit movie_url(movie)

    expect(page).to have_text('$600,000,000.00')
  end

  it 'shows "Flop!" if the total gorss is less than $50M' do
    movie = Movie.create(movie_attributes(total_gross: 40_000_000))

    visit movie_url(movie)

    expect(page).to have_text('Flop!')
  end
end