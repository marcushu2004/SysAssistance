#!/bin/bash

user_management() {
    read -p "请输入操作(add/del/passwd): " action
    read -p "请输入用户名: " user
    case $action in
        add)
            sudo useradd $user && echo "用户 $user 添加成功"
            echo "$(date '+%F %T') INFO: 添加用户 $user" >> "$LOG_FILE"
            echo "$(date '+%F %T') | 用户:$USER | 操作:添加用户 $user" >> "$AUDIT_LOG"
            ;;
        del)
            sudo userdel $user && echo "用户 $user 删除成功"
            echo "$(date '+%F %T') INFO: 删除用户 $user" >> "$LOG_FILE"
            echo "$(date '+%F %T') | 用户:$USER | 操作:删除用户 $user" >> "$AUDIT_LOG"
            ;;
        passwd)
            sudo passwd $user
            echo "$(date '+%F %T') INFO: 修改用户 $user 密码" >> "$LOG_FILE"
            echo "$(date '+%F %T') | 用户:$USER | 操作:修改用户 $user 密码" >> "$AUDIT_LOG"
            ;;
        *)
            echo "无效操作"
            ;;
    esac
}

