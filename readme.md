# work
基于archlinux镜像的docker容器工作环境。

### 生成环境
```bash
# XXX git用户名
# XXX@xxx.com git邮箱名
docker build \
  --build-arg NAME=XXX \
  --build-arg EMAIL=XXX@xxx.com \
  -t work .
```
