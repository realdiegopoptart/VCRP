// MYSQL //
#define strcpy(%0,%1,%2) strcat((%0[0] = '\0', %0), %1, %2)

#define SendServerMessage(%0,%1) \
	SendClientMessageEx(%0, COLOR_LIGHTRED, "[Alert]:{FFFFFF} "%1)

#define SendSyntaxMessage(%0,%1) \
	SendClientMessageEx(%0, COLOR_LIGHTRED, "Correct usage:{FFFFFF} "%1) // COLOR_YELLOW

#define SendErrorMessage(%0,%1) \
	SendClientMessageEx(%0, COLOR_LIGHTRED, "[Error]:{FFFFFF} "%1)

#define SendAdminAction(%0,%1) \
	SendClientMessageEx(%0, COLOR_LIGHTRED, "[Admin]:{FFFFFF} "%1) // COLOR_YELLOW

#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

#define HOLDING(%0) \
    ((newkeys & (%0)) == (%0))
#define RELEASED(%0) \
    (((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))


#define for___loop(%1;%2;%3) for(%1;%2;%3) //when not debugging

#define while___loop(%1) while(%1) //when not debugging

#define function:%0(%1) forward %0(%1); public %0(%1)