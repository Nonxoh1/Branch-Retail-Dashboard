<h1>BRANCH RETAIL DASHBOARD Dashboard</h1>

 ### [DASHBOARD LINK](https://app.powerbi.com/groups/me/reports/3be2a217-62eb-4ac7-80b9-9b44f5536b06/d6b7fa55e4c18dcfc3d5?experience=power-bi)

<h2>Description</h2>
This Power BI dashboard was created to track deposit mobilization performance at LAPO Microfinance Bank, Dawson Branch. The goal was to provide a clear picture of how much each Customer Service Officer (CSO) contributed to total deposits within a selected period.
It breaks down deposits into CASA (Current & Savings Accounts) and Service Deposits, with filters to easily view the top or bottom performers. The dashboard gives managers insight into which CSOs are leading the charge and where support or improvement might be needed.

<br />


<h2>📂 Tools & TechnologiesUsed</h2>

- <b>SQL (Oracle): For data extraction/b> 
- <b>Microsoft Excel: Light cleanup before import</b>
- <b>Power BI Desktop: For visuals, KPIs, and interactivity</b>
- <b>DAX: To calculate totals, ratios, and conditional values</b>

<h2>Environments Used </h2>

- <b>Windows 10</b> (21H2)

<h2>Steps Followed:</h2>

<p align="center">
Step 1:Data Extraction via SQL (Oracle Database)
<p align="left"><br>I wrote and executed a custom SQL script (see https://github.com/Nonxoh1/Branch-Retail-Dashboard/blob/main/DEPOSIT%20MOBILIZE.sql) to extract credit-only deposit transactions.</br>


<p align="left">Key filters applied:

Date range: 1st JAN 2024 – 31ST AUG 2024

Transaction type: Only non-reversal CREDITS (drcr_ind = 'C')

Excluded: VAT, SMC, SDC, internal user IDs, and specific product types like NOSTRO, MOBILE WALLETS, CALL, TERM DEPOSITS, etc.

The script also joined relevant tables to get:

Zone, State, and Area from the sttm_branch_custom table

Branch codes and account details from sttm_cust_account
</br>

<br />
<br />
<p align="center">
Step 2: Power BI load <br/>
<img src="https://i.imgur.com/OsNL3Se.jpeg" height="80%" width="80%" alt="Power Query Steps Steps"/>
 
 <p align="left">Data loaded directly from CSV extracts into Power BI Desktop.
  
  <br>Relationships automatically detected and adjusted as necessary.
  Light transformation was done (most data was already clean).

Verified column data types and filtered out non-essential transactions (REV%, SDC, VAT, etc.).

Ensured no sensitive fields (e.g. mobile numbers) were retained in the report.

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
