class VersionController < ApplicationController
  def index
    @application_version = ENV['APPLICATION_VERSION']
  end
end
