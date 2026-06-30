# Greeting Servlet Application(Without Login)

A simple Spring MVC based web application that takes a user's name as input and displays a personalized greeting message.

---

## Features
- User enters name
- Personalized greeting message displayed
- Clean UI with JSP + CSS
- Spring Framework based project
- Runs on Tomcat Server

---

## Tech Stack
- Java
- Spring Framework
- JSP
- HTML
- CSS
- Tomcat Server

---
```text
GreetingWebAppWithoutLogin
│
├── src
│   └── com
│       └── greet
│           ├── model
│           │   └── Greeting.java
│           │
│           ├── service
│           │   ├── GreetingService.java
│           │   └── GreetingServiceImpl.java
│           │
│           └── servlet
│               └── GreetingServlet.java
│
├── web
│   ├── WEB-INF
│   │   ├── applicationContext.xml
│   │   └── web.xml
│   │
│   ├── greeting.jsp
│   └── index.jsp
│
└── GreetingWebAppWithoutLogin.iml
```
---

## Workflow

### Step 1
User opens homepage (`index.jsp`)

### Step 2
User enters name in input field

Example:
```text
Kiran
```

### Step 3
Form submits request to backend

```text
/greet
```

### Step 4
Spring processes request using service layer

### Step 5
Greeting message is generated

Example:
```text
Namaste Kiran!
```

### Step 6
Result is shown on `greeting.jsp`

---

## Main Files

### index.jsp
- Home page
- Input form for name

### greeting.jsp
- Displays greeting result

### applicationContext.xml
- Spring bean configuration

### GreetingServiceImpl.java
- Generates greeting message

---

## How to Run

### Step 1
Import project in IntelliJ IDEA

### Step 2
Configure Tomcat Server

### Step 3
Build project

### Step 4
Run server

### Step 5
Open browser

```text
http://localhost:8080/GreetingWebApp
```

---

## Output

### Home Page
User enters name

### Result Page
Displays personalized greeting message

Example:
```text
Namaste Kiran!
```

---

## Future Improvements
- Add animations
- Add multiple greeting styles
- Add theme customization
- Add database support

---

## Author
Developed as a Spring Framework learning project.
