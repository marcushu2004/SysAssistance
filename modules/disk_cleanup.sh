#!/bin/bash

disk_cleanup() {
    echo "清理 /tmp 中的文件..."
    sudo rm -rf /tmp/* && echo "清理完成"
    echo "$(date '+%F %T') INFO: 清理 /tmp" >> "$LOG_FILE"
    echo "$(date '+%F %T') | 用户:$USER | 操作:清理 /tmp 文件" >> "$AUDIT_LOG"
}

