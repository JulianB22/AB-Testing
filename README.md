# A/B-Testing
A/B Testing of the Click-Through Rate to a Grocery App Download Page

An online grocery company is considering making an amendment to its online experience with the hope that it will encourage customers to download the app and register for the loyalty program. 

To understand the effectiveness of this new feature, it decides to offer this feature to a subsection of the customer base and compare the response rate with that of the original webpage. 

The click-through ratio to the app download page is used as a metric by which performance in this test is assessed.

In order to test whether this result is statistically significant and not down to chance, a regression model is built which calculates the p-value between the two groups. 

As the value of 2e-16 is much lower than the threshold of 0.05, the null hypothesis can be safely rejected.

This is to say that there IS a statistically significant relationship between the two groups, and that A and B consist of different probabilities of customers clicking through to the app download page.

The new link (B), can be deemed as better than the previous version of the webpage (A), in respect to the click-throughs to the app-download page.
