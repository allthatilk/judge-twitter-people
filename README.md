Judge-Twitter-People

### Installation instructions

* git clone https://github.com/allthatilk/judge-twitter-people.git
* Run bundle
* touch lib/load_api.rb
* In lib/load_api.rb
    * Include:

require ‘twitter’
```
def load_api
 @client = Twitter::REST::Client.new do |config|
   config.consumer_key = “YOUR_API_KEY”
   config.consumer_secret = “YOUR_API_SECRET”
   config.access_token = “YOUR_TOKEN”
   config.access_token_secret = “YOUR_TOKEN_SECRET”
 end
end
```

## Summary

This app when loaded via pry or irb will provide the tweets of a given user and allow you to judge whether they are positive or negative and push them to the relevant file.

## Future improvements

Access latest tweets from random users or allow to specify user via method without having to reload your REPL.
