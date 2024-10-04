Blog Project
Project Overview
This is a blog project built with Python and Django, which includes the following features:

User authentication
Blog post creation and management
Tailwind CSS for styling
REST API endpoints for managing blog posts and users
Setup and Installation
Prerequisites
Python 3.x
Django 4.x
Node.js and npm (for Tailwind CSS integration)
Installation Steps
Clone the repository:

bash
Copy code
git clone <repository-url>
cd blog_project
Create and activate a virtual environment:

bash
Copy code
python3 -m venv env
source env/bin/activate # On Windows: env\Scripts\activate
Install dependencies:

bash
Copy code
pip install -r requirements.txt
Install Node.js dependencies for Tailwind CSS:

bash
Copy code
npm install
Run migrations to set up the database:

bash
Copy code
python manage.py migrate
Create a superuser to access the Django admin:

bash
Copy code
python manage.py createsuperuser
Collect static files:

bash
Copy code
python manage.py collectstatic
Run the development server:

bash
Copy code
python manage.py runserver
API Documentation
Base URL: /api/v1/
Endpoints:

User Authentication:
Login:
POST /auth/login/
Request body:
json
Copy code
{
“username”: “your_username”,
“password”: “your_password”
}
Register:

POST /auth/register/
Request body:
json
Copy code
{
“username”: “your_username”,
“email”: “your_email”,
“password”: “your_password”
}

Blog Posts:
Get all posts:
GET /posts/
Response example:
json
Copy code
[
{
“id”: 1,
“title”: “First Blog Post”,
“content”: “This is the content of the first blog post.”,
“author”: “admin”
},
{
“id”: 2,
“title”: “Second Blog Post”,
“content”: “This is the content of the second blog post.”,
“author”: “user1”
}
]
Create a new post:

POST /posts/
Request body:
json
Copy code
{
“title”: “New Blog Post”,
“content”: “This is the content of the new post.”
}
Update a post:

PUT /posts/<id>/
Request body (partial or full update):
json
Copy code
{
“title”: “Updated Title”
}
Delete a post:

DELETE /posts/<id>
