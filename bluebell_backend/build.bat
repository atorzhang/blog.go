echo "设置环境"
set  GOARCH=amd64
set  GOOS=linux
set  CGO_ENABLED=0
set  GOEXPERIMENT=loopvar

REM 删除本地旧文件(%~dp0是获取绝对路径)：
set FILE_PATH=bin/blog.ubuntu
if exist %FILE_PATH% (
del /f %FILE_PATH%
)

echo "blog.ubuntu"
go build -ldflags "-s -w" -o bin/blog.ubuntu main.go
:: 版本号从Build\.env 这个文件里找变量 FJRH_School_Ctrl_Ver，并变更在下面的：后面
docker build -t blog:1.0.0 .