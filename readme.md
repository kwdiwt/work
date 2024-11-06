# 工作环境
基于archlinux的docker容器

### 一键生成容器 
```bash
# XXX git用户名
# XXX@xxx.com git邮箱名
docker build --build-arg NAME=XXX --build-arg EMAIL=XXX@xxx.com -t work --output . .
```