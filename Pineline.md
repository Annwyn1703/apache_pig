# Apache Pig - Part 1

## Full Presentation Pipeline

### Case Study: RetailRocket E-commerce Dataset

---
 
 # 0. Presentation Overview

## Topic

**Apache Pig**

## Case Study

**RetailRocket E-commerce Dataset**

## Duration

**30 minutes presentation + demo**
**15 minutes Q&A**

## Main Storyline

```text
Big Data Problem
   ↓
Apache Pig as a Solution
   ↓
Pig Latin Data Flow
   ↓
RetailRocket Dataset
   ↓
Business Questions
   ↓
Live Demo
   ↓
Business Insights
   ↓
Conclusion
```

## Core Message

Apache Pig helps data engineers process large-scale data on Hadoop using simple Pig Latin scripts instead of complex Java MapReduce programs.

---

# 1. Time Allocation

| Section                   | Slides |     Time |
| ------------------------- | -----: | -------: |
| Introduction & Motivation |    1–4 |    4 min |
| Apache Pig Fundamentals   |   5–11 |    8 min |
| RetailRocket Dataset      |  12–15 |    5 min |
| Pig Latin & Data Analysis |  16–19 |    4 min |
| Live Demo                 |  20–27 | 8–10 min |
| Business Insights         |  28–29 |    3 min |
| Conclusion & Q&A          |  30–31 |  1–2 min |

---

# 2. Slide-by-Slide Presentation Pipeline

---

## Slide 1 — Title

### Slide Content

**Apache Pig**
**Case Study: RetailRocket E-commerce Dataset**

Course: Big Data 
instructor: Le Duy Tan
Group: Group Nhóm1: 
1.Dương Bình An.
2.Lê Quang Tuyến.
3.Phạm Đức Long.
4.Đỗ Quốc Trung.
5.Dương Hồng Quân.
6.Nguyễn Lê Hồng Nhi.
### Speaking Script

Good morning everyone.
Today, our group will present **Apache Pig**, a high-level data processing platform in the Hadoop ecosystem.

Instead of introducing Apache Pig only through theory, we will use the **RetailRocket E-commerce Dataset** to show how Apache Pig helps process and analyze large-scale customer behavior data.

By the end of this presentation, we will understand how Apache Pig simplifies Big Data processing and transforms raw data into useful business insights.

### Visual Suggestion

```text
Big Data
   ↓
Apache Pig
   ↓
RetailRocket Dataset
   ↓
Business Insights
```

### Presentation Note

Start confidently. Do not explain too much here. This slide only sets the topic and case study.

### Transition

Before going into Apache Pig, let’s first look at the presentation roadmap.

---

## Slide 2 — Presentation Roadmap

### Slide Content

**From Big Data Challenges to Business Insights using Apache Pig**

1. Big Data Challenge
2. Apache Pig Fundamentals
3. RetailRocket Dataset
4. Pig Latin & Data Analysis
5. Live Demo
6. Business Insights
7. Conclusion & Q&A

### Speaking Script

This is the roadmap of our presentation.

We will begin with the challenge of processing Big Data. Then, we will introduce Apache Pig, its role in Hadoop, and the Pig Latin language.

After that, we will introduce the RetailRocket dataset, define the business questions, and demonstrate how Apache Pig answers those questions through a live demo.

Finally, we will summarize the business value, advantages, and limitations of Apache Pig.

### Visual Suggestion

```text
Problem → Solution → Dataset → Demo → Insight → Conclusion
```

### Presentation Note

Make the audience understand that this is a case-study presentation, not only a theory presentation.

### Transition

Now let’s begin with the first question: why do we need Big Data processing tools?

---

## Slide 3 — Big Data Challenge

### Slide Content

**The Challenge of Processing Big Data**

Modern e-commerce platforms generate millions of customer interactions:

* Product views
* Add-to-cart actions
* Purchase transactions
* Product searches
* Clickstream events

**RetailRocket Dataset**

* Domain: E-commerce user behavior
* Main file: `events.csv`
* Scale: 2.7+ million customer events
* Event types: `view`, `addtocart`, `transaction`

### Speaking Script

To understand the value of Apache Pig, we first need to understand the problem.

Modern e-commerce platforms such as Amazon, Shopee, and Lazada record millions of customer activities every day. Each time a customer views a product, adds an item to cart, or completes a purchase, the system generates an event.

In our presentation, we use the RetailRocket E-commerce Dataset. It contains more than 2.7 million customer events, which makes it a suitable example for Big Data analytics.

The challenge is: how can we analyze millions of records efficiently without writing complex low-level programs?

### Visual Suggestion

```text
Customer
   ↓
View Product
   ↓
Add to Cart
   ↓
Purchase
   ↓
Millions of Events
   ↓
Big Data Challenge
```

### Presentation Note

Do not define Big Data too much. Focus on the practical problem: too many events, difficult to process manually.

### Transition

This leads to the need for a simpler tool for large-scale data processing. That is where Apache Pig comes in.

---

## Slide 4 — Why Apache Pig?

### Slide Content

**Why Do We Need Apache Pig?**

Traditional Hadoop development:

```text
Business Question
   ↓
Write Mapper
   ↓
Write Reducer
   ↓
Write Driver
   ↓
Compile & Run
   ↓
Result
```

Apache Pig:

```text
Business Question
   ↓
Pig Latin Script
   ↓
Apache Pig
   ↓
MapReduce Jobs
   ↓
Result
```

### Speaking Script

Before Apache Pig, developers usually had to write Java MapReduce programs to process large datasets on Hadoop.

Even for a simple question such as “How many purchase transactions are recorded?”, developers may need to write a Mapper, a Reducer, and a Driver program.

Apache Pig simplifies this process. Instead of writing low-level Java code, developers write Pig Latin scripts. Apache Pig automatically converts these scripts into MapReduce jobs.

This allows developers to focus on data analysis and business logic instead of implementation details.

### Visual Suggestion

Use a side-by-side comparison:

```text
Java MapReduce              Apache Pig
Mapper                      Pig Latin
Reducer                     Automatic Processing
Driver                      Automatic Job Generation
Long Code                   Few Statements
```

### Presentation Note

This slide must clearly show the motivation: Pig exists because MapReduce is powerful but complex.

### Transition

Now that we know why Pig is useful, let’s define what Apache Pig actually is.

---

## Slide 5 — What is Apache Pig?

### Slide Content

**Apache Pig**

Apache Pig is a high-level data processing platform built on Hadoop.

It allows developers to analyze large datasets using a scripting language called **Pig Latin**.

**Key Features**

* High-level language
* Runs on Hadoop
* Automatically generates MapReduce jobs
* Supports ETL
* Scalable for large datasets

### Speaking Script

Apache Pig is a high-level data processing platform that runs on top of Hadoop.

Its main language is Pig Latin. Instead of writing Java MapReduce code directly, developers write Pig Latin scripts. Apache Pig then translates these scripts into executable MapReduce jobs.

Apache Pig is commonly used for ETL, log processing, data cleaning, and batch analytics.

In our case study, we use Pig to analyze customer behavior from the RetailRocket dataset.

### Visual Suggestion

```text
Data Engineer
   ↓
Pig Latin
   ↓
Apache Pig
   ↓
MapReduce
   ↓
HDFS
```

### Presentation Note

Make clear that Pig is not a database and not a replacement for Hadoop. It is an abstraction layer over Hadoop.

### Transition

Next, let’s see how Apache Pig works internally.

---

## Slide 6 — Apache Pig Architecture

### Slide Content

**How Does Apache Pig Work?**

```text
Pig Latin Script
   ↓
Parser
   ↓
Logical Plan
   ↓
Optimizer
   ↓
Physical Plan
   ↓
MapReduce Jobs
   ↓
HDFS
```

### Speaking Script

This slide shows how Apache Pig executes a Pig Latin script.

First, the developer writes a Pig Latin script. Pig parses the script and checks its syntax. Then it creates a logical plan, optimizes it, and converts it into a physical plan.

After that, Pig generates one or more MapReduce jobs. Hadoop executes those jobs and stores the results in HDFS.

The key idea is that developers only write Pig Latin, while Apache Pig handles parsing, optimization, compilation, and execution.

### Visual Suggestion

Use a vertical pipeline diagram with three layers:

```text
Developer Layer: Pig Latin
Pig Engine Layer: Parser, Optimizer, Compiler
Hadoop Layer: MapReduce, HDFS
```

### Presentation Note

Do not go too deep into parser or optimizer. Keep it basic.

### Transition

Now that we understand the architecture, let’s look at the language used by Pig: Pig Latin.

---

## Slide 7 — Introduction to Pig Latin

### Slide Content

**Pig Latin: The Language of Apache Pig**

Pig Latin is a high-level **data flow language**.

It is:

* Not exactly SQL
* Not Java
* Designed for data transformation
* Used to describe a processing pipeline

Example flow:

```text
LOAD
   ↓
FILTER
   ↓
GROUP
   ↓
FOREACH
   ↓
STORE
```

### Speaking Script

Pig Latin is the scripting language used by Apache Pig.

It is different from SQL and Java. SQL is mainly used for querying relational databases. Java MapReduce is a low-level programming approach. Pig Latin is designed as a data flow language.

In Pig Latin, we describe how data flows through a sequence of transformations. For example, we load data, filter records, group them, calculate results, and store the output.

This data flow model makes Pig scripts easier to understand and maintain.

### Visual Suggestion

```text
Raw Data
   ↓
LOAD
   ↓
FILTER
   ↓
GROUP
   ↓
COUNT
   ↓
STORE
```

### Presentation Note

Emphasize “data flow language”. This is the most important concept.

### Transition

Next, let’s summarize the key features that make Apache Pig useful for Big Data analytics.

---

## Slide 8 — Apache Pig Features

### Slide Content

**Key Features of Apache Pig**

| Feature                | Meaning                                   |
| ---------------------- | ----------------------------------------- |
| High-level             | Easier than Java MapReduce                |
| Data Flow              | Step-by-step transformation               |
| Hadoop-based           | Runs on Hadoop and HDFS                   |
| Automatic Optimization | Optimizes execution plans                 |
| ETL                    | Good for data cleaning and transformation |
| Analytics              | Useful for batch data analysis            |

### Speaking Script

Apache Pig provides several important features.

First, it is high-level, meaning that developers can write fewer lines of code compared to Java MapReduce.

Second, Pig follows a data flow model. Each command transforms data and passes the result to the next command.

Third, Pig runs on Hadoop, so it can process large datasets stored in HDFS.

It is also useful for ETL and batch analytics. In the RetailRocket case study, these features help us analyze millions of customer events with simple Pig Latin scripts.

### Visual Suggestion

Feature cards:

```text
High-Level | Data Flow | Hadoop-Based | Optimization | ETL | Analytics
```

### Presentation Note

Keep this slide short. Do not repeat the architecture in detail.

### Transition

After understanding Pig’s features, let’s look at how Pig executes scripts internally.

---

## Slide 9 — Apache Pig Execution Workflow

### Slide Content

**Pig Execution Pipeline**

```text
Pig Latin Script
   ↓
Parser
   ↓
Logical Plan
   ↓
Optimizer
   ↓
Compiler
   ↓
MapReduce
   ↓
HDFS
```

### Speaking Script

When we submit a Pig Latin script, Pig does not execute it directly line by line.

Instead, Pig first validates the script, creates a logical plan, optimizes that plan, and then generates MapReduce jobs.

This means that Pig works like a translator. It translates our high-level data processing logic into distributed jobs that Hadoop can execute.

### Visual Suggestion

```text
Developer writes: Pig Latin
Pig handles: parsing, optimization, compilation
Hadoop handles: distributed execution
```

### Presentation Note

This slide overlaps with Slide 6, so keep it as an execution summary. Do not repeat all details.

### Transition

Next, let’s look at where Pig can run: Local Mode and MapReduce Mode.

---

## Slide 10 — Pig Execution Modes

### Slide Content

**Execution Modes**

| Mode           | Description            | Use Case              |
| -------------- | ---------------------- | --------------------- |
| Local Mode     | Runs on one machine    | Testing and debugging |
| MapReduce Mode | Runs on Hadoop cluster | Big Data processing   |

Commands:

```bash
pig -x local
pig
```

### Speaking Script

Apache Pig supports two execution modes.

Local Mode runs on a single machine and uses the local file system. It is useful for development, testing, and debugging.

MapReduce Mode runs on a Hadoop cluster and uses HDFS. It is suitable for production and large-scale data processing.

For our demo, we can test with a smaller sample locally, but in real production, the same script can run in MapReduce Mode on Hadoop.

### Visual Suggestion

```text
Apache Pig
   ├── Local Mode → Testing
   └── MapReduce Mode → Big Data Processing
```

### Presentation Note

Be clear which mode your group will use in the actual demo.

### Transition

Now that we know how Pig runs, let’s move to our case study dataset.

---

## Slide 11 — Pig Latin as Working Language

### Slide Content

**Pig Latin in Our Demo**

In this presentation, Pig Latin will be used to:

* Load `events.csv`
* Filter customer events
* Group records by event, item, or visitor
* Count and sort results
* Store output

### Speaking Script

In the rest of the presentation, Pig Latin will be our working language.

Every business question will be answered using Pig Latin commands. For example, to identify top viewed products, we will filter view events, group by product ID, count the number of views, sort the result, and select the top records.

This connects the theory of Pig Latin directly to our live demo.

### Visual Suggestion

```text
Business Question
   ↓
Pig Latin Commands
   ↓
Analysis Result
```

### Presentation Note

This slide acts as a bridge from theory to dataset.

### Transition

Now let’s introduce the RetailRocket dataset used in the case study.

---

# Chapter 3 — RetailRocket Dataset

---

## Slide 12 — Dataset Overview

### Slide Content

**RetailRocket E-commerce Dataset**

Source: Kaggle
Domain: E-commerce customer behavior

Files:

* `events.csv`
* `category_tree.csv`
* `item_properties_part1.csv`
* `item_properties_part2.csv`

Focus for demo:

* `events.csv`

### Speaking Script

For our case study, we use the RetailRocket E-commerce Dataset from Kaggle.

This dataset contains real customer behavior from an online retail platform.

Although the dataset has several files, our demo focuses on `events.csv`, because it records user actions such as product views, add-to-cart actions, and transactions.

This file is enough to demonstrate the core data processing operations in Apache Pig.

### Visual Suggestion

```text
RetailRocket Dataset
   ├── events.csv ✅
   ├── category_tree.csv
   ├── item_properties_part1.csv
   └── item_properties_part2.csv
```

### Presentation Note

Mention that other files exist but are not used in this basic demo.

### Transition

Next, let’s look at the structure of the main file, `events.csv`.

---

## Slide 13 — Understanding events.csv

### Slide Content

**Main File: `events.csv`**

| Column          | Meaning                  |
| --------------- | ------------------------ |
| `timestamp`     | Time of event            |
| `visitorid`     | Customer ID              |
| `event`         | User action              |
| `itemid`        | Product ID               |
| `transactionid` | Purchase ID if available |

### Speaking Script

The main file used in our demo is `events.csv`.

Each row represents one customer interaction with the e-commerce platform.

The `timestamp` column records when the event happened. The `visitorid` identifies the customer. The `event` column tells us what action the customer performed. The `itemid` identifies the product, and `transactionid` appears only when the event is a completed purchase.

This structure allows us to analyze customer activity, product popularity, and purchasing behavior.

### Visual Suggestion

Show one sample table row:

```text
timestamp | visitorid | event | itemid | transactionid
```

### Presentation Note

Make sure the audience understands the meaning of `event`, because it is used heavily in the demo.

### Transition

Now let’s understand the event types in this dataset.

---

## Slide 14 — Event Types

### Slide Content

**Customer Journey**

```text
Customer
   ↓
View
   ↓
Add To Cart
   ↓
Transaction
```

Event types:

* `view`: customer views a product
* `addtocart`: customer adds product to cart
* `transaction`: customer completes purchase

### Speaking Script

The `event` column has three important values.

The first is `view`, which means a customer viewed a product page.

The second is `addtocart`, which means the customer added a product to the shopping cart.

The third is `transaction`, which means the customer completed a purchase.

Together, these event types represent the customer journey from product interest to purchase.

### Visual Suggestion

Use a funnel:

```text
View
████████████████

Add to Cart
██████

Transaction
██
```

### Presentation Note

Mention that not every customer completes the full journey.

### Transition

Now that we understand the data, we can define the business questions for analysis.

---

## Slide 15 — Business Analytics Questions

### Slide Content

**Business Questions**

1. How many customer events are recorded?
2. How many views, add-to-cart actions, and transactions are there?
3. Which products are viewed most frequently?
4. Which customers are the most active?
5. Can we save the analysis results?

### Speaking Script

After understanding the dataset, the next step is to turn raw data into analytical questions.

Imagine we are data engineers working for an e-commerce company. Instead of reading millions of raw records, management wants answers to practical questions.

These questions include total events, event distribution, top viewed products, active customers, and saved output for reporting.

In the demo, each question will be answered using Pig Latin.

### Visual Suggestion

```text
Raw Data
   ↓
Business Questions
   ↓
Apache Pig Analysis
   ↓
Insights
```

### Presentation Note

This slide is the bridge from dataset understanding to data analysis.

### Transition

Next, we will show the Pig Latin workflow used to answer these questions.

---

# Chapter 4 — Pig Latin & Data Analysis

---

## Slide 16 — Pig Data Flow

### Slide Content

**Pig Data Flow**

```text
LOAD
   ↓
FILTER
   ↓
GROUP
   ↓
FOREACH
   ↓
COUNT
   ↓
ORDER
   ↓
LIMIT
   ↓
STORE
```

### Speaking Script

Apache Pig uses a data flow model.

Each command transforms the input data and produces a new relation for the next step.

For example, to find the most viewed products, we load the dataset, filter only view events, group by item ID, count views, sort the results, and return the top records.

This pipeline is easy to read and easier to maintain than Java MapReduce code.

### Visual Suggestion

```text
events.csv → LOAD → FILTER → GROUP → COUNT → ORDER → LIMIT → STORE
```

### Presentation Note

Do not explain every command deeply yet. This slide shows the full pipeline.

### Transition

Next, let’s summarize the main Pig commands used in this pipeline.

---

## Slide 17 — Core Pig Commands

### Slide Content

| Command | Purpose          | Demo Example      |
| ------- | ---------------- | ----------------- |
| LOAD    | Read data        | Load `events.csv` |
| FILTER  | Select records   | Keep only `view`  |
| GROUP   | Group records    | Group by `itemid` |
| FOREACH | Transform output | Generate count    |
| COUNT   | Count rows       | Count events      |
| ORDER   | Sort results     | Sort by views     |
| LIMIT   | Return top N     | Top 10 products   |
| STORE   | Save output      | Save to HDFS      |

### Speaking Script

These are the core Pig commands used in our demo.

`LOAD` reads the dataset. `FILTER` selects records that match a condition. `GROUP` organizes records by a field, such as product ID or visitor ID.

`FOREACH` and `COUNT` generate aggregated results. `ORDER` sorts the output, and `LIMIT` returns the top records.

Finally, `STORE` saves the output for later use.

### Visual Suggestion

Use a command table and highlight commands that appear in demo.

### Presentation Note

This is a compact command reference. Do not spend too much time.

### Transition

Before the demo, let’s briefly introduce how Pig can also handle complex data.

---

## Slide 18 — Complex Data Support

### Slide Content

**Pig Data Types**

| Type      | Meaning              |
| --------- | -------------------- |
| Primitive | Single value         |
| Tuple     | Ordered fields       |
| Bag       | Collection of tuples |
| Map       | Key-value pairs      |

### Speaking Script

Apache Pig can process both simple and complex data types.

Primitive values are single values such as numbers or strings. A tuple is an ordered group of fields. A bag is a collection of tuples, and a map stores key-value pairs.

Although our demo uses a structured CSV dataset, Pig is also useful for semi-structured data such as JSON, XML, logs, and clickstream data.

### Visual Suggestion

```text
Primitive → Tuple → Bag → Map
```

### Presentation Note

Keep this section basic. Do not go too deep because the main focus is demo.

### Transition

Next, we briefly explain how Pig can transform nested data into structured output.

---

## Slide 19 — Processing Complex Data

### Slide Content

**Nested Data Processing**

```text
Nested Data
   ↓
FLATTEN
   ↓
Structured Output
```

Example:

```text
Customer → Orders → Products
```

After flattening:

```text
Customer | Product | Price
```

### Speaking Script

In real Big Data systems, data is not always stored in simple tables. It can appear as JSON, XML, or nested logs.

Apache Pig provides operations such as `FLATTEN` to convert nested data into a structured format.

In our RetailRocket demo, the dataset is already stored as CSV, so we do not need to use `FLATTEN`. However, this feature is important because real-world Big Data often contains nested structures.

### Visual Suggestion

```text
JSON / XML / Logs
   ↓
Apache Pig
   ↓
FLATTEN
   ↓
Table-like output
```

### Presentation Note

This slide can be shortened during presentation if time is limited.

### Transition

Now we have enough background. Let’s move to the live demonstration.

---

# Chapter 5 — Live Demo

---

## Slide 20 — Demo Overview

### Slide Content

**Live Demo: Analyzing RetailRocket with Apache Pig**

Environment:

* Apache Pig
* Hadoop
* HDFS
* `events.csv`
* Pig script: `retailrocket_demo.pig`

Demo objective:

* Load dataset
* Analyze events
* Identify top products
* Identify top visitors
* Store results

### Speaking Script

We now move to the live demo.

In this demo, we use Apache Pig to analyze the RetailRocket `events.csv` file.

The dataset is stored in HDFS, and Pig will process it using Pig Latin scripts.

The demo will follow a complete pipeline: load data, explore data, answer business questions, and store the results.

### Visual Suggestion

```text
events.csv
   ↓
HDFS
   ↓
Apache Pig
   ↓
Pig Latin Script
   ↓
Analysis Results
```

### Presentation Note

Before demo, make sure Hadoop, Pig, dataset, and script are already prepared.

### Transition

Let’s look at the demo workflow before running the commands.

---

## Slide 21 — Demo Workflow

### Slide Content

```text
events.csv
   ↓
LOAD
   ↓
DESCRIBE
   ↓
DUMP
   ↓
Analysis
   ↓
STORE
```

Analysis includes:

* Count total events
* Count event types
* Top viewed products
* Top active visitors

### Speaking Script

This is the demo workflow.

We start by loading `events.csv` into Pig. Then we verify the schema using `DESCRIBE` and preview sample data using `DUMP`.

After that, we perform several analyses: count total events, count event types, identify top viewed products, and identify top active visitors.

Finally, we store the results.

### Visual Suggestion

```text
Load → Validate → Analyze → Store → Insight
```

### Presentation Note

This slide helps the audience follow the terminal demo.

### Transition

Now let’s start with Demo 1: loading the dataset.

---

## Slide 22 — Demo 1: Load Dataset

### Slide Content

**Task:** Load `events.csv`

Command:

```pig
events = LOAD '/pig-demo/input/events.csv'
USING PigStorage(',')
AS (
    timestamp:long,
    visitorid:long,
    event:chararray,
    itemid:long,
    transactionid:chararray
);
```

### Speaking Script

The first step is to load the dataset into Pig.

We use the `LOAD` command and `PigStorage(',')` because the file is comma-separated.

The `AS` clause defines the schema. It tells Pig the meaning and data type of each column.

After this command, Pig creates a relation named `events`, which will be used in the following analysis steps.

### Related Demo Note

If the dataset has a header row, use:

```pig
events_raw = LOAD '/pig-demo/input/events.csv'
USING PigStorage(',')
AS (
    timestamp:chararray,
    visitorid:chararray,
    event:chararray,
    itemid:chararray,
    transactionid:chararray
);

events = FILTER events_raw BY timestamp != 'timestamp';
```

### Presentation Note

Mention Pig lazy evaluation: the data is not fully executed until `DUMP` or `STORE`.

### Transition

Now that the dataset is loaded, let’s measure the total scale of the dataset.

---

## Slide 23 — Demo 2: Count Total Events

### Slide Content

**Business Question:**
How many customer events are recorded?

Commands:

```pig
grp = GROUP events ALL;

total_events = FOREACH grp
GENERATE COUNT(events) AS total;

DUMP total_events;
```

### Speaking Script

Our first business question is: how many customer events are stored in the dataset?

To answer this, we use `GROUP ALL` to place all records into one group. Then we use `COUNT` to count every record.

The output shows the total number of customer events. This helps us understand the scale of the dataset.

### Expected Output

```text
(2756101)
```

If using a sample file, the number will be smaller.

### Presentation Note

Use this result to emphasize that the dataset is large enough for Big Data demonstration.

### Transition

Now that we know the total scale, let’s analyze the distribution of event types.

---

## Slide 24 — Demo 3: Count Event Types

### Slide Content

**Business Question:**
How many views, add-to-cart actions, and transactions are there?

Commands:

```pig
grp = GROUP events BY event;

event_distribution = FOREACH grp
GENERATE
    group AS event_type,
    COUNT(events) AS total_events;

event_distribution = ORDER event_distribution BY total_events DESC;

DUMP event_distribution;
```

### Speaking Script

The second analysis is event distribution.

We group the dataset by the `event` column and count the number of records in each event type.

This tells us how many views, add-to-cart actions, and transactions occurred.

Usually, view events are much higher than transactions. This reflects the customer conversion funnel: many users view products, fewer add items to cart, and even fewer complete purchases.

### Expected Output

```text
(view,2664312)
(addtocart,69332)
(transaction,22457)
```

### Presentation Note

Use a bar chart if possible. This result is easy to understand visually.

### Transition

After understanding event distribution, let’s identify which products attract the most customer attention.

---

## Slide 25 — Demo 4: Top Viewed Products

### Slide Content

**Business Question:**
Which products receive the most views?

Commands:

```pig
views = FILTER events BY event == 'view';

grp = GROUP views BY itemid;

product_views = FOREACH grp
GENERATE
    group AS itemid,
    COUNT(views) AS total_views;

product_views = ORDER product_views BY total_views DESC;

top_products = LIMIT product_views 10;

DUMP top_products;
```

### Speaking Script

This analysis identifies the most viewed products.

First, we filter only `view` events because we want to measure product interest.

Then we group the data by `itemid`, count the number of views per product, sort the results in descending order, and return the top 10 products.

This result is useful for product recommendation, homepage promotion, and inventory planning.

### Expected Output

```text
(itemid,total_views)
(...)
```

Replace with actual result from your demo.

### Presentation Note

Do not spend time explaining every line too slowly. Focus on the pipeline: filter, group, count, sort, limit.

### Transition

Next, we analyze customer activity by finding the most active visitors.

---

## Slide 26 — Demo 5: Top Active Visitors

### Slide Content

**Business Question:**
Which customers are the most active?

Commands:

```pig
grp = GROUP events BY visitorid;

visitor_activity = FOREACH grp
GENERATE
    group AS visitorid,
    COUNT(events) AS total_activities;

visitor_activity = ORDER visitor_activity BY total_activities DESC;

top_visitors = LIMIT visitor_activity 10;

DUMP top_visitors;
```

### Speaking Script

This analysis finds the most active visitors.

We group all events by `visitorid`, then count how many actions each visitor performed.

After sorting the result in descending order, we return the top 10 visitors.

This helps identify highly engaged users. However, high activity does not always mean high purchase value, because some users may view many products without buying.

### Expected Output

```text
(visitorid,total_activities)
(...)
```

### Presentation Note

Connect this to customer segmentation and CRM.

### Transition

Now that we have generated the analysis results, the final step is to store them.

---

## Slide 27 — Demo 6: Store Results

### Slide Content

**Task:** Save output and complete the pipeline.

Commands:

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

### Speaking Script

The final step is to store the processed results.

Using the `STORE` command, Pig writes the output back to HDFS.

This is important because analysis results can be reused for dashboards, reports, visualization, or downstream data pipelines.

At this point, we have completed the full Apache Pig workflow: load, transform, analyze, and store.

### Verification Commands

```bash
hdfs dfs -ls /pig-demo/output/
hdfs dfs -cat /pig-demo/output/top_products/part-r-00000
```

### Presentation Note

Before running `STORE`, make sure the output folder does not already exist. Pig does not overwrite existing output directories.

Use:

```bash
hdfs dfs -rm -r /pig-demo/output/top_products
```

### Transition

With the demo complete, let’s discuss the business value of these results.

---

# Chapter 6 — Business Insights

---

## Slide 28 — Business Insights

### Slide Content

```text
Top Products
   ↓
Recommendation

Top Users
   ↓
Promotion

Transaction
   ↓
Conversion Rate
```

### Speaking Script

The demo results are not only technical outputs. They can support real business decisions.

Top viewed products can be used for recommendation systems, homepage promotion, and inventory planning.

Top active users can support personalized marketing, loyalty programs, and customer segmentation.

Event distribution and transaction counts can help analyze the conversion funnel and identify where customers drop off before purchasing.

### Visual Suggestion

```text
Raw Events
   ↓
Apache Pig
   ↓
Analytics Results
   ↓
Business Insights
   ↓
Business Decisions
```

### Presentation Note

This is the slide where you connect technical work to business value. Speak clearly and confidently.

### Transition

Although Apache Pig is useful, it is important to evaluate its advantages and limitations.

---

## Slide 29 — Advantages & Limitations

### Slide Content

**Advantages**

* Easy to learn
* Fewer lines of code
* Good for ETL
* Suitable for batch processing
* Runs on Hadoop

**Limitations**

* Not real-time
* No native machine learning
* Less used in modern systems compared with Spark
* Mainly designed for batch processing

### Speaking Script

Apache Pig has several advantages.

It is easier to learn than Java MapReduce, requires fewer lines of code, and is well suited for ETL and batch analytics.

However, Pig also has limitations. It is not designed for real-time analytics or streaming. It also does not provide native machine learning support.

In modern Big Data systems, Apache Spark is often preferred for advanced analytics, streaming, and machine learning workloads.

Therefore, Apache Pig is suitable for Hadoop-based ETL and batch processing, but it should be chosen based on the specific use case.

### Visual Suggestion

Two-column layout:

```text
Advantages        Limitations
Easy              Not real-time
ETL               No native ML
Batch             Spark preferred today
```

### Presentation Note

Do not say Pig is outdated. Say it is still useful for batch ETL, but Spark is stronger for modern workloads.

### Transition

Now let’s conclude the presentation.

---

# Chapter 7 — Conclusion

---

## Slide 30 — Conclusion

### Slide Content

```text
Business Problem
   ↓
RetailRocket Dataset
   ↓
Apache Pig
   ↓
Pig Latin
   ↓
Big Data Analytics
   ↓
Business Insights
```

Key takeaway:

Apache Pig simplifies Big Data processing by allowing developers to focus on business logic instead of low-level MapReduce programming.

### Speaking Script

To conclude, we explored how Apache Pig simplifies Big Data analytics in the Hadoop ecosystem.

We started with the challenge of processing millions of customer events. Then we introduced Apache Pig and Pig Latin as a high-level solution for large-scale data processing.

Using the RetailRocket dataset, we demonstrated how Apache Pig can load data, analyze customer behavior, identify top products and active users, and store the final results.

The key message is that Big Data is valuable not only because we process large volumes of data, but because we transform that data into insights that support better decisions.

### Visual Suggestion

```text
Raw Data → Processing → Information → Insight → Decision
```

### Presentation Note

End with confidence. This is the final message before Q&A.

### Transition

Thank you for listening. We are ready for your questions.

---

## Slide 31 — Q&A

### Slide Content

**Thank You**
**Questions?**

### Speaking Script

Thank you for your attention.
We are happy to answer your questions.

### Visual Suggestion

Use a clean slide with:

```text
Q&A
Thank You
```

### Presentation Note

All members should be ready to answer. Prepare expected questions before presentation.

---

# 3. Full Demo Preparation Pipeline

## Folder Structure

```text
apache-pig-demo/
│
├── data/
│   └── events.csv
│
├── scripts/
│   └── retailrocket_demo.pig
│
└── output/
```

## HDFS Setup

```bash
hdfs dfs -mkdir -p /pig-demo/input
hdfs dfs -mkdir -p /pig-demo/output
hdfs dfs -put data/events.csv /pig-demo/input/
```

## Clean Old Output Before Running

```bash
hdfs dfs -rm -r /pig-demo/output/event_distribution
hdfs dfs -rm -r /pig-demo/output/top_products
hdfs dfs -rm -r /pig-demo/output/top_visitors
```

---

# 4. Full Pig Demo Script

```pig
-- ============================================================
-- Apache Pig Demo
-- Dataset: RetailRocket E-commerce events.csv
-- Purpose: Analyze customer behavior using Pig Latin
-- ============================================================

-- 1. Load raw dataset
events_raw = LOAD '/pig-demo/input/events.csv'
USING PigStorage(',')
AS (
    timestamp:chararray,
    visitorid:chararray,
    event:chararray,
    itemid:chararray,
    transactionid:chararray
);

-- 2. Remove header
events = FILTER events_raw BY timestamp != 'timestamp';

-- 3. Check schema
DESCRIBE events;

-- 4. Preview data
sample_events = LIMIT events 10;
DUMP sample_events;

-- ============================================================
-- Analysis 1: Count total events
-- ============================================================

all_events = GROUP events ALL;

total_events = FOREACH all_events
GENERATE COUNT(events) AS total_event_count;

DUMP total_events;

-- ============================================================
-- Analysis 2: Count events by type
-- ============================================================

event_group = GROUP events BY event;

event_distribution = FOREACH event_group
GENERATE
    group AS event_type,
    COUNT(events) AS total_events;

event_distribution = ORDER event_distribution BY total_events DESC;

DUMP event_distribution;

-- ============================================================
-- Analysis 3: Count transactions
-- ============================================================

transactions = FILTER events BY event == 'transaction';

transaction_group = GROUP transactions ALL;

transaction_count = FOREACH transaction_group
GENERATE COUNT(transactions) AS total_transactions;

DUMP transaction_count;

-- ============================================================
-- Analysis 4: Top 10 viewed products
-- ============================================================

views = FILTER events BY event == 'view';

item_group = GROUP views BY itemid;

product_views = FOREACH item_group
GENERATE
    group AS itemid,
    COUNT(views) AS total_views;

product_views = ORDER product_views BY total_views DESC;

top_products = LIMIT product_views 10;

DUMP top_products;

-- ============================================================
-- Analysis 5: Top 10 active visitors
-- ============================================================

visitor_group = GROUP events BY visitorid;

visitor_activity = FOREACH visitor_group
GENERATE
    group AS visitorid,
    COUNT(events) AS total_activities;

visitor_activity = ORDER visitor_activity BY total_activities DESC;

top_visitors = LIMIT visitor_activity 10;

DUMP top_visitors;

-- ============================================================
-- Store outputs
-- ============================================================

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

---

# 5. Demo Execution Commands

## Run Pig Script

```bash
pig scripts/retailrocket_demo.pig
```

## Check HDFS Output

```bash
hdfs dfs -ls /pig-demo/output/
```

## View Output Files

```bash
hdfs dfs -cat /pig-demo/output/event_distribution/part-r-00000
hdfs dfs -cat /pig-demo/output/top_products/part-r-00000
hdfs dfs -cat /pig-demo/output/top_visitors/part-r-00000
```

---

# 6. Important Demo Notes

## Before Presentation

* Test Hadoop.
* Test Pig.
* Upload dataset to HDFS.
* Run script once before class.
* Save screenshots of successful output.
* Prepare a backup video demo.
* Prepare a smaller sample dataset.

## During Presentation

* Do not type all commands manually.
* Use a prepared `.pig` script.
* Explain the business question before running each analysis.
* Show the output and explain what it means.
* Avoid spending too long debugging.

## Common Issues

### Output folder already exists

Fix:

```bash
hdfs dfs -rm -r /pig-demo/output/top_products
```

### Header row causes type error

Fix:

```pig
events = FILTER events_raw BY timestamp != 'timestamp';
```

### Full dataset runs slowly

Fix:

```bash
head -n 100001 events.csv > events_sample.csv
```

Use sample file for live demo.

---

# 7. Member Presentation Allocation

## 4-Member Group Example

| Member   | Slides | Responsibility                      |   Time |
| -------- | -----: | ----------------------------------- | -----: |
| Member 1 |    1–7 | Introduction, Big Data, Why Pig     |  7 min |
| Member 2 |   8–15 | Pig features, architecture, dataset |  7 min |
| Member 3 |  16–21 | Pig commands, workflow, demo setup  |  6 min |
| Member 4 |  22–31 | Live demo, insights, conclusion     | 10 min |

## Note

All members must participate. The demo presenter should rehearse carefully and prepare a backup screenshot or video.

---

# 8. Presentation Delivery Tips

## Keep the Story Consistent

Always connect back to this storyline:

```text
Raw Customer Events
   ↓
Apache Pig Processing
   ↓
Analysis Results
   ↓
Business Insights
```

## Avoid Saying

* “This is just syntax.”
* “Pig is old.”
* “We only count data.”
* “This is simple.”

## Better Phrases

* “Apache Pig simplifies distributed data processing.”
* “This analysis converts raw event logs into business insights.”
* “The goal is not only to run commands, but to answer business questions.”
* “Pig is suitable for batch-oriented ETL and analytics.”

---

# 9. Final Checklist

## Slide Checklist

* [ ] Slide titles consistent
* [ ] Dataset mentioned throughout the deck
* [ ] Demo steps match slide order
* [ ] Diagrams are clean
* [ ] Tables are readable
* [ ] No duplicated content
* [ ] No unnecessary text

## Demo Checklist

* [ ] Hadoop running
* [ ] Pig installed
* [ ] Dataset uploaded
* [ ] Script tested
* [ ] Output folders cleaned
* [ ] Backup screenshots prepared
* [ ] Backup video prepared

## Presentation Checklist

* [ ] Each member has a speaking part
* [ ] Timing tested
* [ ] Demo presenter rehearsed
* [ ] Q&A prepared
* [ ] Final files submitted by group leader

---

# 10. Expected Q&A

## Q1. Why use Apache Pig instead of Java MapReduce?

Apache Pig is easier to use because it allows developers to write Pig Latin scripts instead of complex Java MapReduce code.

## Q2. Is Apache Pig a database?

No. Apache Pig is a data processing platform, not a database. It processes data stored in systems such as HDFS.

## Q3. What is Pig Latin?

Pig Latin is a high-level data flow language used by Apache Pig to process large datasets.

## Q4. Why use RetailRocket Dataset?

Because it contains real-world e-commerce customer behavior and is suitable for demonstrating Big Data analytics.

## Q5. What is the difference between Pig and Hive?

Pig is more data-flow oriented and useful for ETL. Hive is more SQL-like and useful for data warehousing.

## Q6. Can Pig process real-time data?

No. Pig is mainly designed for batch processing, not real-time streaming.

## Q7. Can Pig perform machine learning?

Not natively. It can prepare data for machine learning, but ML tasks usually require other frameworks.

## Q8. Why do we use GROUP ALL?

`GROUP ALL` groups the entire dataset into one group, allowing us to count all records.

## Q9. Why do we use LIMIT?

`LIMIT` is used to return only the top N records, such as top 10 products or top 10 visitors.

## Q10. Why is STORE important?

`STORE` saves the final output so that it can be reused for reports, dashboards, or further processing.
