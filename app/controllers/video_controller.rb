class VideoController < ApplicationController
	
	protect_from_forgery with: :null_session

	def getStarted
	end

	def explore
		@videos = Video.all
	end

	def index
	end

	def new
		@video = Video.new
	end

	def show
		@video = Video.find(params[:id])
	end

	def duration
		if Video.exists?(:id => params[:id].to_i)
			@video = Video.find(params[:id].to_i)
			response = @video[:duration].to_s+","+@video[:title].to_s
			render plain: response
		else
			render plain: "-1,-1"
		end
	end

end
