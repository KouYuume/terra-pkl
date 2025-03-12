#rm ./build/terraform/main.tf.json

function pkl_error_handler() {
  echo "Error: Pklエラーをご確認ください。"
  exit 1
}

if [ -z "$1" ]; then
  echo "Error: stageを指定してください。"
  exit 1
fi

pkl eval -m build/terraform/ main.pkl -p STAGE="$1" || pkl_error_handler
sed -i '' 's/"null"/null/g' "./build/terraform/$1/main.tf.json"

STAGE=$1 podman compose run --rm terraform apply