#!/usr/bin/python3
"""
Function to count words in all hot posts
"""

import requests


def count_words(subreddit, word_list, after=None, counts=None):
    """Prints counts of given words found in hot posts.
    Args:
        subreddit (str): The subreddit
        word_list (list): The list of words to search for in post titles.
        after (str): The parameter for the next page of the API
        count (int): The parameter of results
    """

    if counts is None:
        counts = {}

    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {'User-Agent': 'Custom User Agent'}
    params = {'after': after} if after else {}

    try:
        response = requests.get(url, headers=headers, params=params)
        response.raise_for_status()
        data = response.json()

        if 'data' in data and 'children' in data['data']:
            for post in data['data']['children']:
                title = post['data']['title'].lower()
                for word in word_list:
                    if word.lower() in title:
                        counts[word.lower()] = counts.get(word.lower(), 0) +
                        title.count(word.lower())

            after = data['data'].get('after')
            if after:
                count_words(subreddit, word_list, after, counts)
            else:
                sorted_counts = sorted(counts.items(),
                                       key=lambda x: (-x[1], x[0]))
                for word, count in sorted_counts:
                    print(f"{word}: {count}")

        else:
            print("None")

    except requests.exceptions.RequestException as e:
        print(e)
