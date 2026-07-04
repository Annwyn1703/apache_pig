# Apache Pig Demo Guide

## Demo Goal
Analyze the RetailRocket `events.csv` dataset with Apache Pig and answer business-driven questions using a clear and repeatable workflow.

## Demo Workflow
```text
Load Dataset
    ↓
Validate Schema
    ↓
Preview Sample Data
    ↓
Business Question 1: Total Events
    ↓
Business Question 2: Event Distribution
    ↓
Business Question 3: Top Viewed Products
    ↓
Business Question 4: Top Active Visitors
    ↓
Store Results
    ↓
Business Insight
```

## Environment
- Hadoop
- HDFS
- Apache Pig
- RetailRocket `events.csv`

## Demo Design Principle
The demo should be presented as a business-driven analytics workflow rather than a sequence of isolated commands. Each step should answer one clear question, show the relevant Pig logic, and end with a short interpretation.

## Input Path
```text
/pig-demo/input/events.csv
```

## Output Path
```text
/pig-demo/output/
```

## Pre-Demo Checks
- Verify Pig starts correctly.
- Verify Hadoop and HDFS are running.
- Verify `events.csv` exists in HDFS.
- Verify output directories are removed before running `STORE`.
- Keep backup screenshots ready.

## Step 1

### Title
Load Dataset

### Business Purpose
Create a structured relation for analysis.

### Pig Commands
```pig
events = LOAD '/pig-demo/input/events.csv'
USING PigStorage(',')
AS (
    timestamp:long,
    visitorid:long,
    event:chararray,
    itemid:long,
    transactionid:long
);
```

### Expected Output
No visible output yet. Pig defines the logical relation `events`.

### Explanation
This step imports the CSV file and assigns a schema so that later commands can process each field correctly.

### Presenter Note
State clearly that loading does not immediately mean full execution. Pig defines the relation first and executes when a trigger such as `DUMP` or `STORE` is invoked.

## Step 2

### Title
Validate Schema

### Business Purpose
Confirm that the dataset structure matches expectations.

### Pig Commands
```pig
DESCRIBE events;
```

### Expected Output
```text
events: {timestamp: long, visitorid: long, event: chararray, itemid: long, transactionid: long}
```

### Explanation
This check ensures that the dataset was loaded with the correct field names and types.

## Step 3

### Title
Preview Sample Data

### Business Purpose
Validate that the records look correct before analysis begins.

### Pig Commands
```pig
DUMP events;
```

### Expected Output
A few sample rows from the relation.

### Example Sample Rows
```text
(1433221332117,257597,view,355908,)
(1433224214164,992329,addtocart,248676,)
(1433221999826,111016,transaction,318965,12345)
```

### Explanation
This step confirms that the input file contains valid event records and that the schema aligns with the data.

### Presenter Note
If the dataset is very large, use a prepared screenshot or a smaller sample during the presentation rather than printing too many rows live.

## Step 4

### Title
Business Question 1: Total Events

### Business Purpose
Measure dataset scale.

### Pig Commands
```pig
grp_all = GROUP events ALL;
total_events = FOREACH grp_all GENERATE COUNT(events);
DUMP total_events;
```

### Expected Output
```text
(2756101)
```

### Explanation
This step shows that the dataset contains millions of events, which justifies a Big Data processing approach.

### Business Insight
The event volume is large enough to motivate distributed batch processing.

### Presenter Note
Use this result to connect technical scale to the course theme. A dataset of this size is large enough to justify Hadoop-era distributed processing concepts.

## Step 5

### Title
Business Question 2: Event Distribution

### Business Purpose
Understand how customers interact with the platform.

### Pig Commands
```pig
event_groups = GROUP events BY event;
event_distribution = FOREACH event_groups GENERATE
    group AS event_type,
    COUNT(events) AS total_events;
event_distribution = ORDER event_distribution BY total_events DESC;
DUMP event_distribution;
```

### Expected Output
```text
(view,2664312)
(addtocart,69332)
(transaction,22457)
```

### Explanation
This step groups activity by event type and quantifies the customer behavior funnel.

### Business Insight
Views dominate the dataset, while add-to-cart and transaction events narrow toward purchase completion.

### Presenter Note
This is the best point in the demo to pause and discuss customer funnel behavior. A small chart on the slide is more effective than terminal output alone.

## Step 6

### Title
Business Question 3: Top Viewed Products

### Business Purpose
Identify products that attract the most customer attention.

### Pig Commands
```pig
views = FILTER events BY event == 'view';
views_by_item = GROUP views BY itemid;
product_views = FOREACH views_by_item GENERATE
    group AS itemid,
    COUNT(views) AS total_views;
product_views = ORDER product_views BY total_views DESC;
top_products = LIMIT product_views 10;
DUMP top_products;
```

### Expected Output
Top 10 product IDs ranked by number of views.

### Example Output
```text
(461686,1245)
(312728,1187)
(7943,1142)
(10572,1094)
(237891,1028)
```

### Explanation
This step isolates view behavior and ranks products by customer attention.

### Business Insight
Highly viewed products can inform promotion, recommendation, and inventory decisions.

### Presenter Note
Explain that this is not yet a revenue ranking. It is an attention ranking, which is often used earlier in the funnel for merchandising and recommendation analysis.

## Step 7

### Title
Business Question 4: Top Active Visitors

### Business Purpose
Identify highly engaged users.

### Pig Commands
```pig
visitor_groups = GROUP events BY visitorid;
visitor_activity = FOREACH visitor_groups GENERATE
    group AS visitorid,
    COUNT(events) AS total_activities;
visitor_activity = ORDER visitor_activity BY total_activities DESC;
top_visitors = LIMIT visitor_activity 10;
DUMP top_visitors;
```

### Expected Output
Top 10 visitor IDs ranked by activity count.

### Example Output
```text
(1150086,775)
(530559,721)
(152963,698)
(845312,612)
(331245,604)
```

### Explanation
This step measures engagement by counting how many interactions each visitor generated.

### Business Insight
Highly active visitors are useful for engagement analysis, retention strategies, and segmentation.

### Presenter Note
Clarify that frequent activity may indicate strong interest, repeated browsing, or indecision. It should not be interpreted as direct purchasing value without transaction analysis.

## Step 8

### Title
Store Results

### Business Purpose
Persist the output for downstream analytics and reporting.

### Pig Commands
```pig
STORE event_distribution
INTO '/pig-demo/output/event_distribution'
USING PigStorage(',');

STORE top_products
INTO '/pig-demo/output/top_products'
USING PigStorage(',');

STORE top_visitors
INTO '/pig-demo/output/top_visitors'
USING PigStorage(',');
```

### Expected Output
HDFS directories containing `part-*` output files.

### Explanation
This step completes the workflow by writing analysis results to persistent storage.

### Business Insight
The results can now support dashboards, reports, ETL pipelines, and later analytical tasks.

### Presenter Note
If time permits, show the HDFS output directory to prove that the workflow completed end to end.

## Optional Verification Commands
```bash
hdfs dfs -ls /pig-demo/output/
hdfs dfs -cat /pig-demo/output/top_products/part-r-00000
```

## End-of-Demo Summary
- The dataset was loaded and validated successfully.
- Pig answered four business-driven analytical questions.
- The results were written back to HDFS.
- Apache Pig demonstrated a full batch analytics workflow from raw data to reusable output.

## Common Demo Mistakes
- Wrong HDFS path in `LOAD`
- Schema mismatch with CSV columns
- Output directory already exists before `STORE`
- Using `DUMP events;` on a very large dataset without sampling
- Forgetting to explain the business meaning of the output

## Backup Plan
- Keep screenshots of expected terminal output.
- Keep static charts for event distribution, top products, and top visitors.
- Prepare a prerecorded short demo video.
- Keep Pig scripts in a separate file for copy-paste recovery.

## Demo Summary
```text
Raw Event Data
    ↓
Pig Latin Workflow
    ↓
Aggregated Output
    ↓
Business Interpretation
    ↓
Decision Support
```
