require_relative 'load_api'

# change twitter user to get their tweets
def grab_user_tweets(user)
  tweets = @client.user_timeline(user, count: 20)
  tweets.each do |tweet|
    puts tweet.full_text
    line = tweet.full_text
    string = gets.chomp
    judge(string, line)
  end
end

def grab_topic_tweets(topic)
  
end

def judge(string, line)
  choice = string.downcase
  if choice == "p"
    positive(line)
  elsif choice == "n"
    negative(line)
  end
end

def positive(string)
  to_positive = File.open("pos.txt", "a+")
  input_pos = to_positive.puts(string)
  to_positive.close
end

def negative(string)
  to_negative = File.open("neg.txt", "a+")
  input_neg = to_negative.puts(string)
  to_negative.close
end
