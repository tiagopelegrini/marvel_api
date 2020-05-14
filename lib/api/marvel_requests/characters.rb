require_relative './structure_requests.rb'

class Characters < StructureRequests
    def get_characters(qtd_characters = 5)
        uri = "#{$env["base_uri"]}/v1/public/characters?limit=#{qtd_characters}&ts=#{$env["ts"]}&apikey=#{$env["apikey"]}&hash=#{$env["hash"]}"
        get_request('get', uri)
    end

    def get_one_character(charac_id)
        uri = "#{$env["url"]}/v1/public/characters/#{charac_id}?ts=#{$env["ts"]}&apikey=#{$env["apikey"]}&hash=#{$env["hashe"]}"
        get_request('get', uri)
    end

    def get_comics(charac_id)
        uri = "#{$env["url"]}/v1/public/characters/#{charac_id}/comics?ts=#{$env["ts"]}&apikey=#{$env["apikey"]}&hash=#{$env["hashe"]}"
        get_request('get', uri)
    end
end