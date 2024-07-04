#!/bin/bash
# Sends a request to a URL and displays the size fo the response.
curl -s "$1" | wc -c
