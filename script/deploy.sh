# /bin/bash

# 确保脚本抛出遇到的错误
set -e

# 重新打包组件库

npm run  build

# 打包生成静态文件
npm run  docs:build

# 进入待发布的 dist/ 目录
cd docs/.vitepress/dist

git init
git add .
git commit -m 'deploy'

# 部署到 https://.github.io/https://github.com/Z-Sir001/docs_books.git
git push -f git@github.com/Z-Sir001/docs_books.git master

# 提交所有代码到github
cd ../../../
git add .
git cm -m 'update'
git push
