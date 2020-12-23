class Api::V1::RecordingsController < ApplicationController

    def index
        @recordings = Recording.all
        #allows us to render all notes in json 
        render json: @recordings
      end
    
      def update
        @recordings.update(recording_params)
        if @recording.save
          render json: @recording, status: :accepted
        else
          render json: { errors: @recording.errors.full_messages }, status: :unprocessible_entity
        end
      end
    
      private
    
      #created new note instances 
      def recording_params
        params.permit(:title, :melody)
      end
    
      def find_recording
        @recording = Recording.find(params[:id])
      end
end
