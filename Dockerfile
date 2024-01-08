# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Install Playwright
RUN pip install playwright

# Copy the content of the local src directory to the working directory
COPY . /app/

# Run Streamlit app
CMD ["streamlit", "run", "app.py"]
