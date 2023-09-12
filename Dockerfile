#Python 3.8 slim as the base
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Install bash, pandas, click, and numpy, then clean up
RUN apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    pip install pandas click numpy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /root/.cache

# Command to run on container start
CMD [ "bash" ]
