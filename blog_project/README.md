





  Blog Project Documentation

# Blog Project

## Project Overview

This is a blog project built with Python and Django, which includes the following features:

*   User authentication
*   Blog post creation and management
*   Tailwind CSS for styling
*   REST API endpoints for managing blog posts and users

## Setup and Installation

### Prerequisites

*   Python 3.x
*   Django 4.x
*   Node.js and npm (for Tailwind CSS integration)

### Installation Steps

1.  Clone the repository:
    
        git clone https://github.com/Amaljithkaliyodath/my_blog-application-.git
        cd blog_project
    
2.  Create and activate a virtual environment:
    
        python3 -m venv env
        source env/bin/activate   # On Windows: env\Scripts\activate
    
3.  Install dependencies:
    
        pip install -r requirements.txt
    
4.  Install Node.js dependencies for Tailwind CSS:
    
        npm install
    
5.  Run migrations to set up the database:
    
        python manage.py migrate
    
6.  Create a superuser to access the Django admin:
    
        python manage.py createsuperuser
    
7.  Collect static files:
    
        python manage.py collectstatic
    
8.  Run the development server:
    
        python manage.py runserver
    

## API Documentation

**Base URL:** `/api/v1/`

### Endpoints:

#### 1\. User Authentication:

**Login:**

    POST /auth/login/

**Request body:**

    {
      "username": "your_username",
      "password": "your_password"
    }

**Register:**

    POST /auth/register/

**Request body:**

    {
      "username": "your_username",
      "email": "your_email",
      "password": "your_password"
    }

#### 2\. Blog Posts:

**Get all posts:**

    GET /posts/

**Response example:**

    [
      {
        "id": 1,
        "title": "First Blog Post",
        "content": "This is the content of the first blog post.",
        "author": "admin"
      },
      {
        "id": 2,
        "title": "Second Blog Post",
        "content": "This is the content of the second blog post.",
        "author": "user1"
      }
    ]

**Create a new post:**

    POST /posts/

**Request body:**

    {
      "title": "New Blog Post",
      "content": "This is the content of the new post."
    }

**Update a post:**

    PUT /posts/<id>/

**Request body (partial or full update):**

    {
      "title": "Updated Title"
    }

**Delete a post:**

    DELETE /posts/<id>/

<p>This is a Django-based blog application that has been containerized using Docker and Docker Compose. The application uses MySQL as the database and can be run locally or in a Docker container.</p>

<h2>Prerequisites</h2>
<p>Make sure you have the following installed on your machine:</p>
<ul>
    <li><a href="https://docs.docker.com/get-docker/">Docker</a></li>
    <li><a href="https://docs.docker.com/compose/install/">Docker Compose</a></li>
</ul>

<h2>Setup Instructions</h2>

<h3>1. Clone the Repository</h3>
<pre><code>git clone https://github.com/your-username/my_blog.git
cd my_blog
</code></pre>

<h3>2. Setup Environment Variables</h3>
<p>Create a <code>.env</code> file in the root directory of your project with the following contents (replace with your actual values):</p>
<pre><code>DB_NAME=myblogdb
DB_USER=mybloguser
DB_PASSWORD=myblogpassword
DB_HOST=db
DB_PORT=3306
SECRET_KEY=mysecretkey
</code></pre>

<h3>3. Dockerize the Application</h3>
<p>You can now build and run the application with Docker.</p>

<h4>Build Docker Image</h4>
<pre><code>docker-compose build
</code></pre>

<h4>Run the Application</h4>
<pre><code>docker-compose up
</code></pre>
<p>This will start two containers:</p>
<ul>
    <li><strong>db</strong>: A MySQL database container with the specified credentials.</li>
    <li><strong>web</strong>: The Django application container.</li>
</ul>

<h3>4. Running Migrations</h3>
<p>Once the containers are running, open a new terminal window and apply the database migrations:</p>
<pre><code>docker-compose exec web python manage.py migrate
</code></pre>

<h3>5. Access the Application</h3>
<p>You can now access the application at <code>http://localhost:8000</code>.</p>

<h3>6. Stopping the Containers</h3>
<p>To stop the application, press <code>CTRL+C</code> in the terminal where Docker Compose is running, or use the following command:</p>
<pre><code>docker-compose down
</code></pre>

<h2>Database Backup & Restore</h2>
<p>To back up the MySQL database:</p>
<pre><code>docker-compose exec db mysqldump -u root -p myblogdb > backup.sql
</code></pre>
<p>To restore a database backup:</p>
<pre><code>docker-compose exec -T db mysql -u root -p myblogdb < backup.sql
</code></pre>

<h2>Customizing Configuration</h2>
<p>If you need to change the database configuration or any other settings, modify the <code>.env</code> file and the <code>docker-compose.yml</code> file as needed.</p>

<h2>License</h2>
<p>This project is licensed under the MIT License.</p>
</body>
</html>

    
