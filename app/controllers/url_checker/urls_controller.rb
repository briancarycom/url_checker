module UrlChecker
  class UrlsController < ApplicationController
    def check
      result = UrlChecker.check params[:url]

      respond_to do |format|
        format.json {
          render json: { success: result }
        }
      end
    end
  end
end