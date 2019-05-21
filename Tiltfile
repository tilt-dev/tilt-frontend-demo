repo = local_git_repo('.')

k8s_yaml('serve.yaml')

# Start with a base Dockerfile with none of our source code,
# and an entry point that starts a server.

custom_build('tilt-frontend-demo',
  'docker build -t $EXPECTED_REF -f Dockerfile .',
  deps=['package.json', 'src'],
  disable_push=True)

k8s_resource('tilt-frontend-demo', port_forwards=3000)
