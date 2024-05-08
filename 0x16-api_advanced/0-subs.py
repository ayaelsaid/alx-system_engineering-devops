#!/usr/bin/python3
"""
function that queries the Reddit API and returns the number of subscribers
"""

import requests
import json

def number_of_subscribers(subreddit):
    url = f'https://www.reddit.com/r/{subreddit}/about.json'

    response = requests.get(url)
    headers = {"User-Agent": "u/thisisinsider"}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        response_data = response.json()

        subscribers = response_data["data"]["subscribers"]

        return subscribers
    else:
        return 0
