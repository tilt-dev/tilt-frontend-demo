# Example React app with Tilt

Requirements: [Tilt](https://tilt.dev/)

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).
A Webpack Dev Server hot reloads a React app, all running inside Kubernetes.

With a local Kubernetes environment, run:

```
tilt up
```

If you get errors trying to push to tilt-frontend-demo, that means
you're not using a local Kubernetes environment (like Docker For Mac or Minikube).
See [the FAQ](https://docs.tilt.dev/faq.html#q-how-do-i-change-what-kubernetes-cluster-tilt-uses) for more info.

Tilt will assemble an image, deploy the app, and live update it in Kubernetes.

View the app at http://localhost:3000/

When you make a change to [src/App.js](src/App.js), Tilt will sync the file to the container.

For more details on how this works, see [Node.js Microservice with Hot Reloading](https://docs.tilt.dev/nodejs_microservice_hotreloading.html)



