
# 14
-- Pull Queries

  # Gets the current state of the system
  # Returns a result and terminates (Introduce in >= 5.4)

  # pull queries are supported only on aggregate tables (example here: count(*))
    Ex:
    create table <> as
    select countrycode, count(*)
    form driveLocations
    group by countrycode

  # Must query against row key
  select countrycode, numdrivers
  from countryDrivers
  where rowkey = 'AU'

-- Example


