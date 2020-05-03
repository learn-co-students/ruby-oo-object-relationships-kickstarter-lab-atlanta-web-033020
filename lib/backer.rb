require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select do |backed_proj|
            backed_proj.backer == self
        end
        backed_projects.collect { |backed_proj| backed_proj.project }
    end




end



