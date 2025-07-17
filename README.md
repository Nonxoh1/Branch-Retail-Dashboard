<h1>BRANCH RETAIL DASHBOARD Dashboard</h1>

 ### [DASHBOARD LINK](https://app.powerbi.com/groups/me/reports/ed74aad2-a5db-4a6f-af18-315c1246378f/70c55a5f1ecd488d3dec?experience=power-bi)

<h2>Description</h2>
This Power BI dashboard was created to track deposit mobilization performance at LAPO Microfinance Bank, Dawson Branch. The goal was to provide a clear picture of how much each Customer Service Officer (CSO) contributed to total deposits within a selected period.


<br />


<h2>📂 Tools & Technologies Used</h2>

- <b>SQL (Oracle): For data extraction/b> 
- <b>Microsoft Excel: Light cleanup before import</b>
- <b>Power BI Desktop: For visuals, KPIs, and interactivity</b>
- <b>DAX: To calculate totals, ratios, and conditional values</b>

<h2>Environments Used </h2>

- <b>Windows 10</b> (21H2)

<h2>Steps Followed:</h2>

<p align="center">
Step 1:Understanding the Business Need
<p align="left"><br>The objective was to help regional and branch-level stakeholders visualize and track the total deposits mobilized across various channels, zones, and states, focusing on clean credit transactions within the core banking system. This would support better strategy planning and performance monitoring.

</br>


<p align="center">
Step 2:Data Extraction via SQL (Oracle Database)
<p align="left"><br>I wrote and executed a custom SQL script (see https://github.com/Nonxoh1/Branch-Retail-Dashboard/blob/main/DEPOSIT%20MOBILIZE.sql) to extract credit-only deposit transactions.</br>


<p align="left">Key filters applied:

Date range: 1st JAN 2024 – 31ST AUG 2024

Transaction type: Only non-reversal CREDITS (drcr_ind = 'C')

Excluded: VAT, SMC, SDC, internal user IDs, and specific product types like NOSTRO, MOBILE WALLETS, CALL, TERM DEPOSITS, etc.

The script also joined relevant tables to get:

Zone, State, and Area from the sttm_branch_custom table

Branch codes and account details from sttm_cust_account
</br>
<p align="center">
Step 3: Data Cleaning & Aggregation
<p align="left"><br>Used GROUP BY to summarize total LCY deposit amount per branch, zone, and state.

Removed duplicates and validated transaction integrity using business logic.

Exported the result as an EXCEL file from SQL Developer.</br>
<p align="center">
Step 4: Data Modeling in Power BI
<p align="left"><br>Imported the cleaned EXCEL File into Power BI.
Defined proper data types (e.g., branch as text, amount as decimal).

Created relationships between dimension tables with other tables because i made use of two data. Example is New clients mobilized by each CSO in the bank.(see https://github.com/Nonxoh1/Branch-Retail-Dashboard/blob/main/NEW%20CUSTOMERS%20CREATED_ONBOARDED.sql)</br>

<p align="center">
Step 4: Dashboard Development
<p align="left"><br>Designed a clean and executive-friendly layout to highlight:
Total Deposits Mobilized
Top Performing Zones
Performance by State and Area
Branch Contribution Breakdown
Used bar charts, cards, a ranking system of top and bottom performing CSO's and slicers for interactivity and insight filtering.




 

<br />
<br />

</br>
</br>
<p align="center">
Step 3: Visual Design <br/>
<img src="https://i.imgur.com/CAhtiTQ.jpeg" height="80%" width="80%" alt="Dashbaord Design"/>
 
 <p align="left">A Decomposition Tree Visual was used to break down transaction flow in this order:
  
  <br>Platform ➝ Account Product ➝ Transaction Type ➝ Zone ➝ Branch ➝ Customer Name

Verified column data types and filtered out non-essential transactions (REV%, SDC, VAT, etc.).

📈 Insights
Total Transaction Volume: ₦1,073,043,066.09

Top Channels by Volume:

FLEXSWITCH: ₦948M+

LAPOIBANKMOB: ₦113M+

NIPINCM: ₦6.6M

Most Used Products:

Savings Account - Staff

Regular Savings

Xpress Savings

Top Zones by Activity:

Lagos Mainland Zone

FCT Zone

Lagos West Zone


<br />
<br />


 
<br />
<br />


<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
