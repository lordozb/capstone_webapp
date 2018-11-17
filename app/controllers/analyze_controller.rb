class AnalyzeController < ApplicationController

	def index

	end

	def create
		@video = Video.find(params[:video_id])
		@analyze = @video.analyzes.create(params[:analyze].permit(:file_location))
		redirect_to video_analyze_path(@video,@analyze)
	end

	def show	
		@analyze = Analyze.find(params[:id])
		`python ./public/scripts/plot.py ./public#{@analyze.file_location.url} ./public/data/#{@analyze[:video_id]}/data.txt`

	end
end
