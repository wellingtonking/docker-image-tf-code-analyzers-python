FROM python:3-slim

## Install terrascan ##
RUN pip install terrascan

## Install terraform-compliance ##
#RUN apt update && apt install git && pip install terraform-compliance
RUN pip install terraform-compliance

## Install checkov ##
RUN pip install checkov

## Reduce image size ##
#RUN apt clean
RUN pip cache purge

CMD ["/bin/bash"]