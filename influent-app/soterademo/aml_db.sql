-- by using the database name 'aml' we can avoid having to edit the file
-- ./influent/influent-app/src/main/resources/database-config.xml
-- 
-- Also NOTE:
--   I lower-cased the ENTIRE FILE.  Their code is set up to use lower-case identifiers
--   but for some reason they camel-cased this database script BUT MySQL is case-sensitive!!!
drop database if exists aml;
create database aml;
use aml;

drop table if exists your_raw_data;
create table your_raw_data(source_id varchar(100), dest_id varchar(100), amount float, dt datetime, trans_id varchar(100), info varchar(100));
insert into  your_raw_data(source_id, dest_id, amount, dt, trans_id, info)
values ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-04t12:30:45', '00', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-05t12:30:45', '01', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-06t12:30:45', '02', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-07t12:30:45', '03', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-08t12:30:45', '04', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-11t12:30:45', '05', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-12t12:30:45', '06', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-13t12:30:45', '07', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-14t12:30:45', '08', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-15t12:30:45', '09', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-18t12:30:45', '10', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-19t12:30:45', '11', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-20t12:30:45', '12', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-21t12:30:45', '13', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-22t12:30:45', '14', 'info'),
    ('alpha@amail.com', 'beta@bmail.com', 9783.75, '2014-05-04t12:30:45', '15', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-05t12:33:45', '101', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-06t12:33:45', '102', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-07t12:33:45', '103', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-08t12:33:45', '104', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-11t12:33:45', '105', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-12t12:33:45', '106', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-13t12:33:45', '107', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-14t12:33:45', '108', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-15t12:33:45', '109', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-18t12:33:45', '110', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-19t12:33:45', '111', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-20t12:33:45', '112', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-21t12:33:45', '113', 'info'),
    ('beta@bmail.com', 'charlie@cmail.com', 9583.75, '2014-05-22t12:33:45', '114', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-04t12:30:45', '300', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-05t12:30:45', '301', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-06t12:30:45', '302', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-07t12:30:45', '303', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-08t12:30:45', '304', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-11t12:30:45', '305', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-12t12:30:45', '306', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-13t12:30:45', '307', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-14t12:30:45', '308', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-15t12:30:45', '309', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-18t12:30:45', '310', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-19t12:30:45', '311', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-20t12:30:45', '312', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-21t12:30:45', '313', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-22t12:30:45', '314', 'info'),
    ('delta@amail.com', 'echo@email.com', 9783.75, '2014-05-04t12:30:45', '315', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-05t12:33:45', '401', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-06t12:33:45', '402', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-07t12:33:45', '403', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-08t12:33:45', '404', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-11t12:33:45', '405', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-12t12:33:45', '406', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-13t12:33:45', '407', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-14t12:33:45', '408', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-15t12:33:45', '409', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-18t12:33:45', '410', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-19t12:33:45', '411', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-20t12:33:45', '412', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-21t12:33:45', '413', 'info'),
    ('echo@email.com', 'charlie@cmail.com', 9583.75, '2014-05-22t12:33:45', '414', 'info');    

    
/*
 * copyright 2013-2016 uncharted software inc.
 *
 *  property of uncharted(tm), formerly oculus info inc.
 *  https://uncharted.software/
 *
 *  licensed under the apache license, version 2.0 (the "license");
 *  you may not use this file except in compliance with the license.
 *  you may obtain a copy of the license at
 *
 *      http://www.apache.org/licenses/license-2.0
 *
 *  unless required by applicable law or agreed to in writing, software
 *  distributed under the license is distributed on an "as is" basis,
 *  without warranties or conditions of any kind, either express or implied.
 *  see the license for the specific language governing permissions and
 *  limitations under the license.
 */

-- -----------------------------
-- influent data views 1.2 draft
-- -----------------------------

--
-- financial flow - all
--  used to build the aggregate flow diagrams
--
--   fromentityid - entity uid that is the source of the transactions
--   fromentitytype - type of src entity: o = owner summary, a = account, s = cluster summary entity
--   toentityid - entity uid that is the target of the transactions
--   toentitytype - type of dst entity: o = owner summary, a = account, s = cluster summary entity
--   firsttransaction - datetime of first transaction
--   lasttransaction - datetime of last transaction
--   amount - aggregate amount
--
create table finflow (fromentityid varchar(100), fromentitytype varchar(1), toentityid varchar(100), toentitytype varchar(1), firsttransaction datetime, lasttransaction datetime, amount float, constraint pk_ff_id primary key (fromentityid, toentityid));

create table finentity(entityid varchar(100) primary key, incominglinks int, uniqueincominglinks int,  outgoinglinks int, uniqueoutgoinglinks int, numtransactions int, maxtransaction float, avgtransaction float, startdate datetime, enddate datetime);

--
-- financial flow - aggregated by time
--  used to build the aggregate flow diagrams (aggregated by time)
--  and used to build the highlighted sub-section of the time series charts on entities.
--
--   fromentityid - entity uid that is the source of the transactions
--   fromentitytype - type of src entity: o = owner summary, a = account, s = cluster summary entity
--   toentityid - entity uid that is the target of the transactions
--   toentitytype - type of dst entity: o = owner summary, a = account, s = cluster summary entity
--   amount - aggregate amount for this time period
--   date - start of the time period
--
create table finflowdaily     (fromentityid varchar(100), fromentitytype varchar(1), toentityid varchar(100), toentitytype varchar(1), amount float, perioddate datetime, constraint pk_ffd_id primary key (fromentityid, toentityid, perioddate));
create table finflowweekly    (fromentityid varchar(100), fromentitytype varchar(1), toentityid varchar(100), toentitytype varchar(1), amount float, perioddate datetime, constraint pk_ffw_id primary key (fromentityid, toentityid, perioddate));
create table finflowmonthly   (fromentityid varchar(100), fromentitytype varchar(1), toentityid varchar(100), toentitytype varchar(1), amount float, perioddate datetime, constraint pk_ffm_id primary key (fromentityid, toentityid, perioddate));
create table finflowquarterly (fromentityid varchar(100), fromentitytype varchar(1), toentityid varchar(100), toentitytype varchar(1), amount float, perioddate datetime, constraint pk_ffq_id primary key (fromentityid, toentityid, perioddate));
create table finflowyearly    (fromentityid varchar(100), fromentitytype varchar(1), toentityid varchar(100), toentitytype varchar(1), amount float, perioddate datetime, constraint pk_ffy_id primary key (fromentityid, toentityid, perioddate));

--
-- financial entity summary
--  used to build the time series charts on entities (aggregated by time).
--
--   entityid - entity uid
--   date - start of the time period
--   inboundamount - aggregate credits for this time period
--   incominglinks - unique inbound transactions by entity
--   outboundamount - aggregate debits for this time period
--   outgoinglinks - unique outbound transactions by entity
--   balance - aggregate credits - debits up until this time period
--
create table finentitydaily     (entityid varchar(100), perioddate datetime, inboundamount float, incominglinks int, outboundamount float, outgoinglinks int, balance float, constraint pk_fed_id primary key (entityid, perioddate));
create table finentityweekly    (entityid varchar(100), perioddate datetime, inboundamount float, incominglinks int, outboundamount float, outgoinglinks int, balance float, constraint pk_few_id primary key (entityid, perioddate));
create table finentitymonthly   (entityid varchar(100), perioddate datetime, inboundamount float, incominglinks int, outboundamount float, outgoinglinks int, balance float, constraint pk_fem_id primary key (entityid, perioddate));
create table finentityquarterly (entityid varchar(100), perioddate datetime, inboundamount float, incominglinks int, outboundamount float, outgoinglinks int, balance float, constraint pk_feq_id primary key (entityid, perioddate));
create table finentityyearly    (entityid varchar(100), perioddate datetime, inboundamount float, incominglinks int, outboundamount float, outgoinglinks int, balance float, constraint pk_fey_id primary key (entityid, perioddate));

--
-- cluster summary
--  used to summarize an entity with a large number of associated entities (e.g. account owner with a large number of accounts)
--   it is up to each application to determine what cluster summaries to generate based on the size of data
--
--   entityid - entity uid of cluster entity
--   property - name of summary property
--   tag - property_tag to associate with property
--   type - fl_propertytype data type of property value (double, long, boolean, string, date, geo, other)
--   value - the string representation of the property value
--   stat - an associated stat for the property value such as frequency or weight
--
--   notes:  cluster summaries that represent an account owner should have an account owner property that associates the entity id of the account owner to the cluster summary:
--                 ex: enitityid = 'cluster123', property = 'ownerid', tag = 'account_owner', type = 'string', value = 'partner123', stat = 0
--           cluster summaries that do not support branching should have a property of unbranchable (by default all cluster summaries are branchable)
--                 ex: enitityid = 'cluster123', property = 'unbranchable', tag = 'entity_type', type = 'boolean', value = 'true', stat = 0
create table clustersummary	(entityid varchar(100), property varchar(50), tag varchar(50), type varchar(50), value varchar(200), stat float, constraint pk_cs_id primary key (entityid, property, value));

--
-- cluster summary members
--  used to keep track of entities that are members of a cluster summary
--   it is up to each application to determine what cluster summaries to generate based on the size of data
--
--   summaryid - uid of cluster summary
--   entityid - member entity uid
--
create table clustersummarymembers (summaryid varchar(100), entityid varchar(100), constraint pk_csm_id primary key (summaryid, entityid));

--
-- data view drivers
--  these scripts will populate the data views above.
--
--  step 1. modify this to pull data from your raw data.  add any transactions to cluster summaries as well.
--

insert into finflowdaily
 select `source_id`, 'a', `dest_id`, 'a', sum(`amount`), date(`dt`)
	from your_raw_data
	group by `source_id`, `dest_id`, date(`dt`);

-- build finentity
insert into finentity (entityid, incominglinks, uniqueincominglinks,  outgoinglinks, uniqueoutgoinglinks, numtransactions, maxtransaction, avgtransaction, startdate, enddate)
select entityid, sum(incominglinks) as incominglinks, sum(uniqueincominglinks) as uniqueincominglinks, sum(outgoinglinks) as outgoinglinks , sum(uniqueoutgoinglinks) as uniqueoutgoinglinks, sum(numtransactions) as numtransactions, max(maxtransaction) as maxtransactions, sum(totaltransactions) / sum(numtransactions) as avgtransactions, min(startdate) as startdate, max(enddate) as enddate
from (
	select  `dest_id` as entityid,
			count(`source_id`) as incominglinks,
			count( distinct `source_id` ) as uniqueincominglinks,
			0 as outgoinglinks,
			0 as uniqueoutgoinglinks,
			count(`dest_id`) as numtransactions,
			max(`amount`) as maxtransaction,
			sum(`amount`) as totaltransactions,
			min(`dt`) as startdate,
			max(`dt`) as enddate
	from your_raw_data
	group by `dest_id`
	union
	select `source_id` as entityid,
			0 as incominglinks,
			0 as uniqueincominglinks,
			count(`dest_id`) as outgoinglinks,
			count( distinct `dest_id` ) as uniqueoutgoinglinks,
			sum( case when `source_id` <> `dest_id` then 1 else 0 end ) as numtransactions,
			max(`amount`) as maxtransaction,
			sum(`amount`) as totaltransactions,
			min(`dt`) as startdate,
			max(`dt`) as enddate
	from your_raw_data
	group by `source_id`
)q
group by entityid;

create index ix_ff_id on finentity (entityid);


--
--  step 2. the rest of the script will collect data from finflowdaily.
--          execute the rest of this script "as-is".
--

--  build the rest of the finflow aggregations

insert into finflowweekly
 select fromentityid, fromentitytype, toentityid, toentitytype, sum(amount), date_add(date(perioddate), interval ((1) - dayofweek(date(perioddate)) - 6 ) day)
  from finflowdaily
  group by fromentityid, fromentitytype, toentityid, toentitytype, date_add(date(perioddate), interval ((1) - dayofweek(date(perioddate)) - 6 ) day);

insert into finflowmonthly
 select fromentityid, fromentitytype, toentityid, toentitytype, sum(amount), concat(concat(concat(convert(year(date(perioddate)),char(4)),'/'),convert(month(date(perioddate)),char(2))),'/01')
  from finflowdaily
  group by fromentityid, fromentitytype, toentityid, toentitytype, concat(concat(concat(convert(year(date(perioddate)),char(4)),'/'),convert(month(date(perioddate)),char(2))),'/01');

insert into finflowquarterly
 select fromentityid, fromentitytype, toentityid, toentitytype, sum(amount), concat(concat(concat(convert(year(date(perioddate)),char(4)),'/'),case when quarter(date(perioddate))=1 then '01' when quarter(date(perioddate))=2 then '04' when quarter(date(perioddate))=3 then '07' when quarter(date(perioddate))=4 then '010' end),'/01')
  from finflowmonthly
  group by fromentityid, fromentitytype, toentityid, toentitytype, concat(concat(concat(convert(year(date(perioddate)),char(4)),'/'),case when quarter(date(perioddate))=1 then '01' when quarter(date(perioddate))=2 then '04' when quarter(date(perioddate))=3 then '07' when quarter(date(perioddate))=4 then '010' end),'/01');

insert into finflowyearly
 select fromentityid, fromentitytype, toentityid, toentitytype, sum(amount), concat(convert(year( date(perioddate)),char(4)),'/01/01')
  from finflowmonthly
  group by fromentityid, fromentitytype, toentityid, toentitytype, concat(convert(year( date(perioddate)),char(4)),'/01/01');

--  create finflow indices
create index ix_ffd_from on finflowdaily     (fromentityid, perioddate, toentityid,   amount);
create index ix_ffd_to   on finflowdaily     (toentityid,   perioddate, fromentityid, amount);
create index ix_ffw_from on finflowweekly    (fromentityid, perioddate, toentityid,   amount);
create index ix_ffw_to   on finflowweekly    (toentityid,   perioddate, fromentityid, amount);
create index ix_ffm_from on finflowmonthly   (fromentityid, perioddate, toentityid,   amount);
create index ix_ffm_to   on finflowmonthly   (toentityid,   perioddate, fromentityid, amount);
create index ix_ffq_from on finflowquarterly (fromentityid, perioddate, toentityid,   amount);
create index ix_ffq_to   on finflowquarterly (toentityid,   perioddate, fromentityid, amount);
create index ix_ffy_from on finflowyearly    (fromentityid, perioddate, toentityid,   amount);
create index ix_ffy_to   on finflowyearly    (toentityid,   perioddate, fromentityid, amount);

--  build finflow
insert into finflow
 select fromentityid, fromentitytype, toentityid, toentitytype, min(date(perioddate)), max(date(perioddate)), sum(amount)
  from finflowdaily
  group by fromentityid, fromentitytype, toentityid, toentitytype;

create index ix_ff_to_from on finflow (toentityid, fromentityid);
create index ix_ff_from_to on finflow (fromentityid, toentityid);

--  build finentitydaily
create table temp_ids (entity varchar(100));
create index tids on temp_ids (entity);

insert into temp_ids
 select distinct fromentityid
  from finflowyearly
 union
 select distinct toentityid
  from finflowyearly;

insert into finentitydaily select entity, date(perioddate),
       sum(case when toentityid = entity and fromentitytype = 'a' then amount else 0 end),
       sum(case when toentityid = entity and fromentitytype = 'a' then 1 else 0 end), -- calculate inbound degree
       sum(case when fromentityid = entity and toentitytype = 'a' then amount else 0 end),
       sum(case when fromentityid = entity and toentitytype = 'a' then 1 else 0 end), -- calculate outbound degree
       0 -- todo calculate balance
 from temp_ids
 join finflowdaily on fromentityid = entity or toentityid = entity
 group by entity, date(perioddate);

-- cleanup
drop table temp_ids;

-- build the rest of the finentity aggregations
insert into finentityweekly
 select entityid, date_add(date(perioddate), interval ((1) - dayofweek(date(perioddate)) - 6 ) day), sum(inboundamount), sum(incominglinks), sum(outboundamount), sum(outgoinglinks), 0
  from finentitydaily
  group by entityid, date_add(date(perioddate), interval ((1) - dayofweek(date(perioddate)) - 6 ) day);

insert into finentitymonthly
 select entityid,  concat(concat(concat(convert(year( date(perioddate)),char(4)),'/'),convert(month(date(perioddate)),char(2))),'/01'), sum(inboundamount), sum(incominglinks), sum(outboundamount), sum(outgoinglinks), 0
  from finentitydaily
  group by entityid, concat(concat(concat(convert(year( date(perioddate)),char(4)),'/'),convert(month(date(perioddate)),char(2))),'/01');

insert into finentityquarterly
 select entityid, concat(concat(concat(convert(year( date(perioddate)),char(4)),'/'),case when quarter(date(perioddate))=1 then '01' when quarter(date(perioddate))=2 then '04' when quarter(date(perioddate))=3 then '07' when quarter(date(perioddate))=4 then '010' end),'/01'), sum(inboundamount), sum(incominglinks), sum(outboundamount), sum(outgoinglinks), 0
  from finentitymonthly
  group by entityid, concat(concat(concat(convert(year( date(perioddate)),char(4)),'/'),case when quarter(date(perioddate))=1 then '01' when quarter(date(perioddate))=2 then '04' when quarter(date(perioddate))=3 then '07' when quarter(date(perioddate))=4 then '010' end),'/01');

insert into finentityyearly
 select entityid, concat(convert(year( date(perioddate)),char(4)),'/01/01'), sum(inboundamount), sum(incominglinks), sum(outboundamount), sum(outgoinglinks), 0
  from finentityquarterly
  group by entityid, concat(convert(year( date(perioddate)),char(4)),'/01/01');

create index ix_fed on finentitydaily     (entityid, perioddate, inboundamount, outboundamount);
create index ix_few on finentityweekly    (entityid, perioddate, inboundamount, outboundamount);
create index ix_fem on finentitymonthly   (entityid, perioddate, inboundamount, outboundamount);
create index ix_feq on finentityquarterly (entityid, perioddate, inboundamount, outboundamount);
create index ix_fey on finentityyearly    (entityid, perioddate, inboundamount, outboundamount);

create index ix_csum on clustersummary	(entityid);
create index ix_cmem on clustersummarymembers  (summaryid);



--
-- step 3. create summary stats table
--

create table datasummary (
	summaryorder int not null,
	summarykey varchar(100) not null,
	summarylabel varchar(1000) null,
	summaryvalue text null,
	unformattednumeric float null,
	unformatteddatetime datetime null,
	constraint pk_ds_order primary key (summaryorder)
);

--
-- step 4. populate summary stats table with statistic data
--
-- modify this section as needed to reflect the nature of your dataset.
-- the first stat in the table should be a description of your dataset. the following
-- inserts show an example of typical summary statistics. note that you will in most cases
-- want to format the values nicely for reading. the script as is here will simply
-- copy most types of values over in their default format. unformattednumeric
-- and unformatteddatetime are added to provide a reference in case the formatted
-- value corrupts or loses valuable information.

-- modify the following to create a summary description
insert into datasummary (summaryorder, summarykey, summarylabel, summaryvalue, unformattednumeric, unformatteddatetime)
values (
	1,
	'infosummary',
	'about',
	'some interesting description of your dataset can be written here.',
    null,
    null
);

-- the following calculates the number of accounts in the data
insert into datasummary (summaryorder, summarykey, summarylabel, summaryvalue, unformattednumeric, unformatteddatetime)
select 
	2,
	'numaccounts',
	'accounts',
	null,
	count(*),
	null
from finentity;


-- the following calculates the number of transactions in the data
insert into datasummary (summaryorder, summarykey, summarylabel, summaryvalue, unformattednumeric, unformatteddatetime)
select
	3,
	'numtransactions',
	'transactions',
	null,
	count(*),
	null
from your_raw_data;

-- the following calculates the earliest transaction in the data
insert into datasummary (summaryorder, summarykey, summarylabel, summaryvalue, unformattednumeric, unformatteddatetime)
select
	4,
	'startdate',
	'earliest transaction',
	null,
	null,
	min(firsttransaction)
from finflow;

-- the following calculates the latest transaction in the data
insert into datasummary (summaryorder, summarykey, summarylabel, summaryvalue, unformattednumeric, unformatteddatetime)
select
	5,
	'enddate',
	'latest transaction',
	null,
	null,
	max(firsttransaction)
from finflow;

-- other statistics can be entered in a similar fashion.


