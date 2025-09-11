#!/bin/bash
# build.sh
# 批量生成 HTML 页面

# 要处理的 jemdoc 文件（去掉后缀）
pages=("index" "awards" "publications" "services")

for p in "${pages[@]}"; do
    echo "Processing $p.jemdoc ..."
    python2 jemdoc.py "$p.jemdoc"
done

echo "All pages generated successfully!"
