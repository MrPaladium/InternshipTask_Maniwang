#importing request module
import requests

#Variable for the URL
url = 'http://127.0.0.1:8000/sum'
resp = requests.post(url, data = "x=5&y=5" )

#Check status code for response received
print(resp)

#Printing Content request
print(resp.json())
print(resp.content)