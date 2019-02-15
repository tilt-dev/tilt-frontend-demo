repo = local_git_repo('.')

k8s_yaml('serve.yaml')

img = fast_build('tilt-frontend-demo', 'Dockerfile', 'npm start')
img.add(repo.path('.'), '/src')
img.run('npm install', trigger=['package.json', 'package-lock.json'])
img.hot_reload()

k8s_resource('tilt-frontend-demo', port_forwards=3000)
