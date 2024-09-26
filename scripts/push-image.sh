set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

az acr login $CONTAINER_REGISTRY
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION 
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION 
