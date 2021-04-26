# default kubeconfig
FILES="$HOME/.kube/config"

# create clusters directory if its not created
CLUSTERS_DIR="$HOME/clusters"
echo "creating clusters dir: $CLUSTERS_DIR"
mkdir -p "$CLUSTERS_DIR"
test CLUSTERS_DIR

for cluster in `find $CLUSTERS_DIR -type f -name "*.yml"`
do
  echo "found cluster: $cluster"
  FILES="$cluster:$FILES"
done


echo $FILES
export KUBECONFIG=$FILES

