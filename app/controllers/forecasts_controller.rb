class ForecastsController < ApplicationController

    def show
        @forecast = Unirest.get("localhost:3000/forecasts/#{params[:id]}").body   
    end
end
