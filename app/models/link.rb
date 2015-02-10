class Link < ActiveRecord::Base
  
  validates_presence_of :url, :title
  validate :validate_link_format

  has_many :link_comments, class_name: Comment, foreign_key: :id_link

  acts_as_votable

  def validate_link_format
    unless url.starts_with? "http://"  or  url.starts_with? "https://"
      errors.add(:url, "Insira um link valido.")
    end
  end
  
end
