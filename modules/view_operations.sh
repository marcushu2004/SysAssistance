#!/bin/bash

view_operations() {
    echo "=== 操作记录 ==="
    if [[ -f "$AUDIT_LOG" ]]; then
        cat "$AUDIT_LOG"
    else
        echo "暂无操作记录"
    fi
}

