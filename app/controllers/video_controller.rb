class VideoController < ApplicationController
	
	protect_from_forgery with: :null_session

	def getStarted
	end

	def explore
		@videos = Video.all
	end

	def index
	end

	def analyze
		@video = Video.find(params[:id])
	end

	def new
		@video = Video.new
	end

	def show
		@video = Video.find(params[:id])
	end

	def duration
		@video = Video.find(params[:id].to_i)
		render plain: @video[:duration]
	end

	def acknowledge
		@file = params[:id].to_s
		@id = params[:id].to_i
	end

end
