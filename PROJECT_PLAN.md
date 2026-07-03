# Apache Pig - Part 1

## Simplifying Big Data Analytics using Apache Pig

### Case Study: RetailRocket E-commerce Dataset

**Presentation Duration:** 30 minutes

## Full Presentation Structure

### Chapter 1
Introduction & Motivation

### Chapter 2
Apache Pig Fundamentals

### Chapter 3
RetailRocket Dataset

### Chapter 4
Pig Latin & Data Analysis

### Chapter 5
Live Demo

### Chapter 6
Business Insights

### Chapter 7
Conclusion

---

## Chapter 1 - Introduction & Motivation

### Slide 1
**Apache Pig**  
**Simplifying Big Data Analytics**  
**Case Study: RetailRocket E-commerce Dataset**

**Purpose**
- Introduce the topic
- Set the tone for a technical case study

**Talking point**
- Instead of introducing Apache Pig only through theory, the presentation will use a real e-commerce dataset to show how Pig helps process Big Data.
Đây là nội dung mình khuyến nghị cho **Slide 1**. Mục tiêu là **chuyên nghiệp, ít chữ, tạo được bối cảnh ngay từ đầu**.

---

# Slide 1 — Title

## **Apache Pig**

### *Simplifying Big Data Analytics*

#### **Case Study**

### **RetailRocket E-commerce Dataset**

---

**Course:** Big Data

**Presentation:** Apache Pig – Part 1

**Group:** *Group XX*

**Members:**

* Member 1
* Member 2
* Member 3
* Member 4

---

## 🎯 Slide Objective

* Introduce the presentation topic.
* Present the case study that will be used throughout the presentation.
* Establish that the presentation combines **theory + practical demonstration**.

---

## 🗣 Speaker Notes (1 minute)

> Good morning everyone.
>
> Today, our group will present **Apache Pig**, a high-level data processing platform in the Hadoop ecosystem.
>
> Instead of introducing Apache Pig only through theoretical concepts, we will demonstrate how it can solve a real-world Big Data problem using the **RetailRocket E-commerce Dataset**.
>
> Throughout this presentation, we will explore the motivation behind Apache Pig, its architecture, Pig Latin programming, and finally perform a live demonstration to analyze millions of customer interaction records collected from an e-commerce platform.
>
> By the end of this presentation, you will understand how Apache Pig simplifies Big Data processing and transforms raw data into meaningful business insights.

---

## 💡 Visual Design Suggestion

### Background Image

* Hadoop Ecosystem illustration
* Apache Pig logo
* E-commerce shopping illustration
* Data pipeline graphic

### Center Diagram

```text
          Big Data
              │
              ▼
        Apache Pig
              │
              ▼
    RetailRocket Dataset
              │
              ▼
    Business Insights
```

---

## 🎤 Transition to Slide 2

> Before discussing Apache Pig, let's first look at the roadmap of today's presentation and understand how the different sections connect together.

---

### Slide 2
**Agenda**
- Motivation
- Apache Pig
- Pig Architecture
- Dataset
- Pig Latin
- Demo
- Business Insight
- Conclusion

**Purpose**
- Show the roadmap of the presentation
Mình khuyên **Slide 2 không nên chỉ là Agenda**. Thay vào đó, hãy dùng **Presentation Roadmap** để người nghe hiểu câu chuyện của bài thuyết trình. Điều này chuyên nghiệp hơn nhiều.

---

# Slide 2 — Presentation Roadmap

## **Presentation Roadmap**

> **From Big Data Challenges to Business Insights using Apache Pig**

---

### Chapter 1 — Understanding the Problem

* Big Data Challenges
* Why Traditional Data Processing Is Difficult

---

### Chapter 2 — Apache Pig Fundamentals

* What is Apache Pig?
* Why Apache Pig?
* Apache Pig Architecture
* Pig Execution Modes
* Pig Latin Basics

---

### Chapter 3 — Case Study: RetailRocket Dataset

* Dataset Overview
* Business Scenario
* Data Analysis Workflow

---

### Chapter 4 — Live Demonstration

* Load Dataset
* Analyze Customer Behavior
* Generate Business Insights
* Store Results

---

### Chapter 5 — Conclusion

* Key Takeaways
* Advantages & Limitations
* Q&A

---

## 🎯 Learning Objectives

By the end of this presentation, you will be able to:

* Understand the role of Apache Pig in the Hadoop ecosystem.
* Explain how Pig Latin simplifies Big Data processing.
* Apply Pig Latin to analyze a real-world e-commerce dataset.
* Interpret analysis results and derive meaningful business insights.

---

## 💡 Visual Design Suggestion

Thay vì bullet thông thường, dùng timeline ngang:

```text
Big Data
Challenge
      │
      ▼
Apache Pig
Fundamentals
      │
      ▼
RetailRocket
Dataset
      │
      ▼
Live
Demo
      │
      ▼
Business
Insights
      │
      ▼
Conclusion
```

Hoặc dạng process flow:

```text
Problem
   →
Solution
   →
Case Study
   →
Implementation
   →
Business Value
```

---

## 🎤 Speaker Notes (~1 phút)

> Before we begin, let me briefly introduce the roadmap of today's presentation.
>
> We will start by discussing the challenges of processing Big Data and why traditional approaches are often inefficient.
>
> Next, we will introduce Apache Pig, including its architecture, execution modes, and the Pig Latin language.
>
> After that, we will present the RetailRocket e-commerce dataset, which serves as our case study throughout the presentation.
>
> We will then perform a live demonstration using Apache Pig to answer several business questions based on this dataset.
>
> Finally, we will summarize the key takeaways and discuss the practical value of Apache Pig in Big Data analytics.

---

## 🔗 Transition to Slide 3

> **Now that we have an overview of today's presentation, let's start with the first question: Why do we need Big Data processing tools like Apache Pig in the first place?**

➡️ **Next Slide:** **Big Data Challenge**

---

### Slide 3
**Data Explosion**

**Visual flow**
```text
Internet
   ↓
Social Media
   ↓
IoT
   ↓
E-commerce
   ↓
Big Data
```

**Talking point**
- Ngày nay dữ liệu tăng theo cấp số nhân.

**Purpose**
- Create the problem space

Theo mình, **Slide 3 là một trong những slide quan trọng nhất**. Đừng bắt đầu bằng "Big Data là gì?", vì sinh viên học môn Big Data đều đã biết khái niệm này.

Thay vào đó, hãy bắt đầu bằng **một bài toán thực tế**, rồi mới dẫn đến Apache Pig.

---

# Slide 3 — Big Data Challenge

## **The Challenge of Processing Big Data**

### Real-World Scenario: E-commerce Platform

Every second, an e-commerce platform records thousands of customer interactions:

* 👀 Product Views
* 🛒 Add-to-Cart Actions
* 💳 Purchase Transactions
* ❤️ Wishlist & Click Events
* 🔍 Product Searches

These interactions continuously generate **massive volumes of data**, making traditional data processing increasingly difficult.

---

## Example: RetailRocket Dataset

The **RetailRocket E-commerce Dataset** represents real customer behavior collected from an online retail platform.

**Dataset Characteristics**

| Feature      | Description                                       |
| ------------ | ------------------------------------------------- |
| Domain       | E-commerce User Behavior                          |
| Main Dataset | `events.csv`                                      |
| Records      | **2.7+ million customer events**                  |
| Event Types  | View, Add-to-Cart, Transaction                    |
| Purpose      | Analyze customer behavior and purchasing patterns |

---

## Traditional Data Processing

```text
Millions of Customer Events
            │
            ▼
 Traditional SQL / Manual Processing
            │
            ▼
 ❌ Slow
 ❌ Difficult to Scale
 ❌ High Development Cost
```

---

## The Challenge

> **How can we efficiently analyze millions of customer events without writing complex Java MapReduce programs?**

➡️ **Apache Pig provides a simpler, high-level solution for Big Data analytics.**

---

# 🎯 Slide Objective

Sau slide này, người nghe phải hiểu được:

* Big Data không chỉ là "dữ liệu lớn" mà là **một bài toán xử lý dữ liệu**.
* RetailRocket là **case study xuyên suốt** của bài.
* Apache Pig được tạo ra để giải quyết bài toán này.

---

# 💡 Visual Design Suggestion

### Bên trái

Infographic hành vi khách hàng:

```text
Customer
     │
     ▼
 View Product
     │
     ▼
 Add to Cart
     │
     ▼
 Purchase
```

### Bên phải

Pipeline dữ liệu:

```text
Millions of Events
        │
        ▼
RetailRocket Dataset
        │
        ▼
Big Data Challenge
        │
        ▼
Apache Pig
```

Hoặc dùng icon:

* 👤 Customer
* 👀 View
* 🛒 Cart
* 💳 Payment
* 📊 Dataset
* 🐷 Apache Pig

---

# 🎤 Speaker Notes (~2 phút)

> To understand the value of Apache Pig, let's first consider a real-world business scenario.
>
> Imagine an e-commerce platform such as Amazon, Shopee, or Lazada. Every second, customers perform actions like viewing products, adding items to their shopping carts, and completing purchases. Each action is recorded as an event, and over time these events accumulate into millions of records.
>
> In our presentation, we use the **RetailRocket E-commerce Dataset**, which contains more than **2.7 million customer events**. This dataset is an excellent example of the type of data that organizations need to process and analyze.
>
> If we rely only on traditional processing methods or low-level Java MapReduce programs, development becomes complex, time-consuming, and difficult to maintain.
>
> Therefore, we need a higher-level solution that simplifies Big Data analytics while still leveraging Hadoop's distributed processing capabilities. This is exactly the role of **Apache Pig**, which we will introduce in the next section.

---

## 🔗 Transition to Slide 4

> **Now that we understand the business problem, the next question is: *How can we solve it efficiently?* Let's introduce Apache Pig and see why it was developed.**

---

### Slide 4
**Why Big Data Matters**

**Examples**
- Amazon
- Shopee
- Lazada
- Netflix
- Facebook

**Flow**
```text
Millions of Users
   ↓
Billions of Events
   ↓
Need Analytics
```

**Purpose**
- Explain why large-scale analytics is needed
Theo flow hiện tại:

* **Slide 3:** Big Data Challenge (Problem)
* **Slide 4:** Why Apache Pig? (Solution)
* **Slide 5:** What is Apache Pig? (Definition)
* **Slide 6:** Apache Pig Architecture

=> **Slide 4 không nên định nghĩa Apache Pig ngay**, mà nên trả lời câu hỏi:

> **"Tại sao chúng ta cần Apache Pig?"**

Đây là slide chuyển tiếp từ **Problem → Solution**.

---

# Slide 4 — Why Apache Pig?

## **Why Do We Need Apache Pig?**

### From Complex Programming to Simple Data Analysis

Apache Pig was developed to **simplify large-scale data processing on Hadoop** by providing a high-level scripting language called **Pig Latin**.

Instead of writing low-level Java MapReduce programs, developers only need to describe **what** data transformations they want to perform.

---

## Traditional MapReduce vs Apache Pig

| Java MapReduce                 | Apache Pig                      |
| ------------------------------ | ------------------------------- |
| Write Mapper                   | Write Pig Latin Script          |
| Write Reducer                  | Automatic Processing            |
| Write Driver                   | Automatic Job Generation        |
| Hundreds of lines of Java code | Only a few Pig Latin statements |
| Focus on implementation        | Focus on business logic         |

---

## Processing Comparison

### Traditional Hadoop Development

```text
Business Question
        │
        ▼
Write Java Mapper
        │
        ▼
Write Java Reducer
        │
        ▼
Write Driver Program
        │
        ▼
Compile & Package
        │
        ▼
Run MapReduce Job
        │
        ▼
Analysis Result
```

---

### Apache Pig

```text
Business Question
        │
        ▼
Write Pig Latin Script
        │
        ▼
Apache Pig
        │
        ▼
Automatically Generate
MapReduce Jobs
        │
        ▼
Analysis Result
```

---

## Example

### Business Question

> **How many purchase transactions are recorded in the RetailRocket dataset?**

### Using Java MapReduce

* Create Mapper class
* Create Reducer class
* Create Driver class
* Compile and deploy
* Execute Hadoop job

### Using Apache Pig

```pig
transactions = FILTER events BY event == 'transaction';

grp = GROUP transactions ALL;

result = FOREACH grp GENERATE COUNT(transactions);
```

Only **3 Pig Latin statements** are needed.

---

## Key Takeaway

> **Apache Pig enables developers to focus on data analysis and business logic, while Hadoop automatically handles the distributed execution.**

---

# 🎯 Slide Objective

Sau slide này, người nghe cần hiểu:

* Apache Pig ra đời để giải quyết sự phức tạp của Java MapReduce.
* Pig **không thay thế Hadoop**, mà **đơn giản hóa việc sử dụng Hadoop**.
* Pig Latin giúp tăng năng suất phát triển và giảm lượng mã cần viết.

---

# 💡 Visual Design Suggestion

### Left Side

```text
Java MapReduce

Business Question
        │
        ▼
Mapper
        │
Reducer
        │
Driver
        │
Compile
        │
Run
        │
Result
```

### Right Side

```text
Apache Pig

Business Question
        │
        ▼
Pig Latin
        │
Apache Pig
        │
MapReduce
        │
Result
```

Ở giữa đặt một mũi tên lớn:

```text
Complex
      ─────────►
Simple
```

Hoặc

```text
Low-Level Programming
          │
          ▼
High-Level Data Flow
```

---

# 🎤 Speaker Notes (~2 phút)

> In the previous slide, we saw that analyzing millions of customer events using traditional approaches can be challenging.
>
> One option is to use Java MapReduce directly. While it is powerful, even a simple analytical task requires developers to write Mapper, Reducer, and Driver classes, compile the program, and submit it to Hadoop.
>
> Apache Pig was introduced to simplify this process. Instead of focusing on low-level programming, developers write concise Pig Latin scripts that describe the required data transformations.
>
> Apache Pig then automatically converts these scripts into optimized MapReduce jobs and executes them on Hadoop.
>
> As shown in the example, counting the number of transaction events in the RetailRocket dataset requires only a few Pig Latin statements, allowing developers to focus on solving business problems rather than implementation details.

---

## 🔗 Transition to Slide 5

> **Now that we understand why Apache Pig was developed, let's look at what Apache Pig actually is, its key features, and the role it plays within the Hadoop ecosystem.**

---

### Slide 5
**Business Problem**

**RetailRocket**

**Flow**
```text
Customer
   ↓
View Product
   ↓
Add To Cart
   ↓
Purchase
   ↓
Millions of Logs
   ↓
Need Big Data Processing
```

**Purpose**
- Turn the Big Data discussion into a concrete business case
Đến đây flow sẽ là:

* **Slide 3:** Big Data Challenge *(Problem)*
* **Slide 4:** Why Apache Pig? *(Why Solution)*
* **👉 Slide 5:** What is Apache Pig? *(Definition + Features + Position in Hadoop)*
* **Slide 6:** Apache Pig Architecture *(How it Works)*

Đây là **Slide 5**.

---

# Slide 5 — What is Apache Pig?

## **What is Apache Pig?**

### Definition

> **Apache Pig is a high-level data processing platform built on Hadoop that enables developers to analyze large datasets using a scripting language called Pig Latin.**

Instead of writing Java MapReduce programs, developers write concise **Pig Latin scripts**, while Apache Pig automatically translates them into executable MapReduce jobs.

---

## Key Features

| Feature                    | Description                                         |
| -------------------------- | --------------------------------------------------- |
| **High-Level Language**    | Uses Pig Latin instead of Java MapReduce            |
| **Runs on Hadoop**         | Leverages Hadoop for distributed processing         |
| **Automatic Optimization** | Optimizes execution plans before running jobs       |
| **Supports ETL**           | Suitable for Extract, Transform, and Load workflows |
| **Scalable**               | Designed to process large-scale datasets            |
| **Extensible**             | Supports User Defined Functions (UDFs)              |

---

## Where Does Apache Pig Fit?

```text
                    Hadoop Ecosystem

          +----------------------------+
          |          HDFS              |
          +----------------------------+
                     ▲
                     │
          +----------------------------+
          |       MapReduce            |
          +----------------------------+
                     ▲
                     │
          +----------------------------+
          |       Apache Pig           |
          |       (Pig Latin)          |
          +----------------------------+
                     ▲
                     │
               Data Engineer
```

---

## Typical Use Cases

Apache Pig is commonly used for:

* ETL (Extract, Transform, Load)
* Log file processing
* Customer behavior analysis
* Clickstream analytics
* Data cleaning and preprocessing
* Batch data processing

---

## RetailRocket Example

Using the **RetailRocket Dataset**, Apache Pig can help answer questions such as:

* How many customer events were recorded?
* Which products are viewed most frequently?
* Which customers are the most active?
* How many completed transactions occurred?

---

## 🎯 Slide Objective

After this slide, the audience should understand:

* What Apache Pig is.
* How Pig differs from Java MapReduce.
* Why Pig is a high-level abstraction over Hadoop.
* Typical real-world scenarios where Pig is applied.

---

## 💡 Visual Design Suggestion

### Left Side

**Apache Pig Features**

```
🐷 Apache Pig

✓ High-Level
✓ Pig Latin
✓ Hadoop-Based
✓ Automatic Optimization
✓ Scalable
```

### Right Side

Simple architecture:

```text
Business Question
        │
        ▼
Pig Latin Script
        │
        ▼
Apache Pig
        │
        ▼
MapReduce
        │
        ▼
HDFS
```

---

## 🎤 Speaker Notes (~2 minutes)

> Now that we understand why Apache Pig was created, let's define what Apache Pig actually is.
>
> Apache Pig is a high-level data processing platform that runs on top of Hadoop. Instead of writing complex Java MapReduce programs, developers use Pig Latin, a scripting language specifically designed for data processing.
>
> One of Pig's main advantages is that it automatically optimizes and translates Pig Latin scripts into MapReduce jobs. This allows developers to focus on solving business problems rather than dealing with low-level implementation details.
>
> Apache Pig is widely used in ETL pipelines, log analysis, customer behavior analytics, and other batch processing tasks.
>
> In today's presentation, we will use the RetailRocket e-commerce dataset to demonstrate how Pig can analyze millions of customer events efficiently.

---

## 🔗 Transition to Slide 6

> **We now know what Apache Pig is. The next question is: *How does Apache Pig process a Pig Latin script internally before executing it on Hadoop?* Let's explore its architecture.**

---

## Chapter 2 - Apache Pig Fundamentals

### Slide 6
**Why Apache Pig?**

**Traditional**
```text
CSV
   ↓
Java MapReduce
   ↓
Complex
```

**Pig**
```text
Pig Latin
   ↓
Simple
```

**Purpose**
- Explain why Pig exists
Đây là **Slide 6**, theo đúng flow:

> **Problem → Why Pig → What is Pig → How Pig Works**

Slide này **không nên đi quá sâu** vào compiler hay optimizer, vì giảng viên yêu cầu *"trình bày ở mức cơ bản"*. Mục tiêu là giúp người nghe hiểu **luồng xử lý của Pig**.

---

# Slide 6 — Apache Pig Architecture

## **How Does Apache Pig Work?**

Apache Pig acts as a **high-level abstraction layer** between the developer and Hadoop.

Developers write **Pig Latin scripts**, while Apache Pig automatically converts them into executable Hadoop jobs.

---

## Apache Pig Processing Architecture

```text
                    User / Data Engineer
                            │
                            ▼
                  Pig Latin Script (.pig)
                            │
                            ▼
                 Parser & Syntax Validation
                            │
                            ▼
                     Logical Plan
                            │
                            ▼
                  Logical Optimization
                            │
                            ▼
                    Physical Plan
                            │
                            ▼
                 MapReduce Job Generation
                            │
                            ▼
                 Hadoop Execution Engine
                            │
                            ▼
                           HDFS
```

---

## Execution Workflow

| Step                | Description                                                    |
| ------------------- | -------------------------------------------------------------- |
| **1. Write Script** | Developer writes a Pig Latin script.                           |
| **2. Parse**        | Pig checks the syntax and creates a logical plan.              |
| **3. Optimize**     | Pig optimizes the execution plan automatically.                |
| **4. Compile**      | Pig converts the logical plan into one or more MapReduce jobs. |
| **5. Execute**      | Hadoop executes the jobs on HDFS.                              |
| **6. Output**       | Results are displayed or stored back into HDFS.                |

---

## Example in Our Case Study

For the **RetailRocket Dataset**, when we execute a Pig script such as:

```pig
views = FILTER events BY event == 'view';

grp = GROUP views BY itemid;

result = FOREACH grp GENERATE
group,
COUNT(views);
```

Apache Pig automatically performs the following steps:

```text
Pig Latin Script
        │
        ▼
Logical Plan
        │
        ▼
Optimization
        │
        ▼
MapReduce Job
        │
        ▼
Top Viewed Products
```

---

## Key Takeaways

* Developers only write **Pig Latin**.
* Apache Pig automatically manages execution.
* Hadoop performs distributed processing in the background.
* This significantly reduces development complexity while maintaining Hadoop's scalability.

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* How a Pig script is executed internally.
* The role of Pig as a bridge between developers and Hadoop.
* Why developers do not need to write MapReduce code manually.

---

# 💡 Visual Design Suggestion

### Main Diagram (Center)

```text
        Pig Latin Script
               │
               ▼
        Apache Pig Engine
               │
     ┌─────────┴─────────┐
     │                   │
 Logical Plan      Optimization
     │                   │
     └─────────┬─────────┘
               ▼
      MapReduce Job(s)
               │
               ▼
             Hadoop
               │
               ▼
              HDFS
```

### Right Corner (Highlight Box)

**Apache Pig = Translator**

```text
Business Logic
        │
        ▼
 Pig Latin
        │
        ▼
 MapReduce
```

---

# 🎤 Speaker Notes (~2 phút)

> This diagram illustrates the internal workflow of Apache Pig.
>
> First, the developer writes a Pig Latin script describing the required data processing tasks.
>
> Apache Pig then parses the script, checks for syntax errors, and generates a logical execution plan.
>
> Before execution, Pig automatically optimizes this plan to improve efficiency. It then converts the optimized plan into one or more MapReduce jobs.
>
> Finally, Hadoop executes these jobs on HDFS and returns the results.
>
> In our RetailRocket case study, we only need to write a few Pig Latin statements to analyze customer behavior, while Apache Pig automatically handles the complexity of distributed processing.

---

## 🔗 Transition to Slide 7

> **Now that we understand how Apache Pig works internally, the next step is to learn the language we use to communicate with Pig — Pig Latin — and then apply it to the RetailRocket dataset in our case study.**

---

### Slide 7
**What is Apache Pig?**

**Content**
- Definition
- Architecture
- Purpose

**Purpose**
- Define Pig clearly before going deeper
Theo flow hiện tại:

1. Big Data Challenge
2. Why Apache Pig
3. What is Apache Pig
4. Apache Pig Architecture

👉 **Slide 7 không nên nhảy ngay vào Dataset**, mà nên giới thiệu **Pig Latin** trước. Sau đó mới dùng **RetailRocket Dataset** để minh họa ở Slide 8–9.

Đây là flow chuẩn mà các khóa Big Data của Apache cũng thường dùng.

---

# Slide 7 — Introduction to Pig Latin

## **Pig Latin: The Language of Apache Pig**

Pig Latin is a **high-level data flow language** designed for processing and analyzing large datasets on Hadoop.

Unlike Java MapReduce, Pig Latin focuses on **describing the data processing workflow** rather than the implementation details.

---

## Pig Latin Philosophy

> **Describe *what* you want to do, not *how* to do it.**

Traditional Programming

```text
How to process data?
↓
Developer controls every step
```

Pig Latin

```text
What data transformations are needed?
↓
Apache Pig handles execution automatically
```

---

## Pig Latin Data Flow Model

Pig Latin programs are written as a sequence of **data transformations**.

```text
Raw Data
    │
    ▼
LOAD
    │
    ▼
FILTER
    │
    ▼
GROUP
    │
    ▼
FOREACH
    │
    ▼
ORDER
    │
    ▼
LIMIT
    │
    ▼
STORE
```

Unlike SQL, Pig Latin executes as a **data pipeline**, where each operation produces a new relation for the next step.

---

## Common Pig Latin Commands

| Command                  | Purpose                                  |
| ------------------------ | ---------------------------------------- |
| **LOAD**                 | Read data from HDFS or Local File System |
| **FILTER**               | Select records that satisfy a condition  |
| **GROUP**                | Group records by a key                   |
| **FOREACH ... GENERATE** | Transform or calculate new values        |
| **COUNT**                | Count records                            |
| **ORDER**                | Sort records                             |
| **LIMIT**                | Return the Top N records                 |
| **STORE**                | Save results                             |

---

## Example Workflow

Suppose we want to answer the question:

> **Which products are viewed the most?**

Pig Latin Workflow

```text
events.csv
      │
      ▼
LOAD
      │
      ▼
FILTER (view)
      │
      ▼
GROUP (itemid)
      │
      ▼
COUNT
      │
      ▼
ORDER DESC
      │
      ▼
LIMIT 10
```

This workflow will be demonstrated in the live demo.

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* What Pig Latin is.
* Why Pig Latin is easier than Java MapReduce.
* The concept of a **data flow language**.
* The core commands that will be used during the demo.

---

# 💡 Visual Design Suggestion

### Left Side

**Pig Latin Workflow**

```text
CSV
 │
 ▼
LOAD
 │
 ▼
FILTER
 │
 ▼
GROUP
 │
 ▼
COUNT
 │
 ▼
STORE
```

### Right Side

**Key Characteristics**

```text
✓ High-Level Language

✓ Data Flow Model

✓ Automatic Optimization

✓ Easy to Read

✓ Easy to Maintain
```

---

# 🎤 Speaker Notes (~2 phút)

> After understanding Apache Pig's architecture, the next step is to learn **Pig Latin**, the language used to interact with Apache Pig.
>
> Pig Latin is a high-level data flow language. Instead of writing low-level MapReduce code, we simply describe the sequence of data transformations we want to perform.
>
> A Pig Latin program is essentially a pipeline. We start by loading the data, then filter the records, group them, perform aggregations, sort the results, and finally store the output.
>
> Throughout today's demo, we will use these core commands to analyze the RetailRocket dataset and answer several business questions.

---

## 🔗 Transition to Slide 8

> **Now that we understand the Pig Latin workflow, let's introduce the dataset that we will analyze throughout the demo: the RetailRocket E-commerce Dataset.**

---

## 💡 Gợi ý cải tiến

Để bài thuyết trình hấp dẫn hơn, bạn có thể thêm một dòng kết nối ngay cuối slide:

> **"Every command in the following demo corresponds to one real business question."**

Điều này giúp người nghe hiểu rằng các lệnh Pig Latin không phải học rời rạc, mà sẽ được áp dụng trực tiếp trên **RetailRocket Dataset** trong phần tiếp theo.

---

### Slide 8
**Apache Pig Features**

**Features**
- High-level
- Data Flow
- Hadoop-based
- Automatic Optimization
- ETL
- Analytics

**Purpose**
- Show the key strengths of Pig
Slide 8 — Apache Pig Features
Key Features of Apache Pig

Apache Pig is designed to simplify Big Data processing while leveraging Hadoop's distributed computing capabilities.

Core Features
Feature	Description	RetailRocket Example
High-Level Language	Write simple Pig Latin scripts instead of Java MapReduce.	Analyze millions of customer events with only a few commands.
Data Flow Model	Process data through a sequence of transformations.	Load → Filter → Group → Count → Store
Hadoop-Based	Executes on Hadoop using HDFS and MapReduce.	Process large-scale e-commerce logs efficiently.
Automatic Optimization	Pig optimizes execution plans automatically before running.	Faster execution without manual tuning.
ETL Support	Ideal for Extract, Transform, and Load operations.	Clean and prepare customer event data.
Analytics-Oriented	Built for batch analytics and reporting.	Generate insights such as top products and active users.
Why Apache Pig?
                    Raw Big Data
                         │
                         ▼
                 Apache Pig (Pig Latin)
                         │
     ┌───────────────────┼───────────────────┐
     │                   │                   │
   ETL              Data Cleaning      Data Analysis
     │                   │                   │
     └───────────────────┼───────────────────┘
                         ▼
                 Business Insights
RetailRocket Case Study

Using the RetailRocket E-commerce Dataset, Apache Pig enables us to:

Read millions of customer event records.
Filter purchase or view events.
Aggregate customer behavior.
Identify the most popular products.
Discover the most active customers.
Export processed data for reporting.
Key Takeaway

Apache Pig enables developers to focus on business questions instead of low-level distributed programming.

🎯 Slide Objective

After this slide, the audience should understand:

The major capabilities of Apache Pig.
Why Apache Pig is well suited for Big Data analytics.
How these features will be applied to the RetailRocket dataset during the demo.
💡 Visual Design Suggestion
Left: Feature Cards
🐷 High-Level

🔄 Data Flow

☁ Hadoop

⚡ Optimization

📦 ETL

📊 Analytics
Right: Processing Pipeline
RetailRocket Dataset
        │
        ▼
Apache Pig
        │
        ▼
Clean & Transform
        │
        ▼
Analyze
        │
        ▼
Business Insight
🎤 Speaker Notes (~2 minutes)

Apache Pig provides several features that make Big Data processing easier and more efficient.

First, it uses a high-level language called Pig Latin, allowing developers to write concise scripts instead of complex Java MapReduce programs.

Second, Pig follows a data flow model, where data is transformed step by step through operations such as loading, filtering, grouping, and aggregation.

Because Pig is built on Hadoop, it can process very large datasets stored in HDFS while automatically generating optimized MapReduce jobs.

In addition, Pig is widely used for ETL processes and batch analytics. In our RetailRocket case study, these features allow us to analyze millions of customer events and answer business questions with only a small amount of code.

🔗 Transition to Slide 9

Now that we understand the capabilities of Apache Pig, let's introduce the RetailRocket dataset that we will use throughout the live demonstration and see how these features are applied in practice.
---

### Slide 9
**Pig Architecture**

**Flow**
```text
Pig Latin
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

**Purpose**
- Explain how Pig executes scripts internally
Mình thấy có một vấn đề nhỏ trong flow hiện tại:

* Slide 6 bạn đã trình bày **Apache Pig Architecture**
* Slide 9 lại là **Pig Architecture**

=> **Bị trùng nội dung**.

### Mình đề xuất điều chỉnh:

* **Slide 6:** *Apache Pig Components & Hadoop Ecosystem* (Pig nằm ở đâu trong Hadoop)
* **Slide 9:** *How Apache Pig Executes a Pig Latin Script* (Execution Workflow)

Như vậy sẽ không bị lặp và logic hơn.

---

# Slide 9 — How Apache Pig Executes a Pig Latin Script

## **Apache Pig Execution Workflow**

Apache Pig automatically transforms a **Pig Latin script** into executable **MapReduce jobs**, allowing developers to focus on data analysis rather than low-level programming.

---

## Pig Execution Pipeline

```text
                Pig Latin Script
                       │
                       ▼
                Parser & Lexer
        (Validate Syntax & Schema)
                       │
                       ▼
                 Logical Plan
       (Describe Data Transformations)
                       │
                       ▼
             Logical Optimizer
     (Optimize Execution Strategy)
                       │
                       ▼
                Physical Plan
     (Convert to Executable Operations)
                       │
                       ▼
           MapReduce Job Generation
                       │
                       ▼
          Hadoop Executes the Jobs
                       │
                       ▼
                     HDFS
             (Store Output Results)
```

---

## Step-by-Step Execution

| Step                     | Description                                                                            |
| ------------------------ | -------------------------------------------------------------------------------------- |
| **1. Pig Latin Script**  | The developer writes a Pig Latin program describing the required data transformations. |
| **2. Parser**            | Checks syntax, validates the schema, and builds an internal representation.            |
| **3. Logical Plan**      | Represents the sequence of operations (LOAD, FILTER, GROUP, etc.).                     |
| **4. Logical Optimizer** | Optimizes the logical plan to improve execution efficiency.                            |
| **5. Physical Plan**     | Converts logical operations into executable physical operators.                        |
| **6. MapReduce Jobs**    | Generates one or more Hadoop MapReduce jobs automatically.                             |
| **7. HDFS**              | Stores the final processing results.                                                   |

---

## Example from Our Case Study

Business Question:

> **Which products are viewed most frequently?**

Pig Latin

```pig
views = FILTER events BY event == 'view';

grp = GROUP views BY itemid;

result = FOREACH grp
GENERATE group, COUNT(views);
```

Apache Pig internally executes:

```text
Pig Latin
      │
      ▼
Logical Plan
      │
      ▼
Optimization
      │
      ▼
MapReduce Jobs
      │
      ▼
Top Viewed Products
```

---

## Why This Matters

Without Apache Pig:

* Write Java Mapper
* Write Java Reducer
* Write Driver
* Compile
* Deploy

With Apache Pig:

* Write Pig Latin
* Apache Pig automatically handles the execution pipeline

---

## 🎯 Slide Objective

After this slide, the audience should understand:

* Apache Pig does **not execute Pig Latin directly**.
* Pig first builds and optimizes an execution plan.
* Pig automatically converts the script into Hadoop MapReduce jobs.
* Developers only need to focus on business logic.

---

# 💡 Visual Design Suggestion

### Main Architecture (Center)

```text
          Developer
              │
              ▼
      Pig Latin Script
              │
              ▼
      Apache Pig Engine
              │
   ┌──────────┼──────────┐
   │          │          │
 Parser   Optimizer   Compiler
   │          │          │
   └──────────┼──────────┘
              ▼
      MapReduce Jobs
              │
              ▼
            HDFS
```

### Right-side Highlight

```text
Developer writes:

Pig Latin
      │
      ▼
Apache Pig handles:

✓ Parsing
✓ Optimization
✓ Compilation
✓ Execution
```

---

## 🎤 Speaker Notes (~2 phút)

> This slide illustrates what happens internally after a Pig Latin script is submitted.
>
> First, Apache Pig parses the script to validate its syntax and understand the requested operations.
>
> It then creates a logical execution plan and applies automatic optimizations to improve efficiency.
>
> Next, Pig converts the optimized plan into one or more MapReduce jobs.
>
> Finally, Hadoop executes these jobs and stores the output in HDFS.
>
> The key idea is that developers never need to write or manage MapReduce code directly. Apache Pig abstracts this complexity and lets us focus on solving business problems.

---

## 🔗 Transition to Slide 10

> **Now that we understand how Apache Pig executes a script internally, let's apply this knowledge to a real-world case study. In the next section, we will introduce the RetailRocket dataset and define the business questions that Apache Pig will help us answer.**

### 💡 Một lưu ý quan trọng

Để tránh lặp, mình đề xuất đổi tên các slide như sau:

| Slide | Tiêu đề                                |
| ----- | -------------------------------------- |
| 6     | **Apache Pig in the Hadoop Ecosystem** |
| 7     | **Introduction to Pig Latin**          |
| 8     | **Apache Pig Features**                |
| 9     | **Apache Pig Execution Workflow**      |
| 10    | **RetailRocket Dataset Overview**      |

Cách sắp xếp này tạo mạch logic rõ ràng: **Pig là gì → dùng ngôn ngữ nào → có những ưu điểm gì → chạy như thế nào → áp dụng vào dataset thực tế**.

---

### Slide 10
**Pig Execution Mode**

**Modes**
- Local
- MapReduce

**Comparison**

**Purpose**
- Explain where Pig runs and when each mode is used
Đây là **Slide 10** theo đúng flow hiện tại.

> **Flow đến đây:**
>
> Big Data Challenge → Why Pig → What is Pig → Features → Architecture → **Execution Mode** → RetailRocket Dataset → Demo

Slide này giúp người nghe hiểu **Apache Pig có thể chạy ở đâu**, đồng thời chuẩn bị cho phần demo (vì bạn sẽ demo bằng Local hoặc Hadoop).

---

# Slide 10 — Pig Execution Modes

## **Apache Pig Execution Modes**

Apache Pig supports **two execution modes**, allowing developers to develop and test locally before processing large datasets on a Hadoop cluster.

---

## Pig Execution Modes

### 1. Local Mode

* Executes on a **single machine**
* Uses the local file system
* No Hadoop cluster required
* Best for development, testing, and debugging

```bash
pig -x local
```

---

### 2. MapReduce Mode

* Executes on a **Hadoop cluster**
* Reads and writes data through **HDFS**
* Automatically generates MapReduce jobs
* Designed for large-scale distributed processing

```bash
pig
```

---

## Comparison

| Feature      | Local Mode              | MapReduce Mode               |
| ------------ | ----------------------- | ---------------------------- |
| Execution    | Single Computer         | Hadoop Cluster               |
| Storage      | Local File System       | HDFS                         |
| Processing   | Local CPU               | Distributed Computing        |
| Dataset Size | Small / Medium          | Large (Big Data)             |
| Performance  | Fast for testing        | Scalable for production      |
| Typical Use  | Development & Debugging | Production & Batch Analytics |

---

## Which Mode Will We Use?

For today's demonstration:

```text id="7efm9x"
RetailRocket Dataset
        │
        ▼
Apache Pig
        │
        ▼
Local Mode
(Small Sample Dataset)
```

> In real-world production environments, the same Pig script can be executed in **MapReduce Mode** on Hadoop to process millions of records stored in HDFS.

*(Nếu bạn demo trên Hadoop/HDFS thì thay "Local Mode" bằng "MapReduce Mode".)*

---

## Why Two Modes?

```text id="t3q7c3"
Development
(Local Mode)
        │
        ▼
Testing
        │
        ▼
Deploy
        │
        ▼
Production
(MapReduce Mode)
```

This workflow allows developers to develop quickly while still scaling seamlessly to Big Data environments.

---

## 🎯 Slide Objective

After this slide, the audience should understand:

* Apache Pig supports both **Local Mode** and **MapReduce Mode**.
* Local Mode is suitable for development and testing.
* MapReduce Mode is suitable for processing large-scale datasets on Hadoop.
* The same Pig Latin script can run in both modes with minimal changes.

---

## 💡 Visual Design Suggestion

### Left Side

```text
        Apache Pig

        /         \
       /           \
 Local Mode     MapReduce Mode
     │               │
 Local File        Hadoop Cluster
     │               │
 Small Data      Big Data
```

### Right Side

Workflow

```text
Write Pig Script
        │
        ▼
Local Testing
        │
        ▼
Deploy to Hadoop
        │
        ▼
Big Data Processing
```

---

## 🎤 Speaker Notes (~1.5–2 phút)

> Apache Pig provides two execution modes.
>
> The first is **Local Mode**, where Pig runs on a single machine using the local file system. This mode is commonly used during development and debugging because it is simple to set up and fast to execute.
>
> The second is **MapReduce Mode**, where Pig runs on a Hadoop cluster. In this mode, input data is stored in HDFS, and Pig automatically generates MapReduce jobs for distributed processing. This is the preferred mode for production environments and large-scale Big Data analytics.
>
> For our presentation, we will use the RetailRocket dataset to demonstrate Pig. Depending on the environment, the same Pig Latin script can be executed either in Local Mode or in MapReduce Mode with only minor configuration changes.

---

## 🔗 Transition to Slide 11

> **Now that we understand how Apache Pig is executed, let's introduce the real-world dataset that will be analyzed throughout the rest of this presentation—the RetailRocket E-commerce Dataset.**

---

### Slide 11
**Pig Latin**

**Content**
- Explain
- Pig is NOT SQL
- Pig is NOT Java
- Pig is a Data Flow Language

**Purpose**
- Introduce Pig Latin as the working language
Đây là slide rất quan trọng vì **Pig Latin là "ngôn ngữ" mà các bạn sẽ dùng trong toàn bộ phần demo**.

❗ Tuy nhiên, mình **không khuyên** nói theo kiểu:

> Pig is NOT SQL
> Pig is NOT Java

vì nghe hơi tiêu cực.

Thay vào đó hãy dùng:

> **Pig Latin is inspired by SQL, but designed as a Data Flow Language for Big Data processing.**

Cách này chuyên nghiệp hơn.

---

# Slide 11 — Introduction to Pig Latin

## **Pig Latin: The Language of Apache Pig**

Pig Latin is a **high-level data flow language** designed for processing and analyzing large datasets on Hadoop.

Unlike traditional programming languages, Pig Latin focuses on **describing the sequence of data transformations** rather than implementing low-level processing logic.

---

## What is Pig Latin?

| Pig Latin is...         | Explanation                                           |
| ----------------------- | ----------------------------------------------------- |
| **High-Level Language** | Easier to write than Java MapReduce                   |
| **Data Flow Language**  | Describes how data moves through each processing step |
| **Built for Hadoop**    | Automatically executes on Hadoop through Apache Pig   |
| **Analytics-Oriented**  | Designed for ETL, reporting, and batch analytics      |

---

## Pig Latin vs SQL vs Java

| SQL                        | Java MapReduce                   | Pig Latin                     |
| -------------------------- | -------------------------------- | ----------------------------- |
| Declarative Query Language | General-purpose programming      | Data Flow Language            |
| Query relational tables    | Implement distributed processing | Describe data transformations |
| Database systems           | Hadoop programming               | Hadoop data analytics         |

> **Pig Latin is inspired by SQL syntax, but its execution model is based on data flow rather than relational query processing.**

---

## Pig Latin Data Flow

A Pig Latin script is executed as a sequence of transformations.

```text
RetailRocket Dataset (events.csv)
            │
            ▼
          LOAD
            │
            ▼
         FILTER
            │
            ▼
          GROUP
            │
            ▼
     FOREACH GENERATE
            │
            ▼
          ORDER
            │
            ▼
          LIMIT
            │
            ▼
          STORE
```

Each operation produces a **new relation**, which becomes the input for the next operation.

---

## Example

Business Question:

> **Which products are viewed most frequently?**

Pig Latin Workflow

```text
LOAD events.csv
      │
      ▼
FILTER event == 'view'
      │
      ▼
GROUP BY itemid
      │
      ▼
COUNT
      │
      ▼
ORDER DESC
      │
      ▼
LIMIT 10
```

---

## Key Takeaway

> **Pig Latin allows developers to express data processing workflows in a simple, readable, and scalable way, while Apache Pig automatically handles execution on Hadoop.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* What Pig Latin is.
* Why Pig Latin is easier than Java MapReduce.
* The concept of a **data flow language**.
* How Pig Latin represents a sequence of data transformations.

---

# 💡 Visual Design Suggestion

### Left Side – Comparison

```text
          Java
            │
 Hundreds of lines
            │
            ▼
      MapReduce Jobs
```

↓

```text
        Pig Latin
            │
 Few simple statements
            │
            ▼
      Apache Pig
            │
            ▼
      MapReduce Jobs
```

---

### Right Side – Data Flow

```text
events.csv
     │
     ▼
LOAD
     │
     ▼
FILTER
     │
     ▼
GROUP
     │
     ▼
COUNT
     │
     ▼
STORE
```

---

# 🎤 Speaker Notes (~2 phút)

> Pig Latin is the scripting language used by Apache Pig to process large datasets.
>
> It is a high-level data flow language, meaning that instead of writing detailed processing logic, developers describe the sequence of transformations they want to perform on the data.
>
> Although Pig Latin has a syntax that is somewhat similar to SQL, it is not a database query language. SQL is designed to query relational databases, whereas Pig Latin is designed to process large datasets on Hadoop.
>
> Likewise, Pig Latin is not a general-purpose programming language like Java. Developers do not implement MapReduce algorithms directly. Instead, they write simple Pig Latin scripts, and Apache Pig automatically converts them into optimized MapReduce jobs.
>
> Throughout today's demonstration, every business question will be solved using this data flow approach.

---

## 🔗 Transition to Slide 12

> **Now that we understand the language used by Apache Pig, let's introduce the RetailRocket E-commerce Dataset and see how Pig Latin can be applied to analyze real-world customer behavior.**

---

## Chapter 3 - RetailRocket Dataset

### Slide 12
**Dataset Overview**

**Source**
- Kaggle
- RetailRocket

**Files**
- `events.csv`
- `category_tree.csv`
- `item_properties`

**Purpose**
- Introduce the dataset used in the case study
Đây là phần bắt đầu **Chapter 3 – Case Study**, nên Slide 12 cần trả lời 3 câu hỏi:

1. **Dataset đến từ đâu?**
2. **Dataset gồm những gì?**
3. **Tại sao nhóm chọn dataset này?**

Đừng chỉ liệt kê file. Hãy cho người nghe biết **đây là dữ liệu thực tế** và sẽ được dùng xuyên suốt phần demo.

---

# Slide 12 — RetailRocket Dataset Overview

## **Case Study: RetailRocket E-commerce Dataset**

To demonstrate Apache Pig in a real-world scenario, we use the **RetailRocket E-commerce Dataset**, a publicly available dataset collected from an online retail platform.

---

## Dataset Source

* **Platform:** Kaggle
* **Dataset:** RetailRocket E-commerce Dataset
* **Domain:** E-commerce Customer Behavior
* **Purpose:** Analyze customer interactions and purchasing behavior using Big Data technologies.

---

## Dataset Structure

| File                          | Description                | Used in Demo |
| ----------------------------- | -------------------------- | ------------ |
| **events.csv**                | Customer behavior events   | ✅ Yes        |
| **category_tree.csv**         | Product category hierarchy | ❌ No         |
| **item_properties_part1.csv** | Product attributes         | ❌ No         |
| **item_properties_part2.csv** | Product attributes         | ❌ No         |

> **Focus of this presentation:** `events.csv`

---

## Why This Dataset?

The RetailRocket dataset is well suited for demonstrating Apache Pig because it:

* Contains **millions of customer interaction records**.
* Represents **real-world e-commerce behavior**.
* Includes common user actions such as **view**, **add-to-cart**, and **transaction**.
* Is ideal for **batch analytics** and **Big Data processing**.

---

## Role in Our Case Study

```text
RetailRocket Dataset
        │
        ▼
Apache Pig
        │
        ▼
Pig Latin Analysis
        │
        ▼
Business Insights
```

---

## 🎯 Slide Objective

After this slide, the audience should understand:

* Where the dataset comes from.
* What files are included in the dataset.
* Which file will be used in the demo.
* Why this dataset is appropriate for demonstrating Apache Pig.

---

## 💡 Visual Design Suggestion

### Left Side

Dataset Information Card

```text
📂 RetailRocket Dataset

Source:
Kaggle

Domain:
E-commerce

Main File:
events.csv
```

### Right Side

```text
RetailRocket Dataset

├── events.csv          ✅
├── category_tree.csv
├── item_properties_1.csv
└── item_properties_2.csv
```

Hoặc dùng icon:

* 📁 Dataset
* 📄 events.csv
* 🛒 Customer Behavior
* 📊 Analytics

---

## 🎤 Speaker Notes (~2 phút)

> For our case study, we selected the **RetailRocket E-commerce Dataset**, which is publicly available on Kaggle.
>
> This dataset contains real customer interactions collected from an online retail platform, making it an excellent example for Big Data analytics.
>
> The dataset includes several files. However, our presentation focuses on **events.csv**, as it records user behaviors such as viewing products, adding items to the cart, and completing transactions.
>
> Because the dataset contains a large number of event records and reflects real business scenarios, it is well suited for demonstrating how Apache Pig processes and analyzes Big Data efficiently.

---

## 🔗 Transition to Slide 13

> **Now that we know where the dataset comes from, let's take a closer look at the structure of the main file, `events.csv`, and understand the meaning of each attribute before performing our analysis.**

---

### Slide 13
**events.csv**

**Schema**
- `timestamp`
- `visitorid`
- `event`
- `itemid`
- `transactionid`

**Purpose**
- Explain the main file used in the demo
Đây là **slide quan trọng nhất của Chapter 3**, vì sau slide này người nghe phải hiểu rõ dữ liệu trước khi bước vào phân tích.

💡 **Đừng chỉ liệt kê schema**. Hãy giải thích **mỗi cột đại diện cho điều gì trong business**. Sau đó kết nối với các câu hỏi phân tích ở phần demo.

---

# Slide 13 — Understanding `events.csv`

## **The Main Dataset: `events.csv`**

The `events.csv` file records **customer interactions** on the e-commerce platform.

Each row represents **one event performed by one customer** at a specific point in time.

---

## Dataset Schema

| Column            | Data Type       | Description                                                   |
| ----------------- | --------------- | ------------------------------------------------------------- |
| **timestamp**     | Long            | The time when the event occurred (Unix timestamp).            |
| **visitorid**     | Long            | Unique identifier of the customer.                            |
| **event**         | String          | Type of customer action (`view`, `addtocart`, `transaction`). |
| **itemid**        | Long            | Unique identifier of the product.                             |
| **transactionid** | Long (Optional) | Transaction ID, available only for completed purchases.       |

---

## Example Record

| timestamp     | visitorid | event       | itemid | transactionid |
| ------------- | --------- | ----------- | ------ | ------------- |
| 1433221332117 | 257597    | view        | 355908 | —             |
| 1433224214164 | 992329    | addtocart   | 248676 | —             |
| 1433224272553 | 992329    | transaction | 248676 | 884729        |

---

## Event Lifecycle

```text
Customer
    │
    ▼
👀 View Product
    │
    ▼
🛒 Add to Cart
    │
    ▼
💳 Transaction
```

> **Not every customer completes the full journey.**
> Many users only **view** products, some add items to the cart, and only a smaller portion complete a purchase.

---

## Why Is `events.csv` Important?

This single file allows us to answer key business questions, such as:

* How many customer events were recorded?
* Which event type occurs most frequently?
* Which products receive the most views?
* Which customers are the most active?
* How many completed transactions occurred?

These are the questions we will answer in the live demo using Apache Pig.

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* The structure of `events.csv`.
* The meaning of each column.
* How each field relates to customer behavior.
* Why this file is sufficient for demonstrating Apache Pig.

---

# 💡 Visual Design Suggestion

## Left Side – Dataset Structure

```text
events.csv

timestamp
visitorid
event
itemid
transactionid
```

---

## Right Side – Customer Journey

```text
RetailRocket User Journey

Visitor
   │
   ▼
View Product
   │
   ▼
Add to Cart
   │
   ▼
Transaction
```

---

## Bottom Highlight

```text
events.csv
      │
      ▼
Apache Pig
      │
      ▼
Business Analytics
```

---

# 🎤 Speaker Notes (~2 phút)

> The main dataset used in our demonstration is **events.csv**.
>
> Each row represents a single interaction between a customer and the e-commerce platform.
>
> The **timestamp** indicates when the event occurred, while **visitorid** uniquely identifies the customer.
>
> The **event** column records the type of user action, which can be a product view, an add-to-cart action, or a completed transaction.
>
> The **itemid** identifies the product involved, and **transactionid** is available only when a purchase has been completed.
>
> This event-based structure enables us to analyze customer behavior, product popularity, and purchasing activity using Apache Pig.
>
> In the next section, we will use these fields to answer several real business questions through Pig Latin scripts.

---

## 🔗 Transition to Slide 14

> **Now that we understand the structure of the dataset, let's focus on the three customer event types—view, add-to-cart, and transaction—and see how they represent the customer purchasing journey that we will analyze in our demo.**

---

### Slide 14
**Event Types**

**Visual**
```text
Customer
   ↓
View
   ↓
Add To Cart
   ↓
Transaction
```

**Purpose**
- Show how user behavior is represented in the dataset
Slide này là **cầu nối giữa Dataset và Demo**, nên mục tiêu **không chỉ giải thích 3 loại event**, mà còn giúp người nghe hiểu **Customer Journey** và **tại sao chúng ta phân tích chúng**.

---

# Slide 14 — Understanding Customer Event Types

## **Customer Behavior in the RetailRocket Dataset**

The **event** column records how customers interact with products during their shopping journey.

Each event represents a different stage of the customer's decision-making process.

---

## Customer Journey

```text
                    Customer Journey

          👀 View Product
                 │
                 ▼
         🛒 Add to Cart
                 │
                 ▼
      💳 Complete Transaction
```

> **Each stage generates one event in `events.csv`.**

---

## Event Types

| Event Type         | Description                                   | Business Meaning                                  |
| ------------------ | --------------------------------------------- | ------------------------------------------------- |
| 👀 **view**        | Customer views a product page.                | Measures product interest and popularity.         |
| 🛒 **addtocart**   | Customer adds a product to the shopping cart. | Indicates purchase intention.                     |
| 💳 **transaction** | Customer successfully completes a purchase.   | Represents a completed sale and business revenue. |

---

## Relationship Between Event Types

```text
                 Many Users
                     │
                     ▼
              👀 View Product
            (Highest Frequency)
                     │
                     ▼
             🛒 Add to Cart
             (Fewer Customers)
                     │
                     ▼
          💳 Transaction
          (Completed Purchase)
```

> **Not every customer who views a product will add it to the cart, and not every cart results in a completed purchase.**

---

## Business Questions Based on Event Types

Using Apache Pig, we can answer questions such as:

* How many **view** events are recorded?
* How many products are added to the cart?
* How many purchases are completed?
* Which products receive the most views?
* What is the distribution of customer behavior?

---

## Key Takeaway

> The **event** field captures the customer's shopping journey and provides the foundation for analyzing user behavior with Apache Pig.

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* The meaning of each event type.
* How user behavior is represented in the dataset.
* Why these events are important for business analytics.
* How they will be analyzed in the upcoming Pig Latin demo.

---

# 💡 Visual Design Suggestion

### Left Side (Main Diagram)

```text
                Customer

                    │

                    ▼

          👀 View Product

                    │

                    ▼

          🛒 Add to Cart

                    │

                    ▼

      💳 Complete Transaction
```

---

### Right Side (Business Funnel)

```text
          Customer Funnel

View
████████████████████████

Add to Cart
██████████

Transaction
████
```

*(Đây là **conceptual funnel**, không phải dữ liệu thật. Có thể ghi chú: "Illustrative customer conversion funnel".)*

---

### Bottom Highlight

```text
RetailRocket Dataset
         │
         ▼
Customer Events
         │
         ▼
Apache Pig Analysis
         │
         ▼
Business Insights
```

---

# 🎤 Speaker Notes (~2 phút)

> The **event** column is one of the most important attributes in the RetailRocket dataset because it describes how customers interact with products.
>
> There are three event types:
>
> * **View**, which means a customer visits a product page.
> * **Add-to-cart**, indicating that the customer is interested in purchasing the product.
> * **Transaction**, which represents a completed purchase.
>
> These events naturally form a customer journey. However, not every customer follows the complete path. Many users only browse products, some add items to the cart, and only a smaller proportion complete a purchase.
>
> By analyzing these event types with Apache Pig, we can better understand customer behavior, identify popular products, and support business decisions such as marketing campaigns and recommendation systems.

---

## 🔗 Transition to Slide 15

> **Now that we understand how customer behavior is represented in the dataset, the next step is to define the business questions we want to answer. These questions will guide our Apache Pig analysis and the live demonstration.**

---

### Slide 15
**Business Questions**

**Questions**
- How many events?
- How many views?
- How many purchases?
- Top products?
- Top customers?

**Purpose**
- Convert dataset understanding into analytical questions
Đây là **slide rất quan trọng** vì nó **chuyển từ "hiểu dữ liệu" sang "phân tích dữ liệu"**. Sau slide này, người nghe sẽ biết **demo không phải chạy lệnh Pig**, mà là **dùng Pig để trả lời các câu hỏi nghiệp vụ (business questions)**.

Mình khuyên đổi tên slide thành **Business Analytics Questions** để đúng tinh thần Big Data hơn.

---

# Slide 15 — Business Analytics Questions

## **From Data to Business Insights**

After understanding the RetailRocket dataset, the next step is to transform raw data into meaningful business information.

As a **Data Engineer**, your task is to answer real business questions using Apache Pig.

---

## Business Questions

| #      | Business Question                                                    | Business Value                                              |
| ------ | -------------------------------------------------------------------- | ----------------------------------------------------------- |
| **Q1** | How many customer events are recorded?                               | Measure overall platform activity.                          |
| **Q2** | How many **views**, **add-to-cart**, and **transactions** are there? | Understand customer behavior distribution.                  |
| **Q3** | Which products are viewed most frequently?                           | Identify popular products for recommendation and marketing. |
| **Q4** | Which customers are the most active?                                 | Identify loyal or highly engaged customers.                 |
| **Q5** | Can the analysis results be saved for further reporting?             | Support dashboards and downstream analytics.                |

---

## From Business Questions to Apache Pig

```text id="mu26i7"
Business Questions
         │
         ▼
RetailRocket Dataset
         │
         ▼
Apache Pig (Pig Latin)
         │
         ▼
Data Analysis
         │
         ▼
Business Insights
```

---

## Mapping Questions to Pig Operations

| Business Question    | Pig Operations                                   |
| -------------------- | ------------------------------------------------ |
| Total Events         | `LOAD` → `GROUP ALL` → `COUNT`                   |
| Event Distribution   | `GROUP BY event` → `COUNT`                       |
| Top Viewed Products  | `FILTER` → `GROUP` → `COUNT` → `ORDER` → `LIMIT` |
| Top Active Customers | `GROUP` → `COUNT` → `ORDER` → `LIMIT`            |
| Export Results       | `STORE`                                          |

---

## Key Takeaway

> **Apache Pig is not only a data processing tool—it helps transform raw customer event logs into actionable business insights.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* The analytical goals of the case study.
* How business questions drive the data analysis process.
* That each question will be answered using specific Pig Latin operations during the live demo.

---

# 💡 Visual Design Suggestion

### Left Side – Business Questions

```text id="x55lyo"
❓ Total Events

❓ Event Distribution

❓ Top Products

❓ Top Customers

❓ Export Results
```

---

### Right Side – Analysis Pipeline

```text id="z8dd6w"
RetailRocket Dataset
         │
         ▼
Apache Pig
         │
         ▼
Pig Latin
         │
         ▼
Business Analytics
         │
         ▼
Decision Support
```

---

### Bottom Highlight

```text id="3ejtqe"
Raw Data
      │
      ▼
Questions
      │
      ▼
Analysis
      │
      ▼
Insights
```

---

# 🎤 Speaker Notes (~2 phút)

> Now that we understand the structure of the RetailRocket dataset, we can move from **data understanding** to **data analysis**.
>
> Imagine that you are working as a Data Engineer in an e-commerce company. Instead of looking at millions of raw records, your manager wants answers to practical business questions.
>
> For example:
>
> * How many customer events occurred?
> * What is the distribution of views, add-to-cart actions, and transactions?
> * Which products are the most popular?
> * Which customers are the most active?
>
> In the next section, we will use Apache Pig and Pig Latin to answer each of these questions step by step. Each Pig operation in our demo directly corresponds to one of these business questions.

---

## 🔗 Transition to Chapter 4 – Basic Data Analysis with Pig

> **We have defined the business questions. The next step is to learn how Apache Pig answers them through a structured data analysis workflow using Pig Latin.**

---

## 📌 Nhận xét

Đến **Slide 15**, phần giới thiệu đã hoàn chỉnh theo một mạch logic:

1. **Why Big Data?**
2. **Why Apache Pig?**
3. **What is Apache Pig?**
4. **How Apache Pig Works**
5. **Pig Latin**
6. **RetailRocket Dataset**
7. **Customer Behavior**
8. **Business Questions**

Sau đó, **Chapter 4** sẽ rất tự nhiên chuyển sang:

* **Slide 16:** Apache Pig Data Analysis Workflow
* **Slide 17:** Basic Pig Commands
* **Slide 18:** Processing Complex Data
* **Slide 19:** Demo Environment
* **Slide 20+:** Live Demo

Đây là cách tổ chức rất phù hợp với một bài thuyết trình kỹ thuật có case study thực tế.

---

## Chapter 4 - Pig Latin & Data Analysis

### Slide 16
**Pig Data Flow**

**Workflow**
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

**Purpose**
- Show the full analysis pipeline in Pig
Đây là **Slide 16** - slide mở đầu của **Chapter 4**.

Theo mình, đây **không chỉ là slide về các lệnh Pig**, mà là **End-to-End Data Analysis Pipeline**. Sau slide này, người nghe sẽ hiểu toàn bộ demo sẽ diễn ra như thế nào.

---

# Slide 16 — Apache Pig Data Analysis Workflow

## **Apache Pig Data Analysis Workflow**

Apache Pig processes data through a **data flow pipeline**, where each operation transforms the input data into a new relation.

Using the **RetailRocket E-commerce Dataset**, we follow a complete analysis workflow to transform raw customer events into meaningful business insights.

---

## End-to-End Data Analysis Pipeline

```text
                 RetailRocket Dataset
                     (events.csv)
                           │
                           ▼
                      LOAD Data
                           │
                           ▼
                 FILTER Unnecessary Data
                           │
                           ▼
                  GROUP Related Records
                           │
                           ▼
             FOREACH Generate New Results
                           │
                           ▼
               COUNT & Aggregate Metrics
                           │
                           ▼
                  ORDER the Results
                           │
                           ▼
                LIMIT Top N Records
                           │
                           ▼
             STORE Results into HDFS
                           │
                           ▼
                  Business Insights
```

---

## Pig Commands Explained

| Command     | Purpose                    | RetailRocket Example                |
| ----------- | -------------------------- | ----------------------------------- |
| **LOAD**    | Read data into Pig         | Load `events.csv`                   |
| **FILTER**  | Keep only required records | Filter `event == 'view'`            |
| **GROUP**   | Group records by a key     | Group by `itemid` or `visitorid`    |
| **FOREACH** | Transform grouped data     | Generate aggregated output          |
| **COUNT**   | Count records              | Count product views or transactions |
| **ORDER**   | Sort records               | Sort products by number of views    |
| **LIMIT**   | Return Top N               | Top 10 viewed products              |
| **STORE**   | Save output                | Store analysis results in HDFS      |

---

## Example Workflow

### Business Question

> **Which products are viewed most frequently?**

Processing Steps

```text
events.csv
     │
     ▼
LOAD
     │
     ▼
FILTER (event = view)
     │
     ▼
GROUP BY itemid
     │
     ▼
COUNT Views
     │
     ▼
ORDER DESC
     │
     ▼
LIMIT 10
     │
     ▼
Top 10 Viewed Products
```

---

## Why Is a Data Flow Model Important?

Unlike Java MapReduce, Pig Latin allows developers to describe **how data should flow through each transformation step**.

Each command produces a **new relation**, which becomes the input for the next command, making scripts easier to read, maintain, and debug.

---

## 🎯 Slide Objective

After this slide, the audience should understand:

* Apache Pig follows a **data flow model**.
* Each Pig Latin command performs a specific transformation.
* Multiple commands work together to answer business questions.
* The same workflow will be demonstrated in the upcoming live demo.

---

## 💡 Visual Design Suggestion

### Center (Main Diagram)

```text
RetailRocket Dataset
        │
        ▼
LOAD
        │
        ▼
FILTER
        │
        ▼
GROUP
        │
        ▼
FOREACH
        │
        ▼
COUNT
        │
        ▼
ORDER
        │
        ▼
LIMIT
        │
        ▼
STORE
        │
        ▼
Business Insight
```

---

### Right Side (Highlight)

```text
Business Question
        │
        ▼
Pig Latin Workflow
        │
        ▼
Business Answer
```

---

## 🎤 Speaker Notes (~2 phút)

> This slide illustrates the complete data analysis workflow in Apache Pig.
>
> Unlike traditional programming, Pig Latin follows a data flow model. Each command transforms the input data into a new relation, which is then passed to the next step.
>
> For example, to identify the most viewed products in the RetailRocket dataset, we first load the data, filter only product view events, group the records by product ID, count the number of views, sort the results in descending order, and finally return the top ten products.
>
> This step-by-step pipeline makes Pig scripts intuitive, modular, and much easier to maintain than equivalent Java MapReduce programs.
>
> In the next few slides, we will look at the most important Pig commands in more detail before executing them in the live demonstration.

---

## 🔗 Transition to Slide 17

> **Now that we understand the overall data analysis workflow, let's examine the core Pig Latin commands that implement each step of this pipeline.**

---

### Slide 17
**Pig Commands**

| Command | Purpose |
| --- | --- |
| LOAD | Read data |
| FILTER | Select records |
| GROUP | Group records |
| FOREACH | Transform grouped data |
| COUNT | Count rows |
| ORDER | Sort results |
| LIMIT | Return top N |
| STORE | Save output |

**Purpose**
- Provide a compact command reference
Theo mình, **Slide 17 không nên chỉ là bảng Command–Purpose** vì khá khô và giống tài liệu tham khảo. Thay vào đó, hãy bổ sung **"Business Example"** để kết nối ngay với RetailRocket Dataset. Điều này giúp người nghe hiểu **lệnh Pig dùng để làm gì trong bài toán thực tế**, đồng thời chuẩn bị cho phần demo.

---

# Slide 17 — Core Pig Latin Commands

## **Core Pig Latin Commands**

Apache Pig provides a set of simple yet powerful commands for transforming and analyzing large datasets.

These commands form the foundation of our analysis workflow.

---

## Command Reference

| Command                  | Purpose                                       | RetailRocket Example                    |
| ------------------------ | --------------------------------------------- | --------------------------------------- |
| **LOAD**                 | Read data into Pig                            | Load `events.csv` from HDFS             |
| **FILTER**               | Select records that satisfy a condition       | Keep only `event == 'view'`             |
| **GROUP**                | Group records by a specific field             | Group by `itemid` or `visitorid`        |
| **FOREACH ... GENERATE** | Transform grouped data or generate new output | Calculate aggregated statistics         |
| **COUNT**                | Count the number of records                   | Count views, transactions, or customers |
| **ORDER**                | Sort records                                  | Sort products by view count             |
| **LIMIT**                | Return the top N records                      | Top 10 viewed products                  |
| **STORE**                | Save processed results                        | Export results to HDFS                  |

---

## How the Commands Work Together

```text
events.csv
     │
     ▼
LOAD
     │
     ▼
FILTER (view events)
     │
     ▼
GROUP BY itemid
     │
     ▼
FOREACH GENERATE COUNT
     │
     ▼
ORDER DESC
     │
     ▼
LIMIT 10
     │
     ▼
STORE
```

---

## Example Business Question

**Question:**

> Which products are viewed most frequently?

**Pig Commands Used:**

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
```

Result:

> **Top 10 Most Viewed Products**

---

## Key Takeaway

> **Each Pig Latin command performs one transformation, and multiple commands are combined into a complete data analysis pipeline.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* The role of each core Pig Latin command.
* How commands are combined to solve business problems.
* That these same commands will be used in the live demonstration.

---

# 💡 Visual Design Suggestion

### Left Side

**Command Reference Table**

(3 columns: Command | Purpose | Example)

---

### Right Side

Processing Pipeline

```text
RetailRocket Dataset
        │
        ▼
LOAD
        │
        ▼
FILTER
        │
        ▼
GROUP
        │
        ▼
FOREACH
        │
        ▼
COUNT
        │
        ▼
ORDER
        │
        ▼
LIMIT
        │
        ▼
STORE
```

---

### Bottom Highlight

```text
Business Question
        │
        ▼
Pig Latin Commands
        │
        ▼
Business Insight
```

---

## 🎤 Speaker Notes (~2 phút)

> These are the core Pig Latin commands that we will use throughout the demonstration.
>
> Each command has a specific responsibility. For example, **LOAD** reads the dataset, **FILTER** selects only the records we need, and **GROUP** organizes data by a specific field such as product ID or customer ID.
>
> Commands like **COUNT**, **ORDER**, and **LIMIT** help us generate meaningful statistics, such as identifying the most viewed products or the most active customers.
>
> Finally, **STORE** saves the processed results for future reporting or downstream analysis.
>
> Rather than using these commands individually, we combine them into a complete workflow to answer real business questions from the RetailRocket dataset.

---

## 🔗 Transition to Slide 18

> **So far, we have focused on basic data processing commands. However, real-world datasets often contain nested or hierarchical structures. In the next slide, we will briefly introduce how Apache Pig handles complex data types such as Tuple, Bag, and Map.**

---

### Slide 18
**Complex Data**

**Types**
- Primitive
- Tuple
- Bag
- Map

**Purpose**
- Introduce Pig’s support for nested and complex structures
Theo mình, **Slide 18 nên giữ ở mức giới thiệu**, vì giảng viên đã yêu cầu *"không cần đi quá sâu"*. Bạn không cần giải thích chi tiết `FLATTEN`, `COGROUP` hay các thao tác nâng cao. Chỉ cần giúp người nghe hiểu rằng **Apache Pig có thể xử lý dữ liệu phức tạp tốt hơn MapReduce thuần**.

Ngoài ra, **RetailRocket không sử dụng nhiều dữ liệu lồng nhau**, nên cuối slide nên nói rõ:

> *"Although our demo uses a structured CSV dataset, Apache Pig is also designed to process complex and nested data formats commonly found in Big Data applications."*

Đây là nội dung mình khuyến nghị.

---

# Slide 18 — Processing Complex Data with Apache Pig

## **Support for Complex Data Types**

Unlike traditional relational databases, Apache Pig can process both **simple (primitive)** and **complex (nested)** data structures.

This makes Pig suitable for semi-structured and Big Data applications such as JSON logs, XML files, and clickstream data.

---

## Pig Data Types

| Data Type     | Description                     | Example                             |
| ------------- | ------------------------------- | ----------------------------------- |
| **Primitive** | Stores a single value           | `100`, `"view"`, `3.14`             |
| **Tuple**     | An ordered collection of fields | `(visitorid, itemid, event)`        |
| **Bag**       | A collection of tuples          | `{(101, view), (102, transaction)}` |
| **Map**       | A set of key–value pairs        | `[brand#Apple, color#Black]`        |

---

## Relationship Between Data Types

```text id="it0m2j"
                Bag
     { Tuple, Tuple, Tuple }

               │

        ┌──────┴──────┐

      Tuple        Tuple

 (visitorid,itemid,event)

               │

      Primitive Values

(visitorid, itemid, "view")
```

---

## Why Are Complex Data Types Important?

Apache Pig can naturally process:

* JSON documents
* XML files
* Web server logs
* Clickstream data
* IoT sensor records
* Nested customer information

These data formats are commonly found in Big Data systems and are often difficult to process using traditional relational databases.

---

## Connection to Our Case Study

The **RetailRocket dataset** used in this presentation is stored as a **structured CSV file**, so our demo mainly uses **primitive data types**.

However, the same Pig language can also process complex and nested data without significant changes to the programming model.

---

## Key Takeaway

> **Apache Pig is not limited to tabular data. It provides built-in support for nested and semi-structured data, making it a flexible tool for real-world Big Data processing.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* Apache Pig supports both primitive and complex data types.
* Complex types (Tuple, Bag, and Map) simplify the processing of nested Big Data.
* Although the demo uses a CSV dataset, Pig is capable of handling much richer data structures.

---

# 💡 Visual Design Suggestion

### Left Side – Data Type Hierarchy

```text id="tq1jz4"
Primitive
    │
    ▼
Tuple
    │
    ▼
Bag
    │
    ▼
Map
```

---

### Right Side – Real-world Data Sources

```text id="djlwmv"
JSON
   │
XML
   │
Web Logs
   │
Clickstream
   │
IoT Data
   │
Apache Pig
```

---

### Bottom Highlight

```text id="rljv8y"
Structured Data
        +
Semi-Structured Data
        │
        ▼
Apache Pig
```

---

## 🎤 Speaker Notes (~1.5–2 phút)

> So far, our examples have focused on structured CSV data. However, many Big Data applications store information in more complex formats, such as JSON documents, XML files, or web server logs.
>
> Apache Pig addresses this challenge by providing built-in support for complex data types.
>
> A **Tuple** represents a single record containing multiple fields. A **Bag** is a collection of tuples, similar to a table with multiple rows. A **Map** stores information as key–value pairs, making it useful for flexible attributes.
>
> Although our RetailRocket case study mainly uses primitive values from a CSV file, the same Pig programming model can also process nested and semi-structured data. This flexibility is one of the reasons Apache Pig became popular for ETL and Big Data analytics.

---

## 🔗 Transition to Chapter 5 – Live Demo

> **We have now covered the fundamental concepts of Apache Pig. Next, we will apply these concepts in a live demonstration using the RetailRocket dataset to answer real business questions step by step.**

---

### Slide 19
**Processing Complex Data**

**Flow**
```text
Nested Data
   ↓
Flatten
   ↓
Structured Output
```

**Purpose**
- Explain how Pig handles nested data
Theo mình, **Slide 19 như outline hiện tại hơi yếu**.

Lý do là:

* RetailRocket **không có nested data**, nên nếu nói về `FLATTEN` mà không có ví dụ sẽ rất khó hiểu.
* Giảng viên cũng yêu cầu **"không cần đi quá sâu"**, nên không nên giải thích quá nhiều về `FLATTEN`, `Bag`, `Tuple`.

👉 Mình khuyên sửa Slide 19 thành **"Processing Nested Data in Apache Pig"** và chỉ giải thích ở mức khái niệm, đồng thời liên hệ với dữ liệu thực tế như JSON, XML.

---

# Slide 19 — Processing Nested Data in Apache Pig

## **How Apache Pig Processes Nested Data**

In many Big Data applications, data is not always stored in a simple tabular format.

Apache Pig provides built-in support for **nested and semi-structured data**, making it easier to transform complex records into structured outputs.

---

## Processing Workflow

```text id="5xghm9"
Nested Data
(JSON / XML / Logs)
        │
        ▼
Apache Pig
        │
        ▼
FLATTEN
        │
        ▼
Structured Output
        │
        ▼
Data Analysis
```

---

## Example

### Input (Nested Data)

```json
{
  "visitorid": 1001,
  "orders": [
    {"item": "Laptop", "price": 1200},
    {"item": "Mouse", "price": 25}
  ]
}
```

---

### After `FLATTEN`

| visitorid | item   | price |
| --------- | ------ | ----: |
| 1001      | Laptop |  1200 |
| 1001      | Mouse  |    25 |

---

## Why Is `FLATTEN` Useful?

`FLATTEN` converts nested collections into a tabular structure, allowing Pig to perform standard operations such as:

* `FILTER`
* `GROUP`
* `COUNT`
* `ORDER`
* `STORE`

without manually parsing complex objects.

---

## Connection to Our Case Study

The **RetailRocket dataset** is already stored as a structured CSV file, so we **do not need to use `FLATTEN` in today's demo**.

However, if the same customer activity data were stored as JSON documents or nested logs, Apache Pig could easily flatten the structure before analysis.

---

## Key Takeaway

> **Apache Pig extends beyond CSV processing by providing native support for nested and semi-structured data through operations such as `FLATTEN`, making it well suited for real-world Big Data pipelines.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* What nested data is.
* The role of the `FLATTEN` operator.
* How Apache Pig converts nested structures into tabular data.
* Why this capability is important in Big Data, even though the RetailRocket demo uses structured CSV data.

---

# 💡 Visual Design Suggestion

### Left Side

```text id="r9p8fk"
Nested JSON

Customer
 ├── Order 1
 ├── Order 2
 └── Order 3
```

↓

```text id="xgj09t"
Apache Pig

FLATTEN()
```

↓

```text id="7f3yik"
visitorid | item | price
```

---

### Right Side

Use Cases

* JSON Documents
* XML Files
* Web Logs
* Clickstream Data
* IoT Sensor Data

---

## 🎤 Speaker Notes (~1.5 phút)

> In real-world Big Data systems, information is often stored in nested formats such as JSON, XML, or application logs rather than simple tables.
>
> Apache Pig provides the `FLATTEN` operator to transform nested collections into a tabular structure. This makes the data much easier to analyze using operations such as filtering, grouping, counting, and sorting.
>
> In our RetailRocket case study, the dataset is already stored as a structured CSV file, so we do not need to use `FLATTEN`. However, this capability becomes very valuable when processing semi-structured Big Data in production environments.

---

## 🔗 Transition to Chapter 5 – Live Demo

> **Now that we have covered both the fundamental Pig commands and its support for complex data structures, let's move on to the live demonstration, where we will use Apache Pig to analyze the RetailRocket dataset and answer real business questions step by step.**

---

### 📌 Gợi ý

Với yêu cầu của giảng viên **"không cần đi quá sâu"**, bạn hoàn toàn có thể gộp **Slide 18** và **Slide 19** thành **một slide duy nhất: "Complex Data Support in Apache Pig"**. Điều này giúp tiết kiệm khoảng 2 phút trình bày và dành nhiều thời gian hơn cho phần **demo**, vốn là phần được yêu cầu bắt buộc và thường được đánh giá cao.

---

## Chapter 5 - Live Demo

### Slide 20
**Demo Overview**

**Environment**
- Pig
- Hadoop
- HDFS
- `events.csv`

**Purpose**
- Prepare the audience for the live demonstration
Đến **Chapter 5**, mục tiêu thay đổi từ **giải thích** sang **thực hành**.

Theo mình, **Slide 20 không nên chỉ ghi Environment**, vì khá khô. Hãy để nó trả lời câu hỏi:

> **"Trong phần demo, chúng ta sẽ làm gì?"**

Environment chỉ nên là một phần nhỏ của slide.

---

# Slide 20 — Live Demonstration Overview

## **Live Demonstration: Analyzing RetailRocket with Apache Pig**

In this demonstration, we will use **Apache Pig** to analyze the **RetailRocket E-commerce Dataset** and answer real business questions through Pig Latin.

---

## Demo Objective

By the end of this demo, we will be able to:

* Load a real-world dataset into Apache Pig.
* Explore and validate the dataset.
* Analyze customer behavior using Pig Latin.
* Identify popular products and active customers.
* Save the analysis results for future use.

---

## Demo Environment

| Component            | Technology                                                 |
| -------------------- | ---------------------------------------------------------- |
| Operating System     | Linux / Windows                                            |
| Storage              | HDFS                                                       |
| Processing Framework | Hadoop                                                     |
| Data Processing Tool | Apache Pig                                                 |
| Input Dataset        | `events.csv`                                               |
| Script               | `retailrocket_demo.pig` *(or interactive Pig Grunt Shell)* |

> **Note:** Replace the script name with your actual demo file if different.

---

## Demo Workflow

```text
RetailRocket Dataset (events.csv)
            │
            ▼
       Upload to HDFS
            │
            ▼
      Apache Pig Script
            │
            ▼
      Execute Pig Latin
            │
            ▼
      Generate Analytics
            │
            ▼
      Store Results
```

---

## Business Questions We Will Answer

* How many customer events are recorded?
* What is the distribution of event types?
* Which products are viewed most frequently?
* Which customers are the most active?
* How can we save the analysis results?

---

## Key Takeaway

> **The live demonstration follows the complete Apache Pig workflow—from loading raw data to generating business insights using Pig Latin.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* The goal of the live demonstration.
* The software components used.
* The overall workflow of the demo.
* The business questions that will be answered.

---

# 💡 Visual Design Suggestion

### Left Side – Demo Architecture

```text
          RetailRocket Dataset
                 │
                 ▼
               HDFS
                 │
                 ▼
           Apache Pig
                 │
                 ▼
          Pig Latin Script
                 │
                 ▼
         Analysis Results
```

### Right Side – Demo Checklist

```text
☑ Load Dataset

☑ Explore Data

☑ Analyze Events

☑ Find Top Products

☑ Find Top Customers

☑ Save Results
```

---

## 🎤 Speaker Notes (~1–1.5 phút)

> We have now completed the theoretical part of the presentation. In the next few minutes, we will move to a live demonstration using the RetailRocket dataset.
>
> The dataset is stored in HDFS, and Apache Pig will process it using Pig Latin scripts.
>
> Rather than demonstrating commands individually, we will answer a series of business questions. This reflects how Apache Pig is typically used in real-world data engineering projects, where the focus is on transforming raw data into meaningful insights.
>
> Let's begin by loading the dataset and exploring its structure.

---

## 🔗 Transition to Slide 21

> **The first step in any data analysis project is to load the dataset into Apache Pig and verify that it has been imported correctly. Let's start with loading `events.csv`.**

---

### Slide 21
**Demo Workflow**

**Flow**
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

**Purpose**
- Show the demo sequence before execution
Đây là **slide cuối trước khi vào terminal/demo**, nên mục tiêu không phải là giải thích lệnh Pig nữa, mà là **giúp người nghe biết mình sắp làm gì**.

Mình khuyên **đổi tên thành "Demo Execution Workflow"** và mở rộng hơn một chút, vì sau `DUMP` không phải chỉ có "Analysis" mà sẽ có nhiều bước phân tích.

---

# Slide 21 — Demo Execution Workflow

## **Live Demo Execution Workflow**

In this demonstration, we will execute a complete Apache Pig data analysis pipeline using the **RetailRocket `events.csv` dataset**.

Each step answers a specific business question.

---

## End-to-End Demo Workflow

```text id="o2gqrl"
            RetailRocket Dataset
                 (events.csv)
                      │
                      ▼
                  LOAD Data
                      │
                      ▼
            DESCRIBE Schema
                      │
                      ▼
             DUMP Sample Data
                      │
                      ▼
          Data Analysis with Pig
       ┌──────────┬──────────┬──────────┐
       ▼          ▼          ▼
 Count Events  Top Products  Top Customers
       │          │          │
       └──────────┴──────────┘
                      │
                      ▼
             STORE Results
                      │
                      ▼
              Business Insights
```

---

## Demo Steps

| Step  | Pig Command | Objective                                                     |
| ----- | ----------- | ------------------------------------------------------------- |
| **1** | `LOAD`      | Read the RetailRocket dataset into Apache Pig.                |
| **2** | `DESCRIBE`  | Verify the schema and data structure.                         |
| **3** | `DUMP`      | Preview sample records to validate the input data.            |
| **4** | Analysis    | Execute Pig Latin scripts to answer business questions.       |
| **5** | `STORE`     | Save the processed results for reporting or further analysis. |

---

## Business Questions Covered

During the demo, we will answer:

* How many customer events are recorded?
* What is the distribution of event types?
* Which products are viewed most frequently?
* Which customers are the most active?

---

## Key Takeaway

> **The demonstration follows a complete data analytics workflow—from loading raw data to producing actionable business insights using Apache Pig.**

---

# 🎯 Slide Objective

After this slide, the audience should understand:

* The sequence of the live demonstration.
* The purpose of each step.
* How each Pig command contributes to answering business questions.

---

# 💡 Visual Design Suggestion

### Left Side – Workflow Diagram

```text id="f7ukl6"
events.csv
    │
    ▼
LOAD
    │
    ▼
DESCRIBE
    │
    ▼
DUMP
    │
    ▼
Analysis
    │
    ▼
STORE
```

---

### Right Side – Analysis Tasks

```text id="nmthjw"
📊 Count Events

📈 Event Distribution

🔥 Top Products

👤 Top Customers

💾 Export Results
```

---

## 🎤 Speaker Notes (~1 phút)

> Before running the live demo, let's look at the overall workflow.
>
> We begin by loading the `events.csv` dataset into Apache Pig. Next, we verify the schema using `DESCRIBE` and inspect a sample of the data with `DUMP` to ensure everything has been loaded correctly.
>
> After validating the dataset, we perform several analyses to answer our business questions, including counting events, identifying the most viewed products, and finding the most active customers.
>
> Finally, we store the analysis results so they can be reused for reporting or downstream processing.

---

## 🔗 Transition to Slide 22

> **Now let's start the live demonstration with the first step: loading the RetailRocket dataset into Apache Pig using the `LOAD` command.**

---

### Slide 22
**Demo 1**

**Task**
- Load Dataset

**Purpose**
- Start the live demo with data loading

---

### Slide 23
**Demo 2**

**Task**
- Count Total Events

**Commands**
- `GROUP ALL`
- `COUNT`

**Purpose**
- Show total scale of the dataset

---

### Slide 24
**Demo 3**

**Task**
- Count Event Types

**Commands**
- `GROUP event`
- `COUNT`

**Purpose**
- Measure distribution of views, carts, and purchases

---

### Slide 25
**Demo 4**

**Task**
- Top Viewed Products

**Commands**
- `GROUP itemid`
- `COUNT`
- `ORDER`
- `LIMIT`

**Purpose**
- Identify popular products

---

### Slide 26
**Demo 5**

**Task**
- Top Visitors

**Commands**
- `GROUP visitor`
- `COUNT`
- `ORDER`
- `LIMIT`

**Purpose**
- Identify active users

---

### Slide 27
**Demo 6**

**Task**
- STORE Result

**Purpose**
- Save the output and complete the pipeline

---

## Chapter 6 - Business Insights

### Slide 28
**Business Insight**

**Flow**
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

**Purpose**
- Translate technical output into business value

---

### Slide 29
**Advantages & Limitations**

**Advantages**
- Easy
- Fast
- Few Lines
- ETL
- Batch Processing

**Limitations**
- Not real-time
- Less popular than Spark
- No machine learning

**Purpose**
- Evaluate Pig honestly

---

## Chapter 7 - Conclusion

### Slide 30
**Conclusion**

**Flow**
```text
Apache Pig
   ↓
Big Data
   ↓
Pig Latin
   ↓
RetailRocket
   ↓
Business Insight
```

**Purpose**
- Summarize the full story

---

### Slide 31
**Q&A**

**Content**
- Thank You
- Questions?

**Purpose**
- Close the presentation

---

## Storyline

```text
Big Data Explosion
        ↓
Business Problem
        ↓
RetailRocket Dataset
        ↓
Traditional Processing
        ↓
Apache Pig
        ↓
Pig Architecture
        ↓
Pig Latin
        ↓
Data Analysis Workflow
        ↓
Business Questions
        ↓
Live Demo
        ↓
Business Insights
        ↓
Advantages & Limitations
        ↓
Conclusion
        ↓
Q&A
```

## Design Guidance
- Use visuals more than bullets
- Keep the deck technical and polished
- Make the dataset visible throughout the talk
- Keep the demo tied to business questions
- End on insight, not syntax

## Project Management Notes

### Workstreams
- Content
- Dataset and demo
- Slide design
- Rehearsal and delivery

### Milestones
- Outline locked
- Slides drafted
- Demo tested
- Final rehearsal

### Demo Checklist
- [ ] Dataset available
- [ ] Pig scripts tested
- [ ] HDFS path checked
- [ ] Output directory clean
- [ ] Backup screenshots ready

