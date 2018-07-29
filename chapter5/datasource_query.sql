select count(*),data_sources.name from queries,data_sources where 
queries.data_source_id = data_sources.id group by data_sources.name;
