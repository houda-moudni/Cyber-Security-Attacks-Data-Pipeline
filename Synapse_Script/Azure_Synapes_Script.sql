-- OVERVIEW : 

/**
- These SQL queries are designed to analyze the data within the CyberAttacksTable in the CyberAttacksDB database. 
- The analysis covers various attributes, including : 
attack types, attack signatures, browsers, protocols, traffic types, device operating systems, and the actions taken. 
- It also includes a monthly aggregation of attack counts.

**/

-- ###################### Retrieve All Records ######################

select *  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] 

-- ###################### Bidirectional Analysis ######################

SELECT COUNT(Attack_Signature)AS Attack_Signature_Count , Attack_Signature  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] GROUP BY Attack_Signature 

SELECT COUNT(Attack_Type)AS Attack_Type_Count , Attack_Type  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] GROUP BY Attack_Type 

SELECT COUNT(Browser)AS Browser_Count , Browser  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] GROUP BY Browser 

SELECT COUNT(Protocol)AS Protocol_Count , Protocol  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] GROUP BY Protocol 

SELECT COUNT(Traffic_Type)AS Traffic_Type_Count , Traffic_Type  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] GROUP BY Traffic_Type 

SELECT COUNT(Device_OS)AS Device_OS_Count , Device_OS  FROM  [CyberAttacksDB].[dbo].[CyberAttacksTable] GROUP BY Device_OS 

SELECT COUNT(Log_Source) as count , Log_Source from [CyberAttacksTable] GROUP BY Log_Source

SELECT COUNT(Action_Taken) as count , Action_Taken from CyberAttacksTable GRoup BY Action_Taken

-- ###################### Multidimentional Analysis ######################

SELECT 
    COUNT(Malware_Indicators)AS Count , 
    Malware_Indicators, 
    Protocol  
FROM  
    [CyberAttacksDB].[dbo].[CyberAttacksTable] 
GROUP BY 
    Malware_Indicators, 
    Protocol 

SELECT 
    COUNT(Device_OS)AS count , 
    Device_OS, 
    Browser  
FROM  
    [CyberAttacksDB].[dbo].[CyberAttacksTable] 
GROUP BY 
    Device_OS, 
    Browser   

SELECT 
    COUNT(Device_OS)AS count , 
    Device_OS, 
    Malware_Indicators  
FROM  
    [CyberAttacksDB].[dbo].[CyberAttacksTable] 
GROUP BY 
    Device_OS, 
    Malware_Indicators   

SELECT 
    COUNT(*) as count , 
    Action_Taken, 
    Attack_Type 
from 
    CyberAttacksTable 
GRoup BY 
    Action_Taken , 
    Attack_Type

SELECT 
    DATENAME(MONTH, Date) AS Month,
    COUNT(*) AS Attack_Count
FROM 
    [CyberAttacksDB].[dbo].[CyberAttacksTable]
GROUP BY 
    DATENAME(MONTH, Date)
ORDER BY 
     Month;









