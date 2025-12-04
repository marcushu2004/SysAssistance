#!/bin/bash

network_check() {
    read -p "请输入要 Ping 的 IP 或域名: " ip
    ping -c 4 $ip
    read -p "输入要检测的端口 (host:port)，例如 127.0.0.1:22: " target
    if [[ -n $target ]]; then
        host=$(echo $target | cut -d':' -f1)
        port=$(echo $target | cut -d':' -f2)
        nc -zv $host $port
        echo "$(date '+%F %T') | 用户:$USER | 操作:网络检测 IP:$ip 端口:$port" >> "$AUDIT_LOG"
    else
        echo "$(date '+%F %T') | 用户:$USER | 操作:网络检测 IP:$ip" >> "$AUDIT_LOG"
    fi
    echo "$(date '+%F %T') INFO: 网络检测 $ip" >> "$LOG_FILE"
}

