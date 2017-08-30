class ForecastsController < ApplicationController

    def index

    end

    def show
        forecasts = Unirest.get("localhost:3000/forecasts.json").body
        @forecasts = forecasts.where(zip_code: params[:zip_code])
    end
end
