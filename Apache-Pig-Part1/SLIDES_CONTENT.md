# Slides Content

## Purpose
This file contains the standardized content plan for the full slide deck. Each slide follows the same structure so the team can convert it directly into PowerPoint, Google Slides, or another presentation tool.

# Slide 1

## Title
Apache Pig

## Objective
Introduce the topic and establish the case study.

## Content
- Simplifying Big Data Analytics
- Case Study: RetailRocket E-commerce Dataset
- Course, group, and team information

## Visual
- Clean title slide
- Apache Pig or Hadoop ecosystem graphic
- Minimal subtitle hierarchy

## Transition
Next, the presentation roadmap introduces the flow of the seminar.

# Slide 2

## Title
Presentation Roadmap

## Objective
Show the structure of the talk and the sequence of topics.

## Content
- Big Data challenge
- Apache Pig fundamentals
- RetailRocket dataset
- Pig Latin workflow
- Live demo
- Business insights
- Conclusion

## Visual
- Horizontal roadmap or vertical process flow
- Consistent chapter labels

## Transition
The presentation begins with the practical challenge of processing large-scale e-commerce data.

# Slide 3

## Title
The Big Data Challenge

## Objective
Frame the problem that motivates Apache Pig.

## Content
- E-commerce platforms produce massive event logs
- Traditional processing becomes complex at scale
- Large data volume slows analysis and delivery
- Event data must be transformed before it becomes useful

## Visual
- Event stream diagram
- Pipeline from raw logs to analytics

## Transition
Once the challenge is clear, the next step is to examine why Apache Pig is useful in this context.

# Slide 4

## Title
Why Apache Pig?

## Objective
Explain why Pig was introduced in the Hadoop ecosystem.

## Content
- MapReduce is powerful but verbose
- Development time increases with low-level implementation
- Apache Pig offers a higher-level data processing approach
- Pig improves productivity for ETL and batch analytics

## Visual
- Comparison: MapReduce complexity vs Pig simplicity
- Short table or side-by-side workflow

## Transition
After the motivation is established, the next slide defines Apache Pig directly.

# Slide 5

## Title
What Is Apache Pig?

## Objective
Provide a concise and accurate definition.

## Content
- High-level platform for processing large datasets
- Uses Pig Latin as a scripting language
- Runs on Hadoop
- Converts scripts into executable jobs automatically

## Visual
- Pig on top of Hadoop stack
- Definition box with four core points

## Transition
With the definition in place, the architecture explains how Pig works internally.

# Slide 6

## Title
Apache Pig Architecture

## Objective
Show how Pig connects user scripts to Hadoop execution.

## Content
- User writes Pig Latin
- Parser validates the script
- Optimizer builds execution plan
- Hadoop executes generated jobs
- Results are returned or stored

## Visual
- Unified architecture diagram:
  `Script -> Parser -> Optimizer -> Execution Engine -> Hadoop -> Output`

## Transition
The next topic introduces Pig Latin, the language used to express the workflow.

# Slide 7

## Title
Introduction to Pig Latin

## Objective
Introduce Pig Latin as the core language of Apache Pig.

## Content
- Data flow language
- Procedural transformation style
- Easier than raw MapReduce
- Suitable for sequential data processing pipelines

## Visual
- Simple transformation pipeline
- Short syntax example

## Transition
After the language is introduced, the main strengths of Apache Pig can be summarized.

# Slide 8

## Title
Key Features of Apache Pig

## Objective
Summarize the practical strengths of Pig.

## Content
- High-level syntax
- Scalable batch processing
- Support for structured and semi-structured data
- Extensibility through user-defined functions
- Strong fit for ETL workflows

## Visual
- Five-feature icon grid
- Clean, evenly weighted layout

## Transition
The next slide explains how Pig executes a script from definition to distributed processing.

# Slide 9

## Title
How Apache Pig Executes a Script

## Objective
Explain the execution lifecycle at a high level.

## Content
- Script parsing
- Logical plan generation
- Optimization
- Physical plan generation
- Hadoop job execution

## Visual
- Five-step execution pipeline
- Highlight lazy evaluation

## Transition
The execution lifecycle leads naturally to the two operating modes of Pig.

# Slide 10

## Title
Pig Execution Modes

## Objective
Distinguish local execution from distributed execution.

## Content
- Local mode for development and testing
- MapReduce mode for distributed large-scale processing
- Mode choice depends on data size and environment

## Visual
- Two-column comparison table
- Icons for local machine and cluster

## Transition
With execution modes covered, Pig Latin can now be positioned relative to SQL and MapReduce.

# Slide 11

## Title
Pig Latin in Context

## Objective
Compare Pig Latin with other data processing approaches.

## Content
- SQL is declarative
- Pig Latin is data-flow oriented
- MapReduce is low-level and verbose
- Pig balances readability and scalability

## Visual
- Three-column comparison: SQL, Pig Latin, MapReduce

## Transition
The theoretical foundation is complete, so the case study dataset can now be introduced.

# Slide 12

## Title
RetailRocket Dataset Overview

## Objective
Introduce the dataset used in the presentation and demo.

## Content
- Real e-commerce interaction dataset
- Customer activity across browsing and purchasing
- Suitable for event analysis and behavioral analytics
- Main file: `events.csv`

## Visual
- Dataset summary card
- Source and file overview

## Transition
The next slide focuses on the structure of the main dataset file.

# Slide 13

## Title
Understanding `events.csv`

## Objective
Make the dataset schema clear before analysis begins.

## Content
- `timestamp`
- `visitorid`
- `event`
- `itemid`
- `transactionid`
- Each row represents one interaction record

## Visual
- Example row and schema table
- Highlight key columns used in the demo

## Transition
After the schema is clear, the event types can be interpreted from a business perspective.

# Slide 14

## Title
Customer Event Types

## Objective
Explain the meaning of each event category.

## Content
- `view` indicates product interest
- `addtocart` indicates purchase intent
- `transaction` indicates completed purchase
- The three events form a simple conversion funnel

## Visual
- Funnel diagram:
  `View -> Add to Cart -> Transaction`

## Transition
With the dataset understood, the analysis questions can be defined explicitly.

# Slide 15

## Title
Business Questions

## Objective
Frame the analysis section around meaningful business goals.

## Content
- How many events exist in the dataset?
- What is the distribution of event types?
- Which products receive the most views?
- Which visitors are the most active?
- How are results stored for later use?

## Visual
- Question list with one icon per question

## Transition
The next slide shows the analysis workflow that answers these questions using Pig.

# Slide 16

## Title
Apache Pig Data Analysis Workflow

## Objective
Show the full analytical pipeline before the demo.

## Content
- Load data
- Validate schema
- Preview records
- Transform and aggregate
- Store output

## Visual
- Unified workflow:
  `Load -> Validate -> Explore -> Analyze -> Store`

## Transition
The commands used in this workflow are introduced on the next slide.

# Slide 17

## Title
Core Pig Latin Commands

## Objective
Introduce the commands that appear in the live demo.

## Content
- `LOAD`
- `FILTER`
- `GROUP`
- `FOREACH`
- `COUNT`
- `ORDER`
- `LIMIT`
- `STORE`

## Visual
- Command table with short purpose labels

## Transition
Beyond basic commands, Pig also supports complex data structures.

# Slide 18

## Title
Complex Data Support

## Objective
Show that Pig is useful beyond simple flat-file processing.

## Content
- Tuples
- Bags
- Maps
- Useful for semi-structured and nested data

## Visual
- Data type hierarchy diagram

## Transition
The next slide connects that capability to practical data pipeline scenarios.

# Slide 19

## Title
Processing Nested Data

## Objective
Relate Pig’s complex data support to real-world workloads.

## Content
- Nested records appear in logs and semi-structured formats
- Pig reduces transformation complexity
- This makes Pig useful for realistic ETL pipelines

## Visual
- Nested record to flattened analysis flow

## Transition
The theoretical section ends here and the presentation moves into the live demonstration.

# Slide 20

## Title
Live Demonstration Overview

## Objective
Prepare the audience for the demo section.

## Content
- Environment: Hadoop, HDFS, Apache Pig
- Input dataset: `events.csv`
- Demo focus: business questions, not only syntax
- Output: analytical results stored in HDFS

## Visual
- Demo architecture:
  `Dataset -> HDFS -> Pig -> Output`

## Transition
The next slide shows the exact demo flow before terminal execution begins.

# Slide 21

## Title
Demo Execution Workflow

## Objective
Show the order of operations in the live demo.

## Content
- `LOAD`
- `DESCRIBE`
- `DUMP`
- Analysis steps
- `STORE`

## Visual
- Ordered workflow with command checkpoints

## Transition
The first demo step loads the RetailRocket dataset into Apache Pig.

# Slide 22

## Title
Demo 1: Load the Dataset

## Objective
Load the dataset and define the schema.

## Content
- HDFS path
- `LOAD` command
- `PigStorage(',')`
- Schema declaration with `AS (...)`
- Relation name: `events`

## Visual
- Terminal screenshot and schema box

## Transition
After loading the dataset, the first analysis question measures total dataset size.

# Slide 23

## Title
Business Question 1: Count Total Events

## Objective
Measure the scale of the dataset.

## Content
- `GROUP events ALL`
- `COUNT(events)`
- `DUMP result`
- Interpret total volume as large-scale event data

## Visual
- Workflow from relation to total count
- Large metric callout

## Transition
After total volume is measured, the next step is to analyze event composition.

# Slide 24

## Title
Business Question 2: Event Distribution

## Objective
Understand the distribution of customer actions.

## Content
- Group by `event`
- Count each event category
- Sort by frequency
- Explain the behavior funnel

## Visual
- Bar chart or funnel chart

## Transition
Once overall behavior is visible, product-level interest can be analyzed.

# Slide 25

## Title
Business Question 3: Top Viewed Products

## Objective
Identify products with the highest customer attention.

## Content
- Filter `view` events
- Group by `itemid`
- Count views
- Sort descending
- Return top 10

## Visual
- Top-10 product chart

## Transition
Product popularity is useful, and the next step examines user activity directly.

# Slide 26

## Title
Business Question 4: Top Active Visitors

## Objective
Identify highly engaged users.

## Content
- Group by `visitorid`
- Count activities
- Sort descending
- Return top 10
- Connect to engagement analysis

## Visual
- Ranked visitor activity chart

## Transition
After the analysis steps are complete, the final demo stage stores the results.

# Slide 27

## Title
Demo 5: Store Analysis Results

## Objective
Persist output for downstream use.

## Content
- `STORE` command
- HDFS output directories
- Results can support dashboards, reporting, and later processing

## Visual
- Output folder structure
- Pipeline ending in HDFS results

## Transition
With the technical demo complete, the presentation summarizes the business meaning of the results.

# Slide 28

## Title
From Data Analysis to Business Insight

## Objective
Translate technical output into business interpretation.

## Content
- Event distribution reflects customer funnel behavior
- Top viewed products show customer interest
- Active visitors show engagement patterns
- Stored results support decision-making systems

## Visual
- Insight summary panel
- Business impact map

## Transition
After discussing value, the presentation closes with a balanced evaluation of Apache Pig.

# Slide 29

## Title
Advantages and Limitations of Apache Pig

## Objective
Present a credible and balanced conclusion.

## Content
- Advantages:
  - Simpler than MapReduce
  - Effective for ETL and batch analytics
  - Scales with Hadoop
- Limitations:
  - Not designed for real-time analytics
  - Less common in newer ecosystems
  - Not the best fit for every workload

## Visual
- Two-column strengths and limitations layout

## Transition
The final slide summarizes the entire narrative in one message.

# Slide 30

## Title
Conclusion

## Objective
Summarize the presentation and reinforce the main takeaway.

## Content
- Big Data creates processing challenges
- Apache Pig simplifies Hadoop-based analytics
- Pig Latin improves development efficiency
- RetailRocket demonstrates a practical use case
- Raw data can become business insight

## Visual
- Final narrative diagram:
  `Problem -> Pig -> Analysis -> Insight -> Decision`

## Transition
The presentation closes with the Q&A session.

# Slide 31

## Title
Q&A

## Objective
Close the presentation and invite questions.

## Content
- Thank you
- Questions

## Visual
- Minimal closing slide
- Consistent visual identity with title slide

## Transition
End of presentation.
