# Example React app with Tilt

Requirements: [Tilt](https://tilt.dev/)

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

With a local Kubernetes environment, run:

```
tilt up
```

If you get errors trying to push to gcr.io/windmill-public-containers, that means
you're not using a local Kubernetes environment (like Docker For Mac or Minikube).
See [the FAQ](https://docs.tilt.dev/faq.html#q-how-do-i-change-what-kubernetes-cluster-tilt-uses) for more info.

Tilt will build the docker image specified by `Dockerfile` and deploy the app to Kubernetes.

View the app at http://localhost:3000/

When you make a change to [src/App.js](src/App.js), Tilt will automatically sync the file to the container.

For more details on this feature, see this [doc](https://docs.tilt.dev/nested_fastbuild.html).



