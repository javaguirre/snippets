class SnippetsController < ApplicationController
    def index
        @snippets = Snippet.all

        respond_to do |format|
            format.html
            format.json  { render :json => @snippets }
        end
    end

    def show
        id = params[:id]
        @snippet = Snippet.find_by_id id

        respond_to do |format|
            format.html
            format.json  { render :json => @snippet }
        end
    end
end
