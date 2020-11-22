#! /bin/bash
echo "Create the necessary directories"
mkdir -p logs
mkdir -p db
mkdir -p documents
mkdir -p fonts
echo "Download the latest version of the image from Docker Cloud"
sudo docker pull ryorobo/rcj-rescue-scoring-japan:latest
echo "Launch the image"
./run.sh
