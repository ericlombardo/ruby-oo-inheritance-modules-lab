module Paramable # method that formats name
  def to_param
    name.downcase.gsub(' ','-')
  end
end