#!/bin/awk -f

BEGIN {
    RS = "\n\n"
    servers_to_rank = ""
}

$0 ~ /Arch Linux repo/ {
    servers_to_rank = servers_to_rank $0 "\n"
}

$0 ~ /## Canada/ || $0 ~ /## United States/ {
    split($0, serverlist, "\n")
    for (server in serverlist) {
        servers_to_rank = servers_to_rank substr(serverlist[server], 2) "\n"
    }
}

END {
    system("echo '" servers_to_rank "' | rankmirrors -v -n 6 - | tee mirrorlist")
}
