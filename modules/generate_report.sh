#!/bin/bash

generate_report() {
    echo "=== 系统报告 ==="
    echo "系统时间: $(date)"
    echo "运行时间: $(uptime)"
    echo "用户信息:"
    who
    echo "磁盘使用情况:"
    df -h
    echo "内存信息:"
    free -h
    echo "$(date '+%F %T') INFO: 生成系统报告" >> "$LOG_FILE"
    echo "$(date '+%F %T') | 用户:$USER | 操作:生成系统报告" >> "$AUDIT_LOG"
}

