# config/initializers/redis.rb
$redis = Redis.new(url: 'redis://redis:6379')