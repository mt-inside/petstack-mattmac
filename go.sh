go get -u golang.org/x/tools/... # godoc et al

# krew bootstrapping (the krew plugin itself), is in krew.sh
go get -v -u github.com/golangci/golangci-lint/cmd/golangci-lint
go get -v -u github.com/linuxkit/linuxkit/src/cmd/linuxkit # is a brew tap but it's way out of date
go get -v -u sigs.k8s.io/kind
go get -v -u github.com/mattolenik/hclq
go get -v -u github.com/nitishm/engarde
go get -v golang.org/x/tools/gopls@latest # no -u - why?
go get -v -u github.com/docker/hub-tool
go get -v -u github.com/erning/gorun

# vim-go deps, as per :GoInstallBinaries (plugin/go.vim), as of Jan '21
go get -u -v github.com/klauspost/asmfmt/cmd/asmfmt
go get -u -v github.com/go-delve/delve/cmd/dlv
go get -u -v github.com/kisielk/errcheck
go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
go get -u -v github.com/mdempsky/gocode
go get -u -v github.com/stamblerre/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/zmb3/gogetdoc
go get -u -v golang.org/x/tools/cmd/goimports
go get -u -v golang.org/x/lint/golint
go get -u -v golang.org/x/tools/gopls@latest
go get -u -v github.com/golangci/golangci-lint/cmd/golangci-lint
go get -u -v github.com/fatih/gomodifytags
go get -u -v golang.org/x/tools/cmd/gorename
go get -u -v github.com/jstemmer/gotags
go get -u -v golang.org/x/tools/cmd/guru
go get -u -v github.com/josharian/impl
go get -u -v honnef.co/go/tools/cmd/keyify
go get -u -v github.com/fatih/motion
go get -u -v github.com/koron/iferr
