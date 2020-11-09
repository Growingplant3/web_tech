require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['selected_goya']
  "<html>
    <body>
      <p>ゴーヤの譲渡先が自家消費ではないもの情報は下記になります</p>
      <strong>#{get}</strong>
    </body>
  </html>"
}