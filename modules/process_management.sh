#!/bin/bash

process_management() {
    echo "=== 当前进程列表 ==="
    ps -ef | head -20
    read -p "输入要终止的 PID (Enter跳过): " pid
    if [[ -n $pid ]]; then
        kill -9 $pid && echo "进程 $pid 已终止"
        echo "$(date '+%F %T') INFO: 终止进程 $pid" >> "$LOG_FILE"
        echo "$(date '+%F %T') | 用户:$USER | 操作:终止进程 $pid" >> "$AUDIT_LOG"
    fi
}

