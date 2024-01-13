#!/bin/sh
current_dir="$(dirname "$0")"
source "$current_dir/modem_debug.sh"
source "$current_dir/modem_scan.sh"

#模组扫描任务
modem_scan_task()
{
    sleep 8s #刚开机需要等待移动网络出来
	while true; do
        enable=$(uci -q get modem.@global[0].enable)
        if [ "$enable" = "1" ] ;then
            #扫描模块
            debug "开启模块扫描任务"
            modem_scan
            debug "结束模块扫描任务"
        fi
        sleep 10s
    done
}

modem_scan_task