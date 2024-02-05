
if echo "${{ github.event.inputs.environment_name }}" | grep -Eq '^dev[1-9]$'; then
    echo "env=dev"
    github_env="dev"
else
    echo "env=${{ github.event.inputs.environment_name }}"
    github_env=${{ github.event.inputs.environment_name }}
fi