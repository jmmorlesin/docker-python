import requests

res = requests.get('https://postman-echo.com/get?foo1=bar1&foo2=bar2')
data = res.json()
print(data)
