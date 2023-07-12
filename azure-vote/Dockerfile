# Pull the base image
FROM tiangolo/uwsgi-nginx-flask:python3.7
# Install depndencies
RUN pip install redis==4.6.0
RUN pip install opencensus
RUN pip install opencensus-ext-azure==1.1.9
RUN pip install opencensus-ext-flask==0.8.2
RUN pip install opencensus-ext-logging
RUN pip install flask==2.2.2
# Copy the content of the current directory to the /app of the container
ADD . /app
