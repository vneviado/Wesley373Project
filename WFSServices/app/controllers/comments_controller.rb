class CommentsController < ApplicationController 
    # GET /comments/new
    def new
        @comment = Comment.new
        unless params[:service_id].nil?
          @service = Service.find(params[:service_id])
        end
    end 
  
    def edit
        @comment = Comment.edit
    end
  
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            flash[:notice] = "Successfully added comment."
            redirect_to service_path(@comment.service)
        else
            @service = Service.find(params[:comment][:service_id])
            render action: 'new', locals: { service: @service }
        end
    end
  
    # DELETE /comments/1
    def destroy
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Never trust parameters from the scary internet, only allow the white list through.
      def comment_params
        params.require(:comment).permit(:content, :date_created, :service_id)
      end
  end
  