#! /bin/bash
sudo docker run -d --name rcj-scoring-japan -p 3000:80  -v "$(pwd)"/db:/data/db -v "$(pwd)"/logs:/opt/rcj-scoring-system/logs -v "$(pwd)"/documents:/opt/rcj-scoring-system/documents -v "$(pwd)"/fonts:/opt/rcj-scoring-system/fonts -v "$(pwd)"/process.env:/opt/rcj-scoring-system/process.env -v "$(pwd)"/leagues.json:/opt/rcj-scoring-system/leagues.json --restart=always ryorobo/rcj-rescue-scoring-japan:latest
