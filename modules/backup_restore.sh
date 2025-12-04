#!/bin/bash

backup_restore() {
    read -p "输入要备份的目录: " dir
    filename="backup_$(date '+%Y%m%d_%H%M%S').tar.gz"
    tar -czf $BACKUP_DIR/$filename $dir && echo "备份完成: $BACKUP_DIR/$filename"
    echo "$(date '+%F %T') INFO: 备份目录 $dir" >> "$LOG_FILE"
    echo "$(date '+%F %T') | 用户:$USER | 操作:备份目录 $dir -> $filename" >> "$AUDIT_LOG"
}

