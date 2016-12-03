require 'pry'
class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end
def add_backer(backer)
  backers << backer
  #backer.backed_projects << self
  if backer.backed_projects.include?(self) == false
     backer.backed_projects << self    
  end
end


end