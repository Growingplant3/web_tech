require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}
server.mount('/search', WEBrick::HTTPServlet::ERBHandler, 'search.html.erb')
server.mount('/self_consumption.cgi', WEBrick::HTTPServlet::CGIHandler, 'self_consumption.rb')
server.mount('/bad_quality.cgi', WEBrick::HTTPServlet::CGIHandler, 'bad_quality.rb')
server.start