# react + docker

Dockerizing a webapp made with the [create-react-app](https://github.com/facebookincubator/create-react-app) from Facebook.

Follow along with the making of: [part 1](https://lombardo-chcg.github.io/tools/2017/08/13/react-+-docker.html) and [part 2](https://lombardo-chcg.github.io/tools/2017/08/16/react-+-docker,-part-2.html)

### How to use

```
npm install
npm run build
docker build -t example-react-app .

# expose container port 9000 as docker host port 80
docker run -p "80:9000" example-react-app:latest
```

`localhost` in any browser will show the React app.

And to prove the proxy is working, try `curl localhost/proxy` from a terminal and you should see Google's page content.  Now just point that proxy target at your backend server and don't sweat the CORS in the browser. 
