require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['selected_goya']
  "<html>
    <body>
      <p>ゴーヤの品質が悪いもの（false）情報は下記になります</p>
      <strong>#{get}</strong>
    </body>
  </html>"
}