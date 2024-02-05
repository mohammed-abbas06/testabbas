
if echo "${{ inputs.environment_name }}" | grep -Eq '^dev[1-9]$'; then
    echo "env=dev"
    github_env="dev"
else
    echo "env=${{ inputs.environment_name }}"
    github_env=${{ inputs.environment_name }}
fi
echo "github_env=$github_env" >> $GITHUB_OUTPUT