set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_PW"
: "$REGISTRY_UN"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION 
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION 
