class Project
  attr_reader :title
  
  def initialize(title)
    @title = title
  end
  
  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end 
  
  def backers
    ProjectBacker.all.find_all do |each_backer|
      each_backer.project == self
        project_backers.map do |pb|
          pb.backer
        end
      end
  end
  
end