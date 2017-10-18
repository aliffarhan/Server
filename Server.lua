socket = require('socket')
port = 6066
server = socket.bind('*', port)
io.write("Listening to port "..port.."\n")
svr = server:accept()
io.write("Connection Succesful!\n")
while true do
	msg = svr:receive()
	io.write(msg.."\n")
	io.write("Server respond > ")
	svr:send(io.read().."\n")
end
io.read()
