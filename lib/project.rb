class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select { |project_backer| project_backer.project == self }
        project_backers.map { |project_backer| project_backer.backer }
    end
end