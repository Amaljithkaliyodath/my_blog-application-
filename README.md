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

