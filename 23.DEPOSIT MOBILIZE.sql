--23. DEPOSIT MOBILIZE--

*************************************************************************************
select --ac.ac_no,
       sum(decode(drcr_ind, 'C', AC.lcy_amount,0)) TOTAL_DEPOSIT,
       ac_branch,
       c.ZONE,
       c.STATE,
       C.AREA
  
    
  from sttm_branch_custom C, acvw_all_ac_entries ac,
  sttm_branch st,sttm_cust_account cust
where c.branch_code = ac.ac_branch
and  ac.ac_branch = st.branch_code
and ac.ac_no = cust.cust_ac_no
--and ac_branch ='001'
and value_dt between ('01-FEB-2025') AND ('28-FEB-2025')
and module in ('RT')

--and c.zone in (:zone)
--and account_class in (:product)
and ac.drcr_ind ='C'
and ac.cust_gl='A'
and ac.balance_upd ='U'
and aC.event not like '%REV%'
AND AC.TRN_CODE NOT IN  ('SMC','SDC', 'VAT')
AND aC.USER_ID NOT IN ('LAPOUSSD','LAPOIBANKWEB','LAPOPOS','FLEXSWITCH','LAPOCRMS','FCATOP','LAPOIBANKMOB','NIPINCM')
and   cust.account_class not in ('NOSTR',
                                'MOB01',
                                'COS01',
                                'NSTEUR',
                                'NSTGBP',
                                'NSTUSD',
                                'NOSHO',
                                'CALL',
                                'SOID',
                                'TDST',
                                'TDLT',
                                'CBR01',
                                'CBR02',
                                'CBR03',
                                'CBR04',
                                'CBR05',
                                'MIR01',
                                'COS01',
                                'MOB01',
                                'OTA01',
                                'CRBS1')
group by c.zone,C.AREA, c.state,ac_branch