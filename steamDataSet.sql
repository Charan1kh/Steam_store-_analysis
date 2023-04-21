# DataSetOverview
SELECT * FROM steamdataset;
SELECT NAME AS 'GAME TITLE',RELEASE_DATE FROM steamdataset WHERE release_date BETWEEN '1995-11-21' AND '2022-10-20' ORDER BY release_date ASC;

# Windows_platform
select count(windows_platform) as windows_count from steamdataset where windows_platform is not null and windows_platform !='';
select name, windows_platform from steamdataset where windows_platform is not null and windows_platform !='';

# mac_platform
select count(mac_platform) as mac_count from steamdataset where mac_platform is not null and mac_platform !='';
select name, mac_platform from steamdataset where mac_platform is not null and mac_platform !='';

# linux_platform
select count(linux_platform) AS linux_count from steamdataset where linux_platform is not null and linux_platform !='';
select name, linux_platform from steamdataset where linux_platform is not null and linux_platform !='';

# English support
SELECT COUNT(english) AS english_count FROM steamdataset;

# Popular Dev
select developer, count(*) as 'Number of titles Developed' from steamdataset group by developer order by 'Number of titles Developed' desc limit 1;

# Popular Publisher
select publisher, count(*) as 'Number of titles Published' from steamdataset group by Publisher order by 'Number of titles Published' desc limit 1;

# Game with huge user base / Most sold game
select  name as 'Game title', max(owners) as 'Number of Players' from steamdataset group by name order by 'Number of Players'desc limit 5;

# Game with Highest average playtime
select name as 'Game title', max(average_playtime) as 'Avg Playtime' from steamdataset group by name order by 'Avg Playtime' desc limit 5;

# Game with Highest median playtime
ALTER TABLE steamdataset MODIFY median_playtime numeric(10);
select name as 'Game title', max(Median_playtime) as 'Median Playtime' from steamdataset group by name order by 'Median Playtime' desc limit 5;



