#!/bin/bash

echo -e "Building Hadoop..."
cd /local/repo/hadoop-release
mvn package -Pdist,native -DskipTests -Dtar -Dmaven.javadoc.skip=true

if [[ $? -eq 0 ]]; then
    echo -e "\n\nHadoop build success!\n\n"
else
    echo -e "\n\nHadoop build fail!\n\n"
fi

