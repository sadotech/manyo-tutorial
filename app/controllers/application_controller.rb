class ApplicationController < ActionController::Base
  def tasks
    render html: "tasks"
  end
end
