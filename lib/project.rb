require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |backed_proj|
            backed_proj.project == self
        end
        backers.map { |backed_proj| backed_proj.backer }
    end





end




