# ActsAsToken

This will create a random token number of a specific length
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acts_as_token'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_token

## Usage

class Articles < ActiveRecord::Base
  acts_as_token
  #it will generate a random number of 10 digit length and expecting column_name to be token_id
end

For creating specific column_name and length use as:
acts_as_token column_name: :article_token, length: 12

## Contributing

1. Fork it ( https://github.com/[my-github-username]/acts_as_token/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
