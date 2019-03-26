# github-actions-parallel-sandbox

`sleep 1 && echo 1 > poyo.txt` と `sleep 2 && echo 2 > poyo.txt` と `sleep 3 && echo 3 > poyo.txt` を並列で動かすと最終的に `poyo.txt` の中身は3