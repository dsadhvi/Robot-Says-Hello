import requests

r = requests.post('https://speech.googleapis.com/v1p1beta1/speech:recognize', data = { "audio": {
    "content": "/* Your audio */"
  },
  "config": {
    "enableAutomaticPunctuation": "true",
    "encoding": "LINEAR16",
    "languageCode": "en-US",
    "model": "default"
  }})
print(r.text)
