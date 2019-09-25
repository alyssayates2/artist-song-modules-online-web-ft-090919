module Memorable
include Song 
include Artist  

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
  
end
