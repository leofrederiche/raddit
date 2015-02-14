class Link < ActiveRecord::Base

  include ActiveModel::Validations
  attr_accessor :url

  has_many :link_comments, class_name: Comment, foreign_key: :id_link
  
  acts_as_votable

  validates_presence_of :url, :title
  validates_url :url, :allow_blank => true
  
end
