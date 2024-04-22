#!/usr/bin/python3
"""Write a Python script that, using this REST API, for a given employee ID,
   returns information about his/her TODO list progress.
"""

import requests
import sys
from sys import argv


if __name__ == '__main__':
    api_url = 'https://jsonplaceholder.typicode.com/'
    user_url = requests.get(api_url + 'users/{}'.format(argv[1])).json()
    to_do = requests.get(api_url + 'todos', params={'userId': argv[1]}).json()

    completed = [i.get("title") for i in to_do if i.get("completed") is True]
    print("Employee {} is done with tasks({}/{}):".format(
        user_id.get("name"), len(completed), len(to_do)))
    [print("\t {}".format(job)) for job in completed]
