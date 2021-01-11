
After created default auth register new user from front 
=======================================================
# First need to login
1. http://localhost/restapi/public/api/auth/login
Method :POST
Add in body =>form-data
email:admin@gmail.com
password:admin@123

It giving token like :-
------------------------
{
    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Jlc3RhcGlcL3B1YmxpY1wvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYxMDIyMTQ2OSwiZXhwIjoxNjEwMjI1MDY5LCJuYmYiOjE2MTAyMjE0NjksImp0aSI6IlNXdHpPMHpCV25kSmlicWgiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.OTN_RioZPoiwYPGZnpZ1a25guLxLYcbxEqMHX-tnxJc",
    "token_type": "bearer",
    "expires_in": 3600
}
====================================================

Use this token to get other route data or action perform
Add token in Header.

# Get own profile user data
2. http://localhost/restapi/public/api/auth/me 
Method :POST
Header:-
----------
Content-Type:application/json
Accept:application/json
Authorization:Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Jlc3RhcGlcL3B1YmxpY1wvYXBpXC9hdXRoXC9yZWZyZXNoIiwiaWF0IjoxNjEwMjIxNDY5LCJleHAiOjE2MTAyMjUyNDEsIm5iZiI6MTYxMDIyMTY0MSwianRpIjoibzVNNGpTd2dYaUVTWG0zcyIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.mm0ktHcECBiRjwm9paK9oORT1pZBVjFXovZrO9FxJ0g

# Logout
3. http://localhost/restapi/public/api/auth/logout
Method :POST
Header:-
----------
Content-Type:application/json
Accept:application/json
Authorization:Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Jlc3RhcGlcL3B1YmxpY1wvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYxMDIyMDcwNywiZXhwIjoxNjEwMjI0MzA3LCJuYmYiOjE2MTAyMjA3MDcsImp0aSI6InFOdUVMYzI1aU1yNzR1Q2EiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.hwFyUTZf5VrACFbhn8_w_WFQJqAtV9hfBT4yNuUx_yI


# Refresh the token it removing old previous token
4. http://localhost/restapi/public/api/auth/refresh
Method :POST
Header:-
----------
Content-Type:application/json
Accept:application/json
Authorization:Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3Jlc3RhcGlcL3B1YmxpY1wvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYxMDIyMDcwNywiZXhwIjoxNjEwMjI0MzA3LCJuYmYiOjE2MTAyMjA3MDcsImp0aSI6InFOdUVMYzI1aU1yNzR1Q2EiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.hwFyUTZf5VrACFbhn8_w_WFQJqAtV9hfBT4yNuUx_yI