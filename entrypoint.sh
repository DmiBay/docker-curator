#!/bin/sh
# entrypoint with repository init

if [ "$S3_REPO_ENABLE" = "true" ] ; then
    echo 'Create S3 repository...'
    es_repo_mgr create s3 \
      --config "$CONFIG_PATH" \
      --repository "$S3_REPO_NAME" \
      --bucket "$S3_BUCKET" \
      --region "$S3_AWS_REGION" \
      --access_key "$S3_AWS_KEY_ID" \
      --secret_key "$S3_AWS_SECRET"
fi

exec "/usr/bin/curator --config $CONFIG_PATH $ACTIONS_PATH $@"
