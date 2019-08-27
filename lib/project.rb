class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backers.back_project(self) << self
  end
end
title = title.new("Project With So Much Amaze")
