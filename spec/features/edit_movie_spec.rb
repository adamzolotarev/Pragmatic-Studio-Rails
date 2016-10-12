require 'rails_helper'

describe 'Editing a movie' do
  it "updates the movie and shows the movie's updated details" do
    movie = Movie.create(movie_attributes(total_gross: 300_000))

    visit movie_url(movie)

    click_link 'Edit'

    expect(current_path).to eq(edit_movie_path(movie))

    expect(find_field('Title').value).to eq(movie.title)
    expect(find_field('Description').value).to eq(movie.description)
    expect(find_field('Rating').value).to eq(movie.rating)
    # expect(find_field('Released').value).to eq(movie.released_on)
    expect(find_field('Total gross').value).to eq('300000.0')
  end
end
