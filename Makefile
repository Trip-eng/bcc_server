LDFLAGS += $(shell pkg-config --libs json-c)
CFLAGS += $(shell pkg-config --cflags json-c)

OBJS = bcc_server.cpp sha1.cpp base64.cpp ws_protocol.cpp

all:
	g++ $(OBJS) -o bcc_server $(CFLAGS)  $(LDFLAGS) -lbcc -pthread
