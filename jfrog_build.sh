export JFROG_CLI_BUILD_PROJECT=marcelo-webgoat-project
export JFROG_CLI_BUILD_NAME=marcelo-webgoat-build
export JFROG_CLI_BUILD_NUMBER="1.2"
# export JFROG_CLI_LOG_LEVEL=DEBUG
jf mvn clean install -DskipTests
jf rt build-collect-env
# jf rt build-add-dependencies .
jf rt build-add-git
jf rt build-publish

# mvn install compile assembly:single
jf build-scan

