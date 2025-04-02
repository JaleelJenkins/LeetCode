/* 
    Write your PL/SQL query statement below 

    Preoblem: Write a solution to find the average time each machine takes to complete a process.

        Steps:
            - Time to completion is end - start on activity type and timestamp. 
            - Average time is Total time to complete every process / number of process that were ran.
*/

select a.machine_id  , round(avg(b.timestamp - a.timestamp),3) as processing_time
 from activity a join activity b 
on a.machine_id = b.machine_id
and a.process_id = b.process_id
where a.timestamp < b.timestamp 
group by a.machine_id;