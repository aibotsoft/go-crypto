#!/bin/sh

SCRIPT="$0"
echo "# START SCRIPT: $SCRIPT"

executable="./openapi-generator-cli.jar"
PACKAGE_NAME="cryptoapi"
SPEC="./spec.yaml"
GENERATOR="go-experimental"
#GENERATOR="go"
STUB_DIR="./../cryptoapi"
USER_AGENT="Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1"

#echo "Removing files and folders under $STUB_DIR"
#rm -rf $STUB_DIR/{*.go,*.sh,*.md,*.mod,*.sum}

java -jar $executable generate -i $SPEC -g $GENERATOR -o $STUB_DIR  --package-name $PACKAGE_NAME --type-mappings integer=int64  --http-user-agent "$USER_AGENT"

# --additional-properties --generate-alias-as-model true
#echo "Removing mod files"
#rm -rf $STUB_DIR/api
#rm -rf $STUB_DIR/go.mod
#rm -rf $STUB_DIR/go.sum
#rm -rf $STUB_DIR/git_push.sh
#rm -rf $STUB_DIR/readme.md
#rm -rf $STUB_DIR/.travis.yml
#rm -rf $STUB_DIR/.gitignore
#rm -rf $STUB_DIR/docs
#rm -rf $STUB_DIR/.openapi-generator
