# Jupyter Notebook
- Jupyter Notebook - web notebook with IPython kernel enabling executable documents; sequence of text, code (REP), or images.
- Jupyter Hub - multiuser environment hosted locally or on cloud
- Jupyter Lab - Multifile environment with editor, file dl/ul, etc - https://jupyterlab.readthedocs.io/en/latest/index.html

## References
- [The architecture of jupyter by Fernando Perez](https://www.youtube.com/watch?v=dENc0gwzySc) from 2017
  - 15:36 overall arch
  - 23:32 Jupyter Hub
  - 24:32 https://docs.rackspace.com/blog/deploying-jupyterhub-for-education/
  - 28:00 mybinder.org - Turn a Git repo into a collection of interactive notebooks using Jupyter and Kubernetes.
- [UCSD Data Science & ML platform](https://blink.ucsd.edu/faculty/instruction/tech-guide/dsmlp/index.html) DSMLP's Jupyter notebooks offer straightforward interactive access to popular languages and GPU-enabled frameworks such as Python, R, Pandas, PyTorch, TensorFlow, Keras, NLTK, and AllenNLP
- https://jupyterhub.readthedocs.io/en/latest/
- https://jupyterlab.readthedocs.io/en/stable/getting_started/overview.html

## Start JupyterLab
From https://jupyter-docker-stacks.readthedocs.io/en/latest/
Access at http://127.0.0.1:8888

    docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes jupyter/scipy-notebook