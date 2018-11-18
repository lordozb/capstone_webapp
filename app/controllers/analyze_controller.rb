class AnalyzeController < ApplicationController

	def index
		@video = Video.all
	end

	def create
		begin
			@video = Video.find(params[:video_id])
			@analyze = @video.analyzes.create(params[:analyze].permit(:file_location))
			redirect_to video_analyze_path(@video,@analyze)
		rescue => error
			redirect_to @video
		end
	end

	def show	
		@analyze = Analyze.find(params[:id])
		`python ./public/scripts/plot.py ./public#{@analyze.file_location.url} ./public/data/#{@analyze[:video_id]}/data.txt #{@analyze[:video_id]}`
	end
end
