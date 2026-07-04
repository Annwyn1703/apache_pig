# Pig Latin Cheat Sheet

## Purpose
Quick reference for the Pig commands and patterns used in the presentation and live demo.

## Core Workflow
```text
LOAD
    ↓
DESCRIBE
    ↓
DUMP
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

## Commands

### LOAD
Read data into a Pig relation.

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

### DESCRIBE
Show the schema of a relation.

```pig
DESCRIBE events;
```

### DUMP
Print relation contents to the terminal.

```pig
DUMP events;
```

### FILTER
Keep only records that match a condition.

```pig
views = FILTER events BY event == 'view';
```

### GROUP
Group records by a key.

```pig
by_event = GROUP events BY event;
```

### GROUP ALL
Place all records into one group.

```pig
all_events = GROUP events ALL;
```

### FOREACH ... GENERATE
Transform grouped or selected records into new output fields.

```pig
event_counts = FOREACH by_event GENERATE
    group AS event_type,
    COUNT(events) AS total_events;
```

### COUNT
Count records in a bag.

```pig
total_events = FOREACH all_events GENERATE COUNT(events);
```

### ORDER
Sort records.

```pig
ordered = ORDER event_counts BY total_events DESC;
```

### LIMIT
Keep only the first N records.

```pig
top10 = LIMIT ordered 10;
```

### STORE
Write results to HDFS.

```pig
STORE top10
INTO '/pig-demo/output/top_products'
USING PigStorage(',');
```

## Common Patterns

### Count Total Records
```pig
grp_all = GROUP events ALL;
result = FOREACH grp_all GENERATE COUNT(events);
DUMP result;
```

### Count by Category
```pig
grp = GROUP events BY event;
result = FOREACH grp GENERATE group, COUNT(events);
DUMP result;
```

### Top-N Ranking
```pig
filtered = FILTER events BY event == 'view';
grp = GROUP filtered BY itemid;
ranked = FOREACH grp GENERATE group, COUNT(filtered) AS total;
ranked = ORDER ranked BY total DESC;
top10 = LIMIT ranked 10;
DUMP top10;
```

## Data Types
- `int`
- `long`
- `float`
- `double`
- `chararray`
- `bytearray`
- `tuple`
- `bag`
- `map`

## Key Concepts
- Relation: a dataset in Pig
- Lazy evaluation: execution happens only when needed
- Data flow: a step-by-step transformation pipeline
- Batch processing: data is processed in large groups rather than in real time

## Common Errors
- Wrong input path
- Wrong delimiter in `PigStorage`
- Output directory already exists
- Using `DUMP` on a very large relation
- Schema does not match input columns

## Best Practices for the Demo
- Validate schema before analysis
- Use business questions to explain each command
- Keep output examples ready in case the demo needs backup
- Store final results to demonstrate end-to-end workflow
