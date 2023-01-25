class S38_KREDIT_INFO;

@name('Полный список')
view VW_CRIT_S38_KREDIT_INFO {
    type main is
        select a(
			a.[NUM_DOG_CRED].[NUM_DOG] : C_NUM_DOG_CRED,
        	a.[DATE_START] : C_DATE_START,
        	a.[DATE_END] : C_DATE_END,
        	a.[CATEGORY].[NAME] : C_NAME,
        	a.[CATEGORY].[KOEF] : C_KOEF
        )
        in ::[S38_KREDIT_INFO];
}
