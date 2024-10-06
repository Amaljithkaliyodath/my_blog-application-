# Use the official Python image.
# The 'slim' version is a smaller base image to reduce the size.
FROM python:3.10-slim

# Set the working directory inside the container.
WORKDIR /app

# Install system dependencies.
RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    libssl-dev \
    libffi-dev \
    pkg-config \
    gcc \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js for Tailwind CSS
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Copy the requirements file and install dependencies.
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt




# Install Tailwind CSS locally in the project directory
RUN npm install -D tailwindcss

# Copy the rest of the application code to the container.
COPY . .

# Run Tailwind CSS build process using the locally installed version
RUN npx tailwindcss build ./static/css/tailwind.css -o ./static/css/output.css

# Collect static files (for production use).
RUN python manage.py collectstatic --noinput

# Set environment variables for Django.
ENV DJANGO_SETTINGS_MODULE=blog_project.settings
ENV PYTHONUNBUFFERED=1

# Expose the application port
EXPOSE 8000

# Use gunicorn to run the Django app in production
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "blog_project.wsgi:application"]
