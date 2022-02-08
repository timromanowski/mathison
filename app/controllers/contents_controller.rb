class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :update, :destroy]

  # GET /contents
  def index
    @contents = Content.arrange
    render json: Content.json_tree(@contents)
  end

  # GET /contents/1
  def show
    render json: @content.subtree.arrange_serializable.to_json
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def content_params
      params.fetch(:content, {})
    end
end
