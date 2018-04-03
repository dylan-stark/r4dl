# R for Deep Learning Docker Image

This is a Docker image comprising [RStudio](https://www.rstudio.com/)'s impressive collection of deep learning packages, [TensorFlow](https://www.tensorflow.org/), and [Keras](https://keras.io/).
This image is built on top of the awesome [Rocker](https://github.com/rocker-org/rocker) [`rocker/rstudio`](https://hub.docker.com/r/rocker/rstudio/) image, with [Shiny Server](https://www.rstudio.com/products/shiny/shiny-server/) built in.

## Usage

```
docker run --rm -it dstark/r4dl:6f851a3
```

See the `rocker/rstudio` [docs](https://hub.docker.com/r/rocker/rstudio/) for guidance on configuring ports, etc.

