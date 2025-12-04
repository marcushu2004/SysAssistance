#!/bin/bash

# 初始化目录
mkdir -p logs backups modules

# 路径设置
LOG_FILE="./logs/sysassistance.log"
AUDIT_LOG="./logs/operations.log"
BACKUP_DIR="./backups"

# 引入模块
source ./modules/monitor_system.sh
source ./modules/user_management.sh
source ./modules/process_management.sh
source ./modules/disk_cleanup.sh
source ./modules/network_check.sh
source ./modules/backup_restore.sh
source ./modules/generate_report.sh
source ./modules/settings.sh
source ./modules/view_operations.sh

# 主菜单
while true; do
    echo "==================================="
    echo "         SysAssistance"
    echo "==================================="
    echo "1. 系统信息监控"
    echo "2. 用户管理"
    echo "3. 进程管理"
    echo "4. 磁盘清理"
    echo "5. 网络检测"
    echo "6. 备份与恢复"
    echo "7. 系统报告"
    echo "8. 设置中心"
    echo "9. 查看操作记录"
    echo "0. 退出"
    echo "==================================="
    read -p "请选择操作: " choice

    case $choice in
        1) monitor_system ;;
        2) user_management ;;
        3) process_management ;;
        4) disk_cleanup ;;
        5) network_check ;;
        6) backup_restore ;;
        7) generate_report ;;
        8) settings ;;
        9) view_operations ;;
        0) echo "退出 SysAssistance"; exit 0 ;;
        *) echo "无效选项，请重新选择" ;;
    esac
    echo ""
done

