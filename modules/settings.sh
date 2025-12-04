#!/bin/bash

settings() {
    echo "1. 修改日志路径"
    echo "2. 修改备份目录"
    read -p "请选择操作: " opt
    case $opt in
        1)
            read -p "请输入新日志路径: " newlog
            LOG_FILE=$newlog
            echo "日志路径已修改为 $LOG_FILE"
            echo "$(date '+%F %T') | 用户:$USER | 操作:修改日志路径 -> $LOG_FILE" >> "$AUDIT_LOG"
            ;;
        2)
            read -p "请输入新备份目录: " newbak
            BACKUP_DIR=$newbak
            mkdir -p $BACKUP_DIR
            echo "备份目录已修改为 $BACKUP_DIR"
            echo "$(date '+%F %T') | 用户:$USER | 操作:修改备份目录 -> $BACKUP_DIR" >> "$AUDIT_LOG"
            ;;
        *)
            echo "无效选项"
            ;;
    esac
    echo "$(date '+%F %T') INFO: 修改设置" >> "$LOG_FILE"
}

