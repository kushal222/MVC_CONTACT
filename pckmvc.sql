PROCEDURE  Add_CONTCT_dEMO
(
    P_FIRSTNAME IN VARCHAR2,
     P_LASTNAME IN VARCHAR2,
      P_EMAIL IN VARCHAR2,
       P_PHONENUMBER IN VARCHAR2,
       P_STATUS IN VARCHAR2,
    O_RESULT OUT CURSORSEARCH
);


      procedure  Get_DEMO_CONTCT
   (
     
      O_result out cursorsearch
      
   );
   
   
   
    PROCEDURE UPDAT_DEMO_CONCT
(  P_ID  IN NUMBER,
    P_FIRSTNAME IN VARCHAR2,
     P_LASTNAME IN VARCHAR2,
      P_EMAIL IN VARCHAR2,
       P_PHONENUMBER IN VARCHAR2,
       P_STATUS IN VARCHAR2,
    O_RESULT OUT CURSORSEARCH
);
   
 PROCEDURE  DeleteRec_CONTCT_Demo
(
    P_ID IN number,
    O_RESULT OUT CURSORSEARCH
);