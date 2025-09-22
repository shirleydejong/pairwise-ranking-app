# Pairwise Ranking Web App

["Pairwise Ranking" (wikipedia)](https://en.wikipedia.org/wiki/Pairwise_comparison) (sometimes called "Preference Ranking"), can be best described as taking a "divide and conquer" approach to prioritizing/ranking a set.

In it we expand the comparisons into a every possible combination of 2, compare a pair, assign one a winner, and repeat. After we've assigned every possible pair a winner, we will have an aggregate of winners, where repeated winners gravitate to the top and losers to the bottom.

> L. L. Thurstone first introduced a scientific approach to using pairwise comparisons for measurement in 1927, which he referred to as the law of comparative judgment.

This is intended as a simple web app to aggregate a preference list from input (using local storage to start), by simplifying to a simple A or B choice. The expected audience (aside from just myself), is someone with _minor_ technical understanding.

## Installation
0. *Docker is required*
1. Just pull the image from GitHub
2. Create and populate the .env file
3. run `./install.sh`. No need for an outdated Node.js version. The app is build in the Docker image and copied to the host afterwards.


