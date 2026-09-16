#!/usr/bin/env bash
# 批量生成 HTML 页面
set -euo pipefail

cd "$(dirname "$0")"

if ! command -v python3 >/dev/null 2>&1; then
    echo "Error: Python 3 is required to build this site." >&2
    exit 1
fi

# 要处理的 jemdoc 文件（去掉后缀）
pages=("index" "awards" "publications" "services")

for p in "${pages[@]}"; do
    echo "Processing $p.jemdoc ..."
    python3 jemdoc.py "$p.jemdoc"
done

echo "All pages generated successfully!"
