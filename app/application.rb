class Application
    def call(evn)
        resp = Rack::Response.new

        time = Time.now.hour

        if time > 12
            resp.write "Good Afternoon"
        else
            resp.write "Good Morning"
        end

        resp.finish
    end

end