# Cyclistic Bike Share Case Study

## Welcome to the Cyclistic Bike-Share Analysis Case Study!

In this case study, we delve into historical data from Divvy, a Chicago-based bike-share company, to uncover customer trends. For this analysis, I employed tools such as Excel, SQL, and Tableau. This project serves as my capstone for the Google Data Analytics Professional Certificate. The methodology I adopted mirrors the six-stage process taught in the Google data analytics course: Ask, Prepare, Process, Analyze, Share, and Act.

You can access the data utilized in this study under the following license: Divvy Data License Agreement.

## Scenario

Cyclistic, stationed in Chicago, categorizes its bike-share customers into two segments: members and casual riders. While members avail unlimited rides throughout the year via an annual subscription, casual riders opt for individual full-day passes.

According to Cyclistic's financial analysts, annual members significantly outperform casual riders in terms of profitability. Hence, the company's prosperity hinges on transitioning casual riders to members. To achieve this, the executive team envisions a Q4 marketing campaign tailored for casual riders. The primary stakeholders are Cyclistic’s director of marketing and the executive team, while the marketing analytics team serves as secondary stakeholders. My role, as a marketing analyst, is to discern the behavioral nuances between these user types and offer actionable insights.

## Ask

The essence of this stage is formulating pertinent questions to comprehend the problem at hand.

Guiding this analysis are the questions:

How do casual riders' habits contrast with those of subscribers?
What strategies can be employed to transition casual riders into subscribers?
These questions culminate in the subsequent business task:

Business Task: Assess Cyclistic's Q4 trip data to discern patterns distinguishing user types, aiming to promote casual riders to annual members.

## Prepare

In this phase, the spotlight is on acquiring pertinent, unbiased, and credible data. Given the data's residence within the company’s public database, its credibility is affirmed. This data is structured in a CSV format, encompassing 12 fields and approximately 800,000 records.

We anchor our analysis to the Q4 2019 trip data, as it aligns with our objectives. The focus on Q4 is due to the upcoming executive-backed campaign for the same quarter. The choice of 2019 is deliberate; it's the most recent year unaffected by the COVID-19 pandemic. This dataset, rich with insights on trips, user types, durations, and stations, equips us to address our central question.

## Process

Here, the emphasis is on data sanitation—ensuring its integrity and priming it for analysis. A detailed account of this phase can be found in the change log.

## Analyze

In this pivotal phase, the prepared data undergoes rigorous examination to unearth patterns and inform our primary objectives. Through the adept utilization of SQL within BigQuery, the data was transformed into multiple structured tables, thereby setting the stage for deciphering key trends and relationships.

Initial Insights: The overarching step was to understand the general trip distribution. The breakdown revealed that while subscribers took a whopping 85% of the total 704,041 trips during the 3-month span, casual riders trailed with 15%. This stark contrast serves as a foundation for further exploration.

![table1](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/19b4233a-1dc4-40bf-b9dc-5ffa3a82c665)


Diving Deeper: A closer look at the descriptive statistics uncovered some intriguing aspects. For instance, the broad range in ride lengths—from a mere 61 seconds to an astounding 99 days—suggested that relying solely on the mean could be misleading. Instead, adopting the median would provide a more representative snapshot of typical ride lengths.

![table2](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/03bf2aed-e688-4519-a376-d6390f062ede)


Comparative Analysis: Differentiating ride durations between the user types was enlightening. While casual riders enjoyed longer rides, averaging 21 minutes and 18 seconds, subscribers preferred quicker rides, averaging around 8 minutes and 40 seconds. This divergence could imply that casual riders aim for maximum utilization, potentially using bikes for leisure or tourism, whereas subscribers might be more inclined toward commuting.

![table3](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/949c2178-72a9-4584-8930-134fc7b0321f)


Usage Patterns: The choice of riding days offered another layer of differentiation. While casual users predominantly chose Sundays for their rides, echoing a leisurely or touristic trend, subscribers showed a preference for Tuesdays, possibly alluding to a more routine or work-related use.

![table4](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/4e959c64-c47b-437c-91a7-18efbcb71aff)

Further analysis confirmed this hypothesis, revealing that while weekends are casual riders' favorite, weekdays saw more subscriber traffic.

![table5](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/457294d9-1765-4123-8ef4-a2e6c5fe4905)


Optimal Ad Times: Identifying peak riding hours for both groups not only solidified our understanding of their biking habits but also informed potential advertising strategies. Subscribers predominantly rode during traditional commuting times, while casual riders favored mid-day hours, possibly emphasizing their non-commutative intent.

Subscribers:

![table6](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/82d5bb22-1dfb-4423-b44b-d5cf24b7aa23)


Casual Customers:

![table7](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/b6c49dad-e84e-4585-9229-c329250d83f4)


Route Preferences: When we zoomed in on the most-traveled routes, a surprising revelation awaited: Not one route overlapped between the two groups' top ten choices. This divergence might indicate that while subscribers focus on downtown areas for work or education, casual riders might be targeting Chicago's famous tourist hotspots.

The most popular routes for subscribers:

![table8](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/ba3e90e3-b3a0-4c52-93ab-aa7ecc423962)

The most popular routes for casual customers: 

![table9](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/3f0e0e47-b86b-45e9-bf1e-368db3bc5227)

Ad Location Insights: A glance at the most frequented start and end points revealed certain hubs of activity, particularly for casual riders. Stations like "Streeter Dr & Grand Ave" and "Lake Shore Dr & Monroe St" stood out as shared favorites for both starting and ending points, offering prime spots for targeted advertisements.

Most used  starting stations for casual riders:

![table10](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/998fbb1f-53e7-4bc6-83e8-757dde13d64d)

Most used ending stations for casual riders:

![table11](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/7461844d-d8de-4d1e-94e3-d0c686791dcd)


Our analysis of Cyclistic's bike-sharing data has provided revealing insights into the contrasting behaviors of casual riders and subscribers. It's particularly fascinating to note that casual riders, while riding less frequently, savor longer durations per trip. Their choice of mid-day jaunts during weekends and preference for iconic tourist routes in Chicago underscores a leisurely, exploratory approach to biking. Subscribers, on the other hand, seem to have woven bike-sharing seamlessly into their daily routines, primarily leveraging the service for commuting during the weekdays and peak hours.

These disparities present intriguing avenues for engagement. One might wonder: Could the weekend patterns of casual riders be tapped into more effectively, perhaps through specialized offers or tailored experiences that amplify the city's cultural attractions? And what if the hubs of casual rider activity, those specific stations teeming with them, became focal points for outreach or promotions? As for those peak hours—might there be a sweet spot to lure in the weekday casual riders into a more committed relationship with Cyclistic? While the data paints a clear picture, how Cyclistic chooses to act on these insights could shape the future of its customer base.


## Share

Visualization is an indispensable tool in the world of data storytelling. While numbers and tables provide the foundation of our insights, it's the art of visual depiction that truly brings this data to life, allowing both analysts and non-analysts to perceive trends, differences, and opportunities at a mere glance. Leveraging Tableau, a robust platform for dynamic visualizations, we've attempted to transform our raw data into a compelling narrative. These visualizations have been specifically designed to pave the way for actionable insights in the subsequent 'Act' phase.

This visualization captures the distribution of our riders, neatly segmented into casual and subscriber categories. Helping us understand the proportion of casual riders to subscribers, this sets the stage for deeper dives into their respective behaviors.

![Initial_Insights](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/c1b8436f-73ab-4896-b83e-dd1018e35d9a)

Here, we portray the median ride duration for both casual riders and subscribers.

Witness the stark contrast in ride durations, highlighting the different priorities and use-cases of our two user groups.

![Median Trip Duration](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/7f054510-b0b7-4021-a58f-f69dd07484f1)

This graph elucidates how both user types utilize Cyclistic bikes throughout the week. This chart helps to identify which days are most popular for casual riders, offering potential touchpoints for engagement. Note the sizeable presence of casual riders on weekdays along with the obvious weekend presence.

![TripsByWeekDay](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/2d932027-56fa-458c-9115-9d5273ac5075)

Here we delve into the nuances of hourly bike usage during weekdays for each user type. By highlighting the ebb and flow of ridership across the hours, this chart pinpoints when casual riders are most active, presenting golden opportunities for targeted engagement on weekdays. Especially noticeable are the spikes during commuter hours — potential windows to launch promotions, incentives, or advertising campaigns tailored for weekday casual riders.

![Viz 4](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/bcd45c5f-8c93-408c-84fc-362914abd3b3)

This treemap illustrates the top starting points favored by casual customers when commencing their journeys on a Cyclistic bike. Dominating the chart are renowned tourist hubs of Chicago. Streeter's Drive and Grand Avenue, paired with the scenic backdrop of Lake Shore Drive and Monroe Street, reign as the most favored kick-off spots. Furthermore, locations such as the Shedd Aquarium, Millennium Park, and DuSable Harbor are also notable points of commencement, alluding to their attractiveness for tourists and leisure riders. Given the inherent connection between these popular starting points and tourist destinations, there's clear evidence that casual riders are inclined to explore Chicago's renowned attractions on Cyclistic bikes.

![Sheet 5](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/b3880a0d-567e-4b41-b917-82ae9dd5eeb4)


The destinations treemap sheds light on where our casual customers predominantly conclude their trips. Yet again, the allure of Chicago's iconic sites stands out. Streeter's Drive and Grand Avenue remain consistent favorites, followed closely by Lake Shore Drive and Monroe Street. Moreover, Millennium Park, the Shedd Aquarium, and the intersection of Michigan Avenue and Oak Street – the heart of the Magnificent Mile shopping district – also emerge as top destinations. The preference for these ending points further reinforces the notion that casual riders are not just traversing the city for transportation but are actively engaged in experiencing the city's cultural and recreational offerings.

![Sheet 5 (2)](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/13df13ff-4c1c-4793-8004-1385dc9dcf58)


## Act

### Strategy 1: Tailored Member Packages for Weekend Activities
To amplify the appeal for casual riders, Cyclistic should introduce tailored member packages, especially curated for weekend excursions. These packages could encompass:

Aquarium Adventures: Given the popularity of the Shedd Aquarium, offer discount passes for entry upon opting for a Cyclistic member package. This package could also come with a tailored biking route that covers nearby attractions.

DuSable Harbor Delights: Highlight the scenic beauty of DuSable Harbor. Create a combo package which allows riders to explore the harbor, followed by a relaxing meal at nearby eateries, all at discounted rates.

Cultural Expeditions: Recognize the cultural hubs like Millennium Park and other significant landmarks. Offer guided bike tours during weekends which meander through Chicago's most iconic spots.

### Strategy 2: Targeted Outdoor Advertising
Harness the power of prime locations. Erect outdoor advertisements at high-traffic stations such as "Streeter Dr & Grand Ave" and "Lake Shore Dr & Monroe St". Given their proximity to major tourist destinations, strategically placed ads can effectively catch the eye of casual riders.

### Strategy 3: Enticing Weekend Membership Discounts
Weekends see a surge in casual riders. To capitalize on this, introduce limited-time discounts on annual memberships during weekends. By making this offer time-sensitive, there's a higher likelihood of casual riders making impromptu decisions to upgrade.

### Strategy 4: Peak-Hour "Happy Hour" Membership Promotions
Leverage the weekdays' peak hours to woo the casual ridership market. Between the hours where casual ridership spikes, offer a "happy hour" discount on annual memberships. Not only does this provide an incentive to upgrade, but it also positions Cyclistic as a brand attuned to the needs and habits of its riders.

## In Summation:
The rich tapestry of data has unveiled a world of opportunity. Casual riders are not just users; they're potential loyalists awaiting the right nudge. By intersecting their habits with Cyclistic's offerings, we're not just pushing for conversions — we're curating an experience. An experience that takes a leisurely weekend ride around Chicago and transforms it into an enduring relationship with Cyclistic.

Cyclistic now stands at the precipice of a transformative marketing campaign. With data as the compass, the path forward is clear, strategic, and promising. It's time to pedal forward and embrace the future of urban commuting. Let's ride!
