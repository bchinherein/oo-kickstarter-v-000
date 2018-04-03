class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless @backed_projects != self
  end

end #class Project
