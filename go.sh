# krew bootstrapping (the krew plugin itself), is in krew.sh
go get -v -u github.com/golangci/golangci-lint/cmd/golangci-lint
go get -v -u github.com/linuxkit/linuxkit/src/cmd/linuxkit # is a brew tap but it's way out of date
go get -v -u sigs.k8s.io/kind
go get -v -u github.com/mattolenik/hclq
go get -v -u github.com/nitishm/engarde
GO111MODULE=on go get -v golang.org/x/tools/gopls@latest # no -u
