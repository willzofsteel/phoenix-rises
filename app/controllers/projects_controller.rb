require 'json'
require 'net/http'

class ProjectsController < ApplicationController
	def new
	end

	def create
		@project = Project.new(project_params)
		@project.save

		redirect_to @project
	end

	def show
		@project = Project.find(params[:id])
		@current_build_status = get_status
		puts @current_build_status
	end

	private
	def get_status

		uri = URI('http://localhost:8080/job/phoenix_rises/lastBuild/api/json?pretty=true')
    	res = Net::HTTP.get_response(uri)

    	build = res.is_a?(Net::HTTPSuccess) ? JSON.parse(res.body, { :symbolize_names => true }) : {}

    	status = if build[:building]
    						"PENDING"
    					else
    						build[:result]
    					end
	end

	def project_params
		params.require(:project).permit(:title, :ci_location, :repo_location)
	end
end
