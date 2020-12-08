module Memorable
  module ClassMethods   # nested class methods
    def reset_all       # call by extend Memorable::ClassMethods
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods  # nested instance methods 
    def initialize        # call by include Memorable::InstanceMethods
      self.class.all << self
    end
  end
end