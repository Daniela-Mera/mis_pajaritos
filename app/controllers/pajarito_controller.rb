class PajaritoController < ApplicationController

    def index 
        response = RestClient::Request.new(
            :method => :get,
            :url => "https://aves.ninjas.cl/api/birds"
        ).execute

        @resultado = JSON.parse(response)
        @paginacion = Kaminari.paginate_array(@resultado).page(params[:page]).per(6)
    end


    def detalle 
        @uid = params[:uid]
        
        RestClient.get("https://aves.ninjas.cl/api/birds/#{@uid}") { |response, request, result|
            if response.code ==  200
                @resultado = JSON.parse(response)
            else
                @resultado = "No hay resultados"
            end
        }

    end

    def vertodas 
        response = RestClient::Request.new(
            :method => :get,
            :url => "https://aves.ninjas.cl/api/birds"
        ).execute

        @resultado = JSON.parse(response)

    end

end
