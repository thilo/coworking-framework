require 'digest/md5'
class Answer < ActiveRecord::Base
  attr_accessible :results
  validates_presence_of :results
  serialize :results
  before_save :generate_secret
  
  def generate_secret
    self.secret = Digest::MD5.hexdigest(results.to_s + Time.now.to_s)
  end
  
  def to_param
    self.secret
  end
end