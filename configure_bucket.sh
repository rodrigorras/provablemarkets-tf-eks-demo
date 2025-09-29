aws s3api create-bucket \
  --bucket demo-provable-labs-bucket \
  --region eu-central-1 \
  --create-bucket-configuration LocationConstraint=eu-central-1

aws s3api put-bucket-versioning \
  --bucket demo-provable-labs-bucket \
  --versioning-configuration Status=Enabled


aws s3api put-public-access-block \
  --bucket demo-provable-labs-bucket \
  --public-access-block-configuration '{
    "BlockPublicAcls": true,
    "IgnorePublicAcls": true,
    "BlockPublicPolicy": true,
    "RestrictPublicBuckets": true
  }'


# aws s3api put-bucket-encryption \
#   --bucket your-bucket-name \
#   --server-side-encryption-configuration \
#     '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'

    