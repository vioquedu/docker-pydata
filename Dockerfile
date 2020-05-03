FROM python:3.6

# Create a directory where the code is to be hosted
RUN mkdir /app
# Define the working directory in the container
WORKDIR /app
# Copy and install the requirements.
COPY requirements.txt /app/requirements.txt
RUN pip install -r  requirements.txt

# Copy jupyter notebook configuration
COPY jupyter_config.py /etc/jupyter/
COPY start.sh /usr/local/bin/

# Set environment variables
ENV NB_USER=reagan \
    NB_UID=1000 \
    NB_GID=100 

# Create USER
RUN useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
    chown $NB_USER:$NB_GID /app

RUN chmod 777 /usr/local/bin/start.sh

USER $NB_UID