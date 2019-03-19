repo = local_git_repo('.')

k8s_yaml('serve.yaml')

# First, start with your original Dockerfile
container = docker_build('tilt-frontend-demo', '.')

# Then, on top of the Dockerfile, tell Tilt how to do in-place updates
# on a running container.

# Map . to /src in the container
container.add(repo.path('.'), '/src')

# Run npm install in the container when package.json changes.
container.run('npm install', trigger=['package.json', 'package-lock.json'])

# Hot reload indicates that we don't need to restart the container after updating files,
# the webpack dev server will update the files on its own.
container.hot_reload()

k8s_resource('tilt-frontend-demo', port_forwards=3000)