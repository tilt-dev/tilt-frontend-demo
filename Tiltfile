repo = local_git_repo('.')

k8s_yaml('serve.yaml')

# Start with a base Dockerfile with none of our source code,
# and an entry point that starts a server.
img = fast_build('tilt-frontend-demo', 'Dockerfile', 'node scripts/start.js')

# Map the local source code into the container under /src
img.add(repo.path('.'), '/src')

# Re-run npm install every time package.json changes
img.run('npm install', trigger=['package.json', 'package-lock.json'])

# Hot reload means that the container doesn't need to be restarted when files
# change. The webpack dev server will pick up the changes.
img.hot_reload()

k8s_resource('tilt-frontend-demo', port_forwards=3000)
