# Dockre PyData
Docker images with PyData Stack

This repository contains the code needed to generate a Docker image
with some of the most common Python libraries for
data analytics.

## Launch a container

To launch a container simply pull the image from Docker Hub:

```
docker run -p 8888:8888 vioquedu/basic-pydata start.sh
```

Copy the token from the initial logs to log in. If you don't need authentication
you can add the following option:

```
docker run -p 8888:8888 vioquedu/basic-pydata start.sh --NotebookApp.token=''
```

## Libraries

This image contains some basic python libraries used commonly
by data scientists. 

* Python 3.6
* JupyterLab
* Pandas
* Numpy
* SciPy
* Scikit-learn
* Matplotlib
* Plotly
* Requests
