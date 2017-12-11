class User < ActiveRecord::Base
  profanity_filter :name
end
