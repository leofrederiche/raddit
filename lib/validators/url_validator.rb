class Link::UrlValidator < ActiveModel::Validator

  def validate(record)
    unless record.starts_with? "http://"
      record.errors[:url] << "Insira um link valido"
    end
  end

end