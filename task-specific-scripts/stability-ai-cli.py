import requests
import os
import sys


if len(sys.argv) != 2:
    print("Usage: python stability-ai-cli.py <prompt>")
    sys.exit(1)


#do "STABILITYAI_APIKEY="MYAPIKEY" ; export STABILITYAI_APIKEY to set the API key in terminal
#print(os.environ['STABILITYAI_APIKEY'])
response = requests.post(
    f"https://api.stability.ai/v2beta/stable-image/generate/core",
    headers={
        "authorization": os.environ['STABILITYAI_APIKEY'],
        "accept": "image/*"
    },
    files={"none": ''},
    data={
        "prompt": str(sys.argv[1]),
        "output_format": "jpeg",
    },
)

if response.status_code == 200:
    with open("./stability-ai-output.jpg", 'wb') as file:
        file.write(response.content)
else:
    raise Exception(str(response.json()))
