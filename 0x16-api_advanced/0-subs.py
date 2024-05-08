#!/usr/bin/python3

import requests
# a function that queries the Reddit API and returns the number of subscribers


def number_of_subscribers(subreddit):
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)

    response = requests.get(url)
    headers = {"User-Agent": "custom Subreddit"}
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        response_data = response.json()

        subscribers = response_data["data"]["subscribers"]

        return subscribers
    else:
        return 0
