class AnalyzeController < ApplicationController

	def create
		@video = Video.find(params[:video_id])
		@analyze = @video.analyzes.create(params[:analyze].permit(:file_location))
		redirect_to explore_path
	end

	def show

	end
end
