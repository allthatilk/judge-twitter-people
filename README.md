Judge-Twitter-People

## No Longer Needed

This mini app is no longer needed as we found another way to gather large amounts of catagorised data for our machine learning project. No further updates will be made to this repo.

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

Call the load_api method and then grab_tweets(insert_your_user_id_without_'@'here). This will show a tweet and await your input. Type 'p' for positive and 'n' for negative to assign the tweet to the relevant file.




