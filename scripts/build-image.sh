set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$NAME"
: "$DIRECTORY"

docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION --file ./book_catalog/Dockerfile ./book_catalog
docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION --file ./inventory_management/Dockerfile ./inventory_management

