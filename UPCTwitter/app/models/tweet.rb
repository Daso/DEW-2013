class Tweet < ActiveRecord::Base
  
  Twitter.configure do |config|
    config.consumer_key = 'VXZCK1w2BpERLGJPeLueig'
    config.consumer_secret = 'SD6RPNoSbBNsJSCfAB7eVIk7M2SgUodorQeRq4TI1E'
    config.oauth_token = '344334932-QveQmkQFEGd1Iw6HxdBYVxk8PCCDHgYDsP8wtBxs'
    config.oauth_token_secret = '5yaXJHltED07u0LGnCTDP3n5nPSPOntD6RryutKT6s'
  end

  def read_text
    return "sin status" if self.status.blank?
    Twitter.status(self.status).text
  end
  
  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end

  def update_status
    return "sin update" if self.status.blank?
    Twitter.update(self.status)
  end
end
