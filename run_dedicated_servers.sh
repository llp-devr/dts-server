#!/bin/bash

run_shared=("$HOME/dontstarvetogether_dedicated_server/bin64/dontstarve_dedicated_server_nullrenderer_x64")
run_shared+=(-console)
run_shared+=(-cluster "$cluster_name")
run_shared+=(-monitor_parent_process $$)

"${run_shared[@]}" -shard Caves  | sed 's/^/Caves:  /' &
"${run_shared[@]}" -shard Master | sed 's/^/Master: /'
