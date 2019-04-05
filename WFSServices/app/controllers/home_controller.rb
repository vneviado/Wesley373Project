class HomeController < ApplicationController

    def index
    end

    def search
      redirect_back(fallback_location: home_path) if params[:query].blank?
      @query = params[:query]
      @services = Service.search(@query)
      @contacts = Contact.search(@query)
      @locations = Location.search(@query)
    end

  end