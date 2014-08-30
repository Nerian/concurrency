
```
Start the server

bundle exec thin --threaded -p 5500 --threadpool-size 20 start


10 concurrents requests handled by a normal action:
time ab -c10 -n10 http://127.0.0.1:5500/normal

Example of 10 concurrent requests handled asyncronously and each one setting a cookie.
time ab -c10 -n10 http://127.0.0.1:5500/async

Example of 10 concurrent requests handled asyncronously and each one setting a cookie.
time ab -c10 -n10 http://127.0.0.1:5500/async_with_cookies
```