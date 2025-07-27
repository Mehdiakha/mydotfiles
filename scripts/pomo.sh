#!/bin/bash

# pomo.sh
function pomo() {
    local work=${1:-25}
    local break=${2:-5}
    local cycles=${3:-4}

    for ((i = 1; i <= cycles; i++)); do
        echo "[$i/$cycles] Work: $work minutes"
        sleep "$((work * 60))"
        notify-send -u normal "Pomodoro" "Work session $i done! Take a $break-minute break."

        if [[ $i -lt $cycles ]]; then
            echo "Break: $break minutes"
            sleep "$((break * 60))"
            notify-send -u low "Pomodoro" "Break over! Back to work."
        fi
    done

    notify-send -u critical "Pomodoro" "All Pomodoro cycles complete!"
}

