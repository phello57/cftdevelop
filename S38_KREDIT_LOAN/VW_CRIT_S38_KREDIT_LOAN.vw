class S38_KREDIT_LOAN;

@name('Полный список')
view VW_CRIT_S38_KREDIT_LOAN {
    type main is
        select a(
        	a.[CODE] :C_CODE ,
        	a.[NAME] :C_NAME ,
        	a.[KIND_CRED] :C_KIND_CRED ,
        	a.[KOEF] :C_KOEF 
        )
        in ::[S38_KREDIT_LOAN];
}
