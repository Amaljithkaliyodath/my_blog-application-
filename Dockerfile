# Step 1: Base Image
FROM python:3.9-slim

# Step 2: Set environment variables to prevent Python from writing .pyc files and buffering stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Step 3: Set work directory
WORKDIR /app

# Step 4: Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Step 5: Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Step 6: Copy project files
COPY . /app/

# Step 7: Run Django commands (e.g., migrate, collect static)
RUN python manage.py collectstatic --noinput

# Step 8: Expose the port your Django app runs on
EXPOSE 8000

# Step 9: Command to run the Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
