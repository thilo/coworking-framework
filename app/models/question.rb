class Question < ActiveRecord::Base
  attr_accessible :content
  belongs_to :section
  validates_presence_of :content, :section_id
end