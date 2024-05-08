"""
queries the Reddit API
prints the titles of the first 10 hot posts listed for a given subreddit
"""
import requests


def top_ten(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {'User-Agent': 'u/thisisinsider'}

    try:
        response = requests.get(url, headers=headers)
        response.raise_for_status()
        data = response.json()

        if 'data' in data and 'children' in data['data']:
            for post in data['data']['children']:
                my_title = post['data']['title']
                print(my_title)
    except requests.exceptions.RequestException as e:
        print("None")
