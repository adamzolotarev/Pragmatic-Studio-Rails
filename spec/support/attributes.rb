def review_attributes(overrides = {})
  {
    name: 'Roger Ebert',
    stars: 3,
    comment: 'I laughed, I cried, I spilled my popcorn!'
  }.merge(overrides)
end

def user_attributes(overrides = {})
  {
    name: 'Example User',
    email: 'user@example.com',
    password: 'secret',
    password_confirmation: 'secret'
  }.merge(overrides)
end
