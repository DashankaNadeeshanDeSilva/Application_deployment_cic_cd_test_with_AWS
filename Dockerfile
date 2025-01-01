# From python abse pakage
FROM python:3.10-slim

# Env variable to prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1  

# Create working dir inside docker container
WORKDIR /app 

# Copy files from local dir to container working dir
COPY app /app
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose port from container
EXPOSE 5000

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]

### How to run ###
# Build docker image
# ``docker build -t test-app-img .``

# RUn docker container: --name <container name> <docker image name>
# ``docker run -d -p 5000:5000 --name test-app-cont test-app-img``