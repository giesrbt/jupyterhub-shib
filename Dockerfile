# Designed to be run as 
# 
# docker run -it -p 8000:8000 giesrbt/jupyterhub-shib

FROM jupyterhub/jupyterhub

# RUN pip install jupyter

# Install kubeswapner
# RUN git clone https://github.com/jupyterhub/kubespawner.git
# RUN cd kubespawner && python setup.py install
# RUN pip install jupyterhub-kubespawner
# RUN pip install jupyterhub-simplespawner

# Install uthenticator from git
RUN pip install jupyterhub-dummyauthenticator

# copy config file
COPY ./jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
