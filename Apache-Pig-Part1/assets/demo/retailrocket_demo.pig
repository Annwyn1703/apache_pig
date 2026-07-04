events = LOAD '/pig-demo/input/events.csv'
USING PigStorage(',')
AS (
    timestamp:long,
    visitorid:long,
    event:chararray,
    itemid:long,
    transactionid:long
);

DESCRIBE events;

grp_all = GROUP events ALL;
total_events = FOREACH grp_all GENERATE COUNT(events);

event_groups = GROUP events BY event;
event_distribution = FOREACH event_groups GENERATE
    group AS event_type,
    COUNT(events) AS total_events;
event_distribution = ORDER event_distribution BY total_events DESC;

views = FILTER events BY event == 'view';
views_by_item = GROUP views BY itemid;
product_views = FOREACH views_by_item GENERATE
    group AS itemid,
    COUNT(views) AS total_views;
product_views = ORDER product_views BY total_views DESC;
top_products = LIMIT product_views 10;

visitor_groups = GROUP events BY visitorid;
visitor_activity = FOREACH visitor_groups GENERATE
    group AS visitorid,
    COUNT(events) AS total_activities;
visitor_activity = ORDER visitor_activity BY total_activities DESC;
top_visitors = LIMIT visitor_activity 10;

STORE event_distribution
INTO '/pig-demo/output/event_distribution'
USING PigStorage(',');

STORE top_products
INTO '/pig-demo/output/top_products'
USING PigStorage(',');

STORE top_visitors
INTO '/pig-demo/output/top_visitors'
USING PigStorage(',');
