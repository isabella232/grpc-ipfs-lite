test:
	go test github.com/textileio/grpc-ipfs-lite/server

ios:
	rm -rf ~/go/src/github.com/textileio/grpc-ipfs-lite
	mkdir -p ~/go/src/github.com/textileio
	cp -r $(PWD) ~/go/src/github.com/textileio/grpc-ipfs-lite
	go get golang.org/x/mobile/cmd/...
	go mod vendor
	export GO111MODULE=off
	env go111module=off gomobile bind -ldflags -v -target=ios github.com/textileio/grpc-ipfs-lite/mobile

android:
	rm -rf ~/go/src/github.com/textileio/grpc-ipfs-lite
	mkdir -p ~/go/src/github.com/textileio
	cp -r $(PWD) ~/go/src/github.com/textileio/grpc-ipfs-lite
	go get golang.org/x/mobile/cmd/...
	go mod vendor
	export GO111MODULE=off
	env go111module=off gomobile bind -ldflags -v -target=android -o mobile.aar github.com/textileio/grpc-ipfs-lite/mobile
	