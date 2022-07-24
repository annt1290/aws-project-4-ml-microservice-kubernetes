[![CircleCI](https://dl.circleci.com/status-badge/img/gh/annt1290/aws-project-4-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/annt1290/aws-project-4-ml-microservice-kubernetes/tree/main)

## Project Overview

Operationalize a Machine Learning Microservice API. 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Make a prediction

After Running `app.py`, make a prediction using a separate terminal tab, and a call to `./make_prediction.sh`

## Files in the repository

- [model_data](model_data), [app.py](app.py), [requirements.txt](requirements.txt): Flask app files
- [Makefile](Makefile): includes instructions on environment setup and lint tests
- [Dockerfile](Dockerfile): includes instructions to assemble the Docker image
- [run_docker.sh](run_docker.sh): Build the docker image and run the containerized Flask app
- [upload_docker.sh](upload_docker.sh): Tag and push image to the Docker repository
- [run_kubernetes.sh](run_kubernetes.sh): Deploy the Flask app to the Kubernetes Cluster, and forward the container port (80) to a host port (8000)
- [make_prediction.sh](make_prediction.sh): Call deployed Flask app to make a prediction
- [output_txt_files/docker_out.txt](output_txt_files/docker_out.txt): Output after running a prediction via Docker deployment
- [output_txt_files/kubernetes_out.txt](output_txt_files/kubernetes_out.txt): Output after running a prediction via Kubernetes deployment
- [.circleci/config.yml](.circleci/config.yml): CircleCI configuration
