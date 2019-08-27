class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backers)
    @backers << backers
    backers.back_project(self) unless backers.backed_projects.include?(self)
  end
end
title = title.new("Project With So Much Amaze")
