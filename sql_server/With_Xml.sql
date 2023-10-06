select E.EmployeeNumber, E.EmployeeFirstName, E.EmployeeLastName
	   , E.DateOfBirth, T.Amount, T.DateOfTransaction
from [dbo].[tblEmployee] as E
left join [dbo].[tblTransaction] as T
on E.EmployeeNumber = T.EmployeeNumber
where E.EmployeeNumber between 200 and 202
for xml raw('row')

--<row EmployeeNumber="200" EmployeeFirstName="Michiko" EmployeeLastName="Robinett" DateOfBirth="1981-12-23" Amount="958.9400" DateOfTransaction="2015-02-25T00:00:00" />
--<row EmployeeNumber="200" EmployeeFirstName="Michiko" EmployeeLastName="Robinett" DateOfBirth="1981-12-23" Amount="-5.0900" DateOfTransaction="2015-08-31T00:00:00" />
--<row EmployeeNumber="201" EmployeeFirstName="Carol" EmployeeLastName="Roberts" DateOfBirth="1991-06-25" Amount="-351.4100" DateOfTransaction="2014-04-14T00:00:00" />
--<row EmployeeNumber="201" EmployeeFirstName="Carol" EmployeeLastName="Roberts" DateOfBirth="1991-06-25" Amount="-893.2300" DateOfTransaction="2014-09-18T00:00:00" />
--<row EmployeeNumber="202" EmployeeFirstName="Merav" EmployeeLastName="Rizzi" DateOfBirth="1988-03-16" Amount="913.3600" DateOfTransaction="2015-04-12T00:00:00" />
--<row EmployeeNumber="202" EmployeeFirstName="Merav" EmployeeLastName="Rizzi" DateOfBirth="1988-03-16" Amount="-98.2400" DateOfTransaction="2015-01-11T00:00:00" />
--<row EmployeeNumber="202" EmployeeFirstName="Merav" EmployeeLastName="Rizzi" DateOfBirth="1988-03-16" Amount="-332.2300" DateOfTransaction="2015-10-17T00:00:00" />


select E.EmployeeNumber, E.EmployeeFirstName, E.EmployeeLastName
	   , E.DateOfBirth, T.Amount, T.DateOfTransaction
from [dbo].[tblEmployee] as E
left join [dbo].[tblTransaction] as T
on E.EmployeeNumber = T.EmployeeNumber
where E.EmployeeNumber between 200 and 202
for xml raw('row'), elements



--<row>
--  <EmployeeNumber>200</EmployeeNumber>
--  <EmployeeFirstName>Michiko</EmployeeFirstName>
--  <EmployeeLastName>Robinett</EmployeeLastName>
--  <DateOfBirth>1981-12-23</DateOfBirth>
--  <Amount>958.9400</Amount>
--  <DateOfTransaction>2015-02-25T00:00:00</DateOfTransaction>
--</row>
--<row>
--  <EmployeeNumber>200</EmployeeNumber>
--  <EmployeeFirstName>Michiko</EmployeeFirstName>
--  <EmployeeLastName>Robinett</EmployeeLastName>
--  <DateOfBirth>1981-12-23</DateOfBirth>
--  <Amount>-5.0900</Amount>
--  <DateOfTransaction>2015-08-31T00:00:00</DateOfTransaction>
--</row>
--<row>
--  <EmployeeNumber>201</EmployeeNumber>
--  <EmployeeFirstName>Carol</EmployeeFirstName>
--  <EmployeeLastName>Roberts</EmployeeLastName>
--  <DateOfBirth>1991-06-25</DateOfBirth>
--  <Amount>-351.4100</Amount>
--  <DateOfTransaction>2014-04-14T00:00:00</DateOfTransaction>
--</row>
--<row>
--  <EmployeeNumber>201</EmployeeNumber>
--  <EmployeeFirstName>Carol</EmployeeFirstName>
--  <EmployeeLastName>Roberts</EmployeeLastName>
--  <DateOfBirth>1991-06-25</DateOfBirth>
--  <Amount>-893.2300</Amount>
--  <DateOfTransaction>2014-09-18T00:00:00</DateOfTransaction>
--</row>
--<row>
--  <EmployeeNumber>202</EmployeeNumber>
--  <EmployeeFirstName>Merav</EmployeeFirstName>
--  <EmployeeLastName>Rizzi</EmployeeLastName>
--  <DateOfBirth>1988-03-16</DateOfBirth>
--  <Amount>913.3600</Amount>
--  <DateOfTransaction>2015-04-12T00:00:00</DateOfTransaction>
--</row>
--<row>
--  <EmployeeNumber>202</EmployeeNumber>
--  <EmployeeFirstName>Merav</EmployeeFirstName>
--  <EmployeeLastName>Rizzi</EmployeeLastName>
--  <DateOfBirth>1988-03-16</DateOfBirth>
--  <Amount>-98.2400</Amount>
--  <DateOfTransaction>2015-01-11T00:00:00</DateOfTransaction>
--</row>
--<row>
--  <EmployeeNumber>202</EmployeeNumber>
--  <EmployeeFirstName>Merav</EmployeeFirstName>
--  <EmployeeLastName>Rizzi</EmployeeLastName>
--  <DateOfBirth>1988-03-16</DateOfBirth>
--  <Amount>-332.2300</Amount>
--  <DateOfTransaction>2015-10-17T00:00:00</DateOfTransaction>
--</row>


select E.EmployeeNumber, E.EmployeeFirstName, E.EmployeeLastName
	   , E.DateOfBirth, T.Amount, T.DateOfTransaction
from [dbo].[tblEmployee] as E
left join [dbo].[tblTransaction] as T
on E.EmployeeNumber = T.EmployeeNumber
where E.EmployeeNumber between 200 and 202
for xml auto

--<E EmployeeNumber="200" EmployeeFirstName="Michiko" EmployeeLastName="Robinett" DateOfBirth="1981-12-23">
--  <T Amount="958.9400" DateOfTransaction="2015-02-25T00:00:00" />
--  <T Amount="-5.0900" DateOfTransaction="2015-08-31T00:00:00" />
--</E>
--<E EmployeeNumber="201" EmployeeFirstName="Carol" EmployeeLastName="Roberts" DateOfBirth="1991-06-25">
--  <T Amount="-351.4100" DateOfTransaction="2014-04-14T00:00:00" />
--  <T Amount="-893.2300" DateOfTransaction="2014-09-18T00:00:00" />
--</E>
--<E EmployeeNumber="202" EmployeeFirstName="Merav" EmployeeLastName="Rizzi" DateOfBirth="1988-03-16">
--  <T Amount="913.3600" DateOfTransaction="2015-04-12T00:00:00" />
--  <T Amount="-98.2400" DateOfTransaction="2015-01-11T00:00:00" />
--  <T Amount="-332.2300" DateOfTransaction="2015-10-17T00:00:00" />
--</E>