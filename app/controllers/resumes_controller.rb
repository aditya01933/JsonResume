require 'json'

class ResumesController < ApplicationController
	def index
		resume = Resume.new
		data = resume.show
		@resume = ResumeDecorator.new(data)
	end
end
