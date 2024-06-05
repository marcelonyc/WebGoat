#! /bin/bash

function create_repos() {
     repo_file=$1
     jf rt repo-create ${repo_file}.json
}

create_repos docker-local
create_repos mvn-local
create_repos mvn-remote