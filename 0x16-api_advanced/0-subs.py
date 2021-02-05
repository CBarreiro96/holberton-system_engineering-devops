#!/usr/bin/python3
"""
1-top_ten
"""
import requests


def number_of_subscribers(subreddit):
    """
        Sends a query to Reddit API
        Returns the number of subscribers for given subreddit
    """
    url = "https://api.reddit.com/r/{}/about".format(subreddit)
    headers = {'User-Agent': 'my-app'}
    resp = requests.get(url, headers=headers)

    return resp.json().get('data', {}).get('subscribers', 0)
