# Tutorial - 08

**1. Discuss security considerations when using cookies in Java servlets. How can you mitigate these concerns? (5 marks)**

* **Cookie Theft (Session Hijacking):** Attackers can steal cookies containing session IDs for unauthorized access.
  * Mitigation:
    * Use HTTPS to encrypt communication and prevent eavesdropping.
    * Set the `Secure` flag on cookies to ensure they're only sent over HTTPS.
    * Set the `HttpOnly` flag to prevent JavaScript access, reducing vulnerability to XSS attacks.

* **Cross-Site Scripting (XSS):** Malicious scripts embedded in cookies can compromise user sessions or steal data.
  * Mitigation:
    * Sanitize all user input before storing it in cookies, preventing XSS injection.
    * Consider alternative session management mechanisms like tokens with shorter lifespans.

* **CSRF (Cross-Site Request Forgery):** Attackers can trick users into making unauthorized requests carrying their stolen cookies.
  * Mitigation:
    * Implement anti-CSRF tokens by generating a unique token per user session.
    * Include this token in forms and validate it on the server to prevent unauthorized actions.

**2. How do lava servlets manage sessions? Explain the difference between creating a new session and retrieving an existing session. (5 marks)**

* **Sessions:** Temporary server-side storage for user data across multiple requests within a specific time frame.
* **Creating a New Session:**
  * When a user visits the application for the first time or their session times out, a new session object is created using `request.getSession(true)`. (The `true` argument creates a new session if one doesn't exist.)
  * A unique session ID is generated and stored as a cookie on the client's browser or URL-encoded in the request.
* **Retrieving an Existing Session:**
  * Subsequent requests from the same user include the session ID in a cookie or URL parameter.
  * The servlet retrieves the associated session object using `request.getSession(false)`. (The `false` argument returns the existing session or `null` if none exists.)

**3. What are cookies and how are they used in Java servlets for state management? Explain the advantages and disadvantages of using cookies. (5 marks)**

* **Cookies:** Small pieces of data stored on the client-side (user's browser) by the server.
* **State Management:** Tracking user information between requests.
* **Advantages of Cookies:**
  * Simple to implement
  * Widely supported by browsers
* **Disadvantages of Cookies:**
  * Limited storage capacity
  * Vulnerable to theft and XSS attacks
  * May be disabled by users
  * Privacy concerns (tracking user activity)

**4. What are the differences between session cookies and persistent cookies, and how do they work and are used on different websites? (5 marks)**

* **Session Cookies:**
  * Expire automatically when the user closes their browser or after a set inactivity period.
  * Used to maintain user session state (e.g., shopping cart contents, login status).
* **Persistent Cookies:**
  * Have a specific expiration date or time set by the server.
  * Remain on the client-side after the browser is closed, often used for user preferences or remembering login credentials (if explicitly chosen by the user).

**5. What are the key stages in the life cycle of a cookie?( 5 marks)**

1. **Creation:** The servlet sets cookies using `response.addCookie(cookie)`.
2. **Sending:** The server sends the HTTP response with the `Set-Cookie` header to the client's browser.
3. **Storage:** The browser stores the cookie on the client side (usually encrypted).
4. **Transmission:** On subsequent requests to the same server, the browser includes the cookie in the `Cookie` header of the HTTP request.
5. **Processing:** The servlet retrieves the cookie value using `request.getCookies()` and accesses the stored information.
6. **Deletion (Optional):** Cookies can be explicitly deleted by the servlet using `cookie.setMaxAge(0)` or expire automatically based on their set lifespan.