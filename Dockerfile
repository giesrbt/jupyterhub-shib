# Designed to be run as 
# 
# docker run -it -p 8000:8000 giesrbt/jupyterhub-shib

FROM jupyterhub/jupyterhub

# Install kubeswapner
RUN git clone https://github.com/jupyterhub/kubespawner.git
RUN cd kubespawner && python setup.py install

# Install uthenticator from git
RUN python3 -m pip install jupyterhub-dummyauthenticator

