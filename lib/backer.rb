require_relative './project_backer'
require_relative './project'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer = ProjectBacker.all.select do |bp|
            bp.backer == self
        end
        backer.map do |backer|
            backer.project
        end
    end

end