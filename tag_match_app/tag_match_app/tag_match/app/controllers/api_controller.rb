

class ApiController < ApplicationController
    def index
        @apis = NayoseApi.all
        render json: {staus: 200,data: @apis}
    end
end
