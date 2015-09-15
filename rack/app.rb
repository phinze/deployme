require 'rack'
require 'facter'
require 'pp'

class App
  def call(env)
    [
      200,
      {"Content-Type" => "text/html"},
      [<<-HELLO
<h1>Hello Rack!</h1>
<p>Here's some info about the computer I'm running on:</p>
<pre>
#{PP.pp(Facter.to_hash, '')}
</pre>
      HELLO
 ]
]
  end
end
