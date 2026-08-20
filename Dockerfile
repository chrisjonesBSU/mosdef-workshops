FROM condaforge/miniforge3

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        wget \
        git \
		libxml2-dev \
	&& apt-get clean

# Install miniforge
ENV LANG C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH
WORKDIR /workspace
COPY environment.yml .

# By default running container starts bash shell
RUN mamba update -n base --all -y && \
  mamba env create -f environment.yml -y && \
  mamba clean -afy

# Auto-activate the workshop env in any terminal opened in the container
RUN echo "conda activate mosdef" >> /root/.bashrc

# Make RUN commands use `bash --login`: -- fixes conda init
# https://pythonspeed.com/articles/activate-conda-dockerfile/
SHELL ["/bin/bash", "--login", "-c"]

# Prevent python from loading packages from outside the container
# default empty pythonpath
ENV PYTHONPATH /ignore/pythonpath
ENV PYTHONUSERBASE /ignore/pythonpath

CMD [ "/bin/bash" ]
