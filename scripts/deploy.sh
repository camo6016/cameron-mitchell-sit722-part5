set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$POSTGRESQL_PASSWORD"

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -
