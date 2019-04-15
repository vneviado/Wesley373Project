class CommentsController < ApplicationController
    # before_action :set_comment, only: [:create, :new]
  
    # GET /comments
    # def index
    #   @comments = Comments.all
    # end
  
    # GET /comments/1
    # def show
    # end
  
    # GET /comments/new
    def new
        @comment = Comment
        unless params[:service_id].nil?
            @service = Service.find([:service_id])
        end
    end 
  
    def edit
        @comment = Comment.edit
    end
  
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            # flash[:notice] = "Successfully added comment."
            redirect_to service_path(@comment.service)
        else
            @service = Service.find([:service_id])
            render action: 'new', locals: { service: @service }
        end
    end
  
    # PATCH/PUT /comments/1
    # def update
    #   respond_to do |format|
    #     if @comment.update(comment_params)
    #       format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
    #       format.json { render :show, status: :ok, location: @comment }
    #     else
    #       format.html { render :edit }
    #       format.json { render json: @comment.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end
  
    # DELETE /comments/1
    def destroy
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
    #   def set_comment
    #     @service = Service.find(params[:service_id])
    #     # @comment = Comment.find(params[:id])
    #   end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def comment_params
        params.require(:comment).permit(:content, :date_created, :service_id)
      end
  end
  