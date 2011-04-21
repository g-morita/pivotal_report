require('pivotal-tracker')

class PivotalReporter

  attr_accessor :connected

  def initialize(token, project_id)
    @token = token
    begin
      PivotalTracker::Client.token = token
      @project = PivotalTracker::Project.find(project_id)
      @connected = true
    rescue
      @connected = false
    end
  end
end
