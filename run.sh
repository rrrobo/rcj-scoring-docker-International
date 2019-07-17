#! /bin/bash
sudo docker run -d --name rcj-scoring-japan -p 3000:80  -v "$(pwd)"/db:/data/db -v "$(pwd)"/logs:/opt/rcj-scoring-system/logs -v "$(pwd)"/TechnicalDocument:/opt/rcj-scoring-system/TechnicalDocument -v "$(pwd)"/process.env:/opt/rcj-scoring-system/process.env -v "$(pwd)"/leagues.json:/opt/rcj-scoring-system/leagues.json --restart=always ryorobo/rcj-rescue-scoring-japan:latest
