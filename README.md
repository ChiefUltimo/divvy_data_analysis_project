# Cyclistic Bike Share Case Study

## Welcome to the Cyclistic Bike-Share Analysis Case Study!

In this case study, we delve into historical data from Divvy, a Chicago-based bike-share company, to uncover customer trends. For this analysis, I employed tools such as Excel, SQL, and Tableau. This project serves as my capstone for the Google Data Analytics Professional Certificate. The methodology I adopted mirrors the six-stage process taught in the Google data analytics course: Ask, Prepare, Process, Analyze, Share, and Act.

You can access the data utilized in this study under the following license: Divvy Data License Agreement.

## Scenario

Cyclistic, stationed in Chicago, categorizes its bike-share customers into two segments: members and casual riders. While members avail unlimited rides throughout the year via an annual subscription, casual riders opt for individual full-day passes.

According to Cyclistic's financial analysts, annual members significantly outperform casual riders in terms of profitability. Hence, the company's prosperity hinges on transitioning casual riders to members. To achieve this, the executive team envisions a Q4 marketing campaign tailored for casual riders. The primary stakeholders are Cyclistic’s director of marketing and the executive team, while the marketing analytics team serves as secondary stakeholders. My role, as a marketing analyst, is to discern the behavioral nuances between these user types and offer actionable insights.

### Ask

The essence of this stage is formulating pertinent questions to comprehend the problem at hand.

Guiding this analysis are the questions:

How do casual riders' habits contrast with those of subscribers?
What strategies can be employed to transition casual riders into subscribers?
These questions culminate in the subsequent business task:

Business Task: Assess Cyclistic's Q4 trip data to discern patterns distinguishing user types, aiming to promote casual riders to annual members.

### Prepare

In this phase, the spotlight is on acquiring pertinent, unbiased, and credible data. Given the data's residence within the company’s public database, its credibility is affirmed. This data is structured in a CSV format, encompassing 12 fields and approximately 800,000 records.

We anchor our analysis to the Q4 2019 trip data, as it aligns with our objectives. The focus on Q4 is due to the upcoming executive-backed campaign for the same quarter. The choice of 2019 is deliberate; it's the most recent year unaffected by the COVID-19 pandemic. This dataset, rich with insights on trips, user types, durations, and stations, equips us to address our central question.

### Process

Here, the emphasis is on data sanitation—ensuring its integrity and priming it for analysis. A detailed account of this phase can be found in the change log.

### Analyze

At this juncture, the data is meticulously examined to unearth insights and potential resolutions to our business task. I structured the data into various tables using SQL within BigQuery. This stage facilitated the detection of pivotal trends and relationships.

The first step is to calculate the total trips overall along with the total trips for annual members and casual customers. Additionally I calculated the percentages of both user types over the overall total to get a better picture the data.

![table1](https://github.com/MaazKCodes/cyclistic_data_analysis_project/assets/145296540/19b4233a-1dc4-40bf-b9dc-5ffa3a82c665)


