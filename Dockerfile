FROM python:3-slim

LABEL org.opencontainers.image.source https://github.com/wellingtonking/docker-image-tf-code-analyzers-python

## Install terrascan ##
RUN pip install terrascan --no-input --progress-bar off | grep -v "pip as the 'root' user"

## Install terraform-compliance ##
#RUN apt update && apt install git && pip install terraform-compliance
RUN pip install terraform-compliance --no-input --progress-bar off | grep -v "pip as the 'root' user"

## Install checkov ##
RUN pip install checkov --no-input --progress-bar off | grep -v "pip as the 'root' user"

## Reduce image size ##
#RUN apt clean
RUN pip cache purge | grep -v "pip as the 'root' user"

CMD ["/bin/bash"]
