# Speaker Notes

## Slide 1
Good morning everyone. Today, our group will present Apache Pig, a high-level data processing platform in the Hadoop ecosystem. Instead of explaining Pig only through theory, we will use the RetailRocket e-commerce dataset to show how it can process large-scale event data and produce useful business insights.

## Slide 2
This is the roadmap for the presentation. We will start with the Big Data problem, then introduce Apache Pig and Pig Latin, move to the RetailRocket dataset, and finally demonstrate a complete analysis workflow. We will end by discussing what the results mean from a business perspective and where Apache Pig is strong or limited.

## Slide 3
The first point is the nature of the problem. Modern e-commerce platforms record every user interaction, including product views, cart additions, and transactions. When this grows to millions of events, traditional manual processing or small-scale scripting becomes inefficient, and the main challenge becomes how to transform raw logs into usable information quickly.

## Slide 4
This is where Apache Pig becomes relevant. Hadoop MapReduce gives strong scalability, but writing raw MapReduce code requires significant development effort. Apache Pig was introduced to let engineers describe the data processing logic at a much higher level, which reduces complexity and shortens development time.

## Slide 5
Apache Pig can be defined as a high-level platform for processing and analyzing large datasets on Hadoop. Its main language is Pig Latin, which allows users to describe transformations such as loading, filtering, grouping, and aggregating data. Pig then translates these scripts into executable jobs, so users can focus more on analysis logic than on low-level distributed programming.

## Slide 6
This slide shows the architecture of Apache Pig. The user writes a Pig Latin script, Pig parses and validates it, builds a logical plan, applies optimizations, and then sends the work to the execution engine on Hadoop. The important idea here is abstraction: Pig sits between the analyst and the Hadoop cluster, handling many implementation details automatically.

## Slide 7
Pig Latin is the core language of Apache Pig. Unlike SQL, which is declarative, Pig Latin is more procedural and data-flow oriented. This makes it convenient for multi-step pipelines where data is loaded, transformed, grouped, and stored in sequence, especially when the workflow is more complex than a single query.

## Slide 8
Apache Pig has several practical strengths. First, its syntax is much simpler than raw MapReduce. Second, it can process large datasets because it still relies on Hadoop underneath. Third, it supports structured and semi-structured data, and finally, it works well for ETL and batch analytics tasks, which is why it became widely used in earlier Hadoop-based environments.

## Slide 9
This slide explains how a Pig script becomes a running job. Pig first parses the script, checks its correctness, builds a logical execution plan, optimizes that plan, and then generates a physical plan for Hadoop execution. Another useful concept here is lazy evaluation: Pig does not immediately run every command, but instead waits until an action such as `DUMP` or `STORE` triggers execution.

## Slide 10
Apache Pig supports two main execution modes. Local mode runs on a single machine and is useful for development, testing, and small datasets. MapReduce mode runs on a Hadoop cluster and is intended for large-scale distributed processing. This distinction is useful because it shows how Pig can support both simple experimentation and production-scale analytics.

## Slide 11
Here we compare Pig Latin with SQL and MapReduce. SQL is convenient for relational queries, but it is less natural for procedural multi-step data flows. MapReduce is flexible and powerful, but it is also low-level and verbose. Pig Latin sits between these two approaches by providing a readable workflow language while still running at Hadoop scale.

## Slide 12
The case study used in this presentation is the RetailRocket e-commerce dataset. This dataset contains real customer interaction records and is well suited for behavior analysis because it includes product views, add-to-cart events, and transactions. It provides a realistic example of how event data can be processed with Apache Pig.

## Slide 13
The most important file for this presentation is `events.csv`. Each row records a customer interaction, and the core fields are timestamp, visitor ID, event type, item ID, and transaction ID. It is important to understand this schema clearly because all of the analysis in the demo depends on these columns.

## Slide 14
The `event` field captures the main customer actions in the dataset. A `view` means the user looked at a product, `addtocart` means the user showed purchase intent, and `transaction` means the purchase was completed. These three events form a simple conversion funnel, which is why the dataset is useful not only technically but also from a business analysis perspective.

## Slide 15
Before showing Pig commands, we define the business questions that guide the analysis. We want to know how large the dataset is, how events are distributed, which products attract the most attention, which visitors are the most active, and how to persist the results for later use. Framing the demo around these questions makes the presentation more analytical and less like a syntax tutorial.

## Slide 16
This slide gives the full Pig analysis workflow. First, data is loaded into Pig. Then the schema is validated, sample records are checked, analytical transformations are executed, and the results are stored. This end-to-end view is important because it shows that Pig is useful for complete data pipelines, not just isolated command execution.

## Slide 17
These are the main Pig commands used in the demo. `LOAD` imports data, `FILTER` selects records, `GROUP` collects related data together, `FOREACH` transforms grouped records, `COUNT` aggregates them, `ORDER` sorts them, `LIMIT` selects the top subset, and `STORE` saves the output. Each command contributes to a business question, which is why they are presented as a coherent workflow rather than as isolated syntax.

## Slide 18
Apache Pig also supports complex data types such as tuples, bags, and maps. This matters because real-world data is often more complicated than a flat spreadsheet. By handling complex structures more naturally than raw MapReduce, Pig reduces development effort in semi-structured data workflows.

## Slide 19
The support for nested data becomes especially relevant in realistic ETL scenarios. Logs, event payloads, and semi-structured records often contain repeated or nested values. Pig helps flatten, reorganize, and process this kind of data with far less boilerplate than traditional MapReduce code.

## Slide 20
We now move into the live demo section. The environment uses Hadoop, HDFS, Apache Pig, and the RetailRocket dataset. The goal is not only to run commands, but to show how Apache Pig can answer practical business questions and generate reusable output.

## Slide 21
Before running commands, this slide provides the sequence of the demo. We will load the dataset, verify the schema, preview the records, perform several analyses, and then store the results. Showing this flow first makes it easier for the audience to follow the terminal actions that come next.

## Slide 22
The first step is loading the dataset. We use `LOAD` together with `PigStorage(',')` because the file is in CSV format, and the `AS` clause defines the schema. At this stage Pig creates a logical relation named `events`, and this is a good moment to explain lazy evaluation again: no heavy processing happens until an execution trigger appears.

## Slide 23
Our first business question is simple but important: how many events are in the dataset? To answer it, we use `GROUP ALL` to put all records into a single group, and then `COUNT(events)` to measure the total volume. This establishes the scale of the data and justifies the use of Big Data tools.

## Slide 24
The second business question is about event distribution. By grouping on the `event` field and counting the number of records in each group, we can quantify how customers interact with the platform. Typically, view events dominate, add-to-cart events are lower, and transactions are the smallest group, which reflects the expected customer conversion funnel.

## Slide 25
The third business question is product-oriented: which items receive the most views? We first filter the dataset to retain only `view` events, then group by `itemid`, count the views, sort in descending order, and return the top ten products. This result can support recommendation systems, marketing campaigns, and inventory prioritization.

## Slide 26
The fourth business question focuses on users: which visitors are the most active? By grouping on `visitorid` and counting total activities, we can rank customers by engagement level. It is important to clarify that activity does not necessarily mean revenue, but it is still a useful signal for customer engagement analysis and segmentation.

## Slide 27
The last technical step is storing the results. Using `STORE`, Pig writes the analytical outputs back to HDFS. This is important because it demonstrates that Pig is not only useful for interactive analysis, but also for producing persistent outputs that can feed dashboards, reports, or later ETL workflows.

## Slide 28
At this point, we move from technical output to business interpretation. The event distribution explains customer funnel behavior, top viewed products indicate customer interest, and top active visitors reveal engagement patterns. The key point is that raw event logs become information that supports business decisions.

## Slide 29
This slide gives a balanced evaluation of Apache Pig. Its main advantages are simplicity, productivity, and strong support for Hadoop-based batch analytics. Its limitations are also important: it is not designed for real-time analytics, and in modern environments it has often been replaced by newer tools such as Spark. Presenting both sides makes the seminar more technically credible.

## Slide 30
To conclude, this presentation followed a full narrative from problem to solution to outcome. We started with the challenge of processing large-scale event data, introduced Apache Pig and Pig Latin, applied them to a real e-commerce dataset, and showed how the outputs can support business insight. The main takeaway is that Apache Pig simplifies Hadoop-based data processing by letting users focus on logic rather than low-level implementation.

## Slide 31
Thank you for your attention. We are now ready to answer your questions.

## Suggested Speaker Allocation

### Member 1
- Slides 1 to 5
- Approximate time: 6 minutes
- Focus: introduction, problem framing, and definition of Apache Pig

### Member 2
- Slides 6 to 11
- Approximate time: 7 minutes
- Focus: architecture, Pig Latin, execution, and comparison with other approaches

### Member 3
- Slides 12 to 19
- Approximate time: 7 minutes
- Focus: dataset understanding, event interpretation, business questions, and analytical workflow

### Member 4
- Slides 20 to 31
- Approximate time: 10 minutes
- Focus: live demo, interpretation, conclusion, and Q&A handoff

## Suggested Time Allocation
- Introduction and motivation: 5 minutes
- Pig fundamentals: 7 minutes
- Dataset and business questions: 6 minutes
- Pig workflow and concepts: 4 minutes
- Live demo: 5 minutes
- Insights, conclusion, and Q&A handoff: 3 minutes

## Delivery Notes
- Keep the slide text short and let the spoken explanation carry the detail.
- Reuse the RetailRocket dataset as the anchor example throughout the talk.
- During the demo, always explain both the command and the business meaning.
- Use transition sentences clearly when moving between speakers.
- Keep a backup screenshot or chart ready for each important demo result.
