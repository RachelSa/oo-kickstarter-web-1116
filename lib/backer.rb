class Backer

attr_reader :name
attr_accessor :backed_projects

def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(project)
backed_projects << project
if project.backers.include?(self) == false
 project.backers << self
  end
end


end