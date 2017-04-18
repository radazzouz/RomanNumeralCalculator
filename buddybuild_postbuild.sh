#!/usr/bin/env bash

# Deploy the SDK to S3
# Run tests
if [[ "$BUDDYBUILD_BRANCH" =~ "sdk-test-staging" ]]; then
	echo "Testing..."
	./buddybuildTests/testVideoReplay.sh
fi