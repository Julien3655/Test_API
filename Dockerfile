# Starts from the python 3.10 official docker image
FROM python:3.11.5

# Create a folder "app" at the root of the image
RUN mkdir /app

# Define /app as the working directory
WORKDIR /app

# Copy all the files in the current directory in /app
COPY Main_Test_API.py /app/Main_Test_API.py
COPY requirements.txt /app/requirements.txt

# Update pip
RUN pip install --upgrade pip

# Install dependencies from "requirements.txt"
RUN pip install -r requirements.txt

# Run the app
# Set host to 0.0.0.0 to make it run on the container's network
CMD uvicorn Main_Test_API:app --host 0.0.0.0