cd ./deploy

export SERVICE_NAME="jumanji-node"
export SERVICE_TOKEN="0CC3D64B-BA4E-43C3-A483-9B36556EAF73"
export ECR_REPOSITORY="280159221453.dkr.ecr.us-east-1.amazonaws.com/jumanji-node"
export AWS_REGION="us-east-1"
export ENVIRONMENT="staging"
export WISHABI_ENVIRONMENT="development"
export ECS_CLUSTER_STG="services-ecs-stg"
export ECS_SERVICE_STG=${SERVICE_NAME}-stg

# ENV Variables that are used the the platform-service-deploy.sh script
export ECS_CLUSTER=$ECS_CLUSTER_STG
export ECS_SERVICE=$ECS_SERVICE_STG
export SERVICE_CONTAINER_NAME=$ECS_SERVICE_STG
export CONTAINER_IMAGE=$ECR_REPOSITORY:${CIRCLE_BRANCH}-${CIRCLE_BUILD_NUM}

#download latest deploy script
aws s3 cp "s3://flipp-platform-"$WISHABI_ENVIRONMENT"/deploy/platform-service-deploy.sh" platform-service-deploy.sh
chmod +x platform-service-deploy.sh
#Execute the deployment Scripts
./platform-service-deploy.sh
