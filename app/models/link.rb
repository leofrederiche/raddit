class Link < ActiveRecord::Base
  
  validates_presence_of :url, :title
  validate :validate

  def validate
    unless url.starts_with? "http://"  or  url.starts_with? "https://"
      errors.add(:url, "Insira um link valido.")
    end
  end
  
end
