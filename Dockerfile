FROM python:3-slim

## Install terrascan ##
RUN pip install terrascan --no-input --progress-bar off

## Install terraform-compliance ##
#RUN apt update && apt install git && pip install terraform-compliance
RUN pip install terraform-compliance --no-input --progress-bar off

## Install checkov ##
RUN pip install checkov --no-input --progress-bar off

## Reduce image size ##
#RUN apt clean
RUN pip cache purge

CMD ["/bin/bash"]
