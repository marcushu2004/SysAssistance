#!/bin/bash

monitor_system() {
    echo "=== CPU 信息 ==="
    lscpu
    echo "=== 内存信息 ==="
    free -h
    echo "=== 磁盘使用情况 ==="
    df -h
    echo "=== 系统运行时间 ==="
    uptime
    echo ""
    echo "$(date '+%F %T') INFO: 查看系统信息" >> "$LOG_FILE"
    echo "$(date '+%F %T') | 用户:$USER | 操作:查看系统信息" >> "$AUDIT_LOG"
}

