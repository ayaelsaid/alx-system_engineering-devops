#!/usr/bin/python3

"""
recursive function that queries"""
import requests

def recurse(subreddit, hot_list=[]):
  url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
  headers = {'User-Agent': 'u/thisisinsider'}

  try:
    response = requests.get(url, headers=headers)
    response.raise_for_status()
    data = response.json()

    if 'data' in data and 'children' in data['data']:
      for post in data["data"]["children"]:
        hot_list.append(post["data"]["title"])
        after = data['data'].get('after')
            if after:
                recurse(subreddit, hot_list, after)
            else:
              return hot_list
    else:
      return None

  except requests.exceptions.RequestException as e:
    return None
