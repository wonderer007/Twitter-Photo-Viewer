class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|

      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.access_token = auth["credentials"]["token"]
      user.access_secret = auth["credentials"]["secret"]

    end
  end

end