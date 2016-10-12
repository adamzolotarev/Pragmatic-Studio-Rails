require 'rails_helper'

describe 'A movie' do
  it 'is a flop if the total gross is less than $50M' do
    movie = Movie.new(total_gross: 40_000_000.00)

    expect(movie.flop?).to eq(true)
  end

  it 'is a flop if the total gross is blank' do
    movie = Movie.new(total_gross: nil)

    expect(movie.flop?).to eq(true)
  end
end