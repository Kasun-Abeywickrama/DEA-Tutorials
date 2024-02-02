# Servlet-Based Java Web Application Guide

## 1. What is a Servlet in Java?
- A servlet in Java is a server-side technology that extends the capabilities of servers to generate a dynamic response for client requests. 
- Servlets are Java classes deployed on a web server to handle web requests and produce responses.

## 2. What is meant by static and dynamic websites? List down their differences.
### Static Websites:
- Content doesn't change unless the developer manually updates it.
- Written in HTML, CSS, and possibly JavaScript.
- Faster to load as the content is fixed.

### Dynamic Websites:
- Content changes based on user interactions, preferences, or other factors.
- Utilizes server-side technologies (like Servlets in Java) to generate content.
- More interactive and responsive.

## 3. What are the differences between Get and Post requests?
### GET:
- Parameters are sent in the URL.
- Limited data to about 2KB.
- Less secure, as data is visible in the URL.
- Caching is possible.

### POST:
- Parameters are sent in the request body.
- Can handle larger amounts of data.
- More secure, as data is not visible in the URL.
- Not cached by default.

## 4. Create a new Java web project in NetBeans.
This involves creating a new web project in NetBeans, adding servlet dependencies, and defining a simple servlet class. It's a step-by-step process that's better suited for a development environment.

## 5. What is the purpose of the web.xml file in a servlet-based web application?
The `web.xml` file is a deployment descriptor for Java web applications. It's used to configure settings and servlet mappings for the application.

## 6. Override the doGet method in the HelloServlet to handle HTTP GET requests.
This involves writing code inside the `doGet` method to handle HTTP GET requests and send a "Hello, World!" response to the client.

## 7. Override the doPost method in the HelloServlet to handle HTTP POST requests.
This involves writing code inside the `doPost` method to handle HTTP POST requests and send a "Hello, POST!" response to the client.

## 8. Configure the Web Pages Folder and delete index.html
Setting up the project structure and creating a new `index.jsp` file with a click button to redirect to your servlet.

## 9. Deploy your servlet project to a local servlet container (e.g., GlassFish Server).
Open a web browser, navigate to the URL where the servlet is mapped, and verify that the "Hello, World!" or "Hello, POST!" message is displayed.
