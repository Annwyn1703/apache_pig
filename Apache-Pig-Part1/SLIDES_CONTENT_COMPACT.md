# Slides Content Compact

# Slide 1
## Apache Pig
- Simplifying Big Data Analytics
- RetailRocket E-commerce Dataset
- Course, group, team

# Slide 2
## Presentation Roadmap
- Big Data challenge
- Pig fundamentals
- Dataset, demo, insights, conclusion

# Slide 3
## The Big Data Challenge
- Massive e-commerce event logs
- Traditional processing is slow and complex
- Raw data must be transformed into insight

# Slide 4
## Why Apache Pig?
- MapReduce is powerful but verbose
- Pig provides higher-level data processing
- Faster ETL and batch analytics workflow

# Slide 5
## What Is Apache Pig?
- High-level platform for large-scale data processing
- Uses Pig Latin
- Runs on Hadoop

# Slide 6
## Apache Pig Architecture
- Pig Latin script
- Parser and optimizer
- Hadoop execution and output

# Slide 7
## Introduction to Pig Latin
- Data flow language
- Procedural transformation style
- Easier than raw MapReduce

# Slide 8
## Key Features of Apache Pig
- High-level syntax
- Scalable batch processing
- ETL-friendly and semi-structured data support

# Slide 9
## How Apache Pig Executes a Script
- Parse
- Optimize
- Execute on Hadoop

# Slide 10
## Pig Execution Modes
- Local mode
- MapReduce mode
- Choice depends on scale

# Slide 11
## Pig Latin in Context
- SQL is declarative
- Pig is data-flow oriented
- MapReduce is low-level

# Slide 12
## RetailRocket Dataset Overview
- Real e-commerce interaction data
- Useful for behavior analysis
- Main file: `events.csv`

# Slide 13
## Understanding `events.csv`
- `timestamp`
- `visitorid`, `event`
- `itemid`, `transactionid`

# Slide 14
## Customer Event Types
- `view`
- `addtocart`
- `transaction`

# Slide 15
## Business Questions
- How many events?
- What is the event distribution?
- Which products and visitors are most active?

# Slide 16
## Apache Pig Data Analysis Workflow
- Load
- Validate and preview
- Analyze and store

# Slide 17
## Core Pig Latin Commands
- `LOAD`, `FILTER`, `GROUP`
- `COUNT`, `ORDER`, `LIMIT`
- `STORE`

# Slide 18
## Complex Data Support
- Tuples
- Bags
- Maps

# Slide 19
## Processing Nested Data
- Logs often contain nested records
- Pig reduces transformation complexity
- Useful for ETL

# Slide 20
## Live Demonstration Overview
- Hadoop, HDFS, Pig
- Input: `events.csv`
- Output stored in HDFS

# Slide 21
## Demo Execution Workflow
- `LOAD`
- `DESCRIBE` and `DUMP`
- Analysis and `STORE`

# Slide 22
## Demo 1: Load the Dataset
- HDFS path
- `LOAD` with `PigStorage(',')`
- Relation: `events`

# Slide 23
## Business Question 1: Count Total Events
- `GROUP ALL`
- `COUNT`
- Total dataset size

# Slide 24
## Business Question 2: Event Distribution
- Group by `event`
- Count event types
- Explain funnel behavior

# Slide 25
## Business Question 3: Top Viewed Products
- Filter `view`
- Group by `itemid`
- Top 10 products

# Slide 26
## Business Question 4: Top Active Visitors
- Group by `visitorid`
- Count activities
- Top 10 visitors

# Slide 27
## Store Analysis Results
- `STORE` output
- Save to HDFS
- Reuse for reporting

# Slide 28
## From Data Analysis to Business Insight
- Event distribution shows funnel behavior
- Top products show interest
- Top visitors show engagement

# Slide 29
## Advantages and Limitations of Apache Pig
- Simpler than MapReduce
- Good for batch ETL
- Not ideal for real-time workloads

# Slide 30
## Conclusion
- Big Data creates processing challenges
- Apache Pig simplifies Hadoop analytics
- Raw data can become business insight

# Slide 31
## Q&A
- Thank you
- Questions
