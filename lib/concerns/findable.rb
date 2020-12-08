module Findable # module that finds name using self.class.all return
  
  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
end