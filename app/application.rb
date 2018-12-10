class Application
    def call(evn)
        resp = Rack::Response.new

        time = Time.now.hour

        if time > 12
            resp.write "Good morning"
        else
            resp.write "Good afternoon"
        end

        resp.finish
    end

end