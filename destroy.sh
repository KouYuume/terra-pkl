if [ -z "$1" ]; then
  echo "Error: stageを指定してください。"
  exit 1
fi

STAGE=$1 podman compose run --rm terraform destroy