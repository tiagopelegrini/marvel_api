class StructureRequests
    def get_request(method, uri)
        response = HTTParty.send(method, uri,
            :headers => {"Content-Type" => "application/json"}
            )
        return response        
    end
end