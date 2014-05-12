This is a vanilla Rails 4.1 application, demonstrating that handling of chunked
requests is incorrect.

    > curl -X POST -H 'Content-Type: application/json' -H 'Transfer-encoding: chunked' -d '{"a":"b"}' http://localhost:3000/ && echo
    {"controller":"application","action":"testing","application":{}}

    # Uncomment git source for rails in Gemfile
    # This is the expected output
    > curl -X POST -H 'Content-Type: application/json' -H 'Transfer-encoding: chunked' -d '{"a":"b"}' http://localhost:3000/ && echo
    {"a":"b","controller":"application","action":"testing","application":{"a":"b"}}
