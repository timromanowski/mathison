class PagesController < ApplicationController
  before_action :set_page, only: [:show, :update, :destroy]

  # GET /pages
  def index
    @pages = Page.arrange

    render json: Page.json_tree(@pages)
  end

  # GET /pages/1
  def show
    content = Content.tagged_with(@page.tag_list).arrange
    render json: @page.as_json(include: :header).merge(:content => Content.json_tree(content))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.fetch(:page, {})
    end
end
