 procedure  Get_DEMO_CONTCT
   (
     
      O_result out cursorsearch
      
   )
   as
   begin
   Open O_result For
   SELECT  t.firstname FIRSTNAME  ,t.lastname LASTNAME,t.email EMAIL,t.phonenumber  PHONENUMBER,t.status STATUS,t.id ID FROM  DEMO_CONTCT  t  ;
   end Get_DEMO_CONTCT;
   
   
   --TESTDEMO BY KUSHAL
   
   PROCEDURE  Add_CONTCT_dEMO
(
    P_FIRSTNAME IN VARCHAR2,
     P_LASTNAME IN VARCHAR2,
      P_EMAIL IN VARCHAR2,
       P_PHONENUMBER IN VARCHAR2,
       P_STATUS IN VARCHAR2,
    O_RESULT OUT CURSORSEARCH
)
IS
BEGIN
INSERT INTO  DEMO_CONTCT(firstname,lastname,email,PHONENUMBER,STATUS,ID)
VALUES (P_FIRSTNAME,P_LASTNAME,P_EMAIL,P_PHONENUMBER,P_STATUS,EMP_MVC_SEQ.NEXTVAL);
open O_RESULT for 
 select  firstname,lastname,email,PHONENUMBER,STATUS,ID  from DEMO_CONTCT
      order by ID;
END  Add_CONTCT_dEMO;
   
   
   --END TESTDEMO
   --
   
    PROCEDURE UPDAT_DEMO_CONCT
(  P_ID  IN NUMBER,
    P_FIRSTNAME IN VARCHAR2,
     P_LASTNAME IN VARCHAR2,
      P_EMAIL IN VARCHAR2,
       P_PHONENUMBER IN VARCHAR2,
       P_STATUS IN VARCHAR2,
    O_RESULT OUT CURSORSEARCH
)
IS

BEGIN
  
    UPDATE DEMO_CONTCT 
    SET ID=P_ID,
       firstname=P_FIRSTNAME,
       lastname=P_LASTNAME,
       email=P_EMAIL,
       PHONENUMBER= P_PHONENUMBER,
       STATUS=P_STATUS
        where  ID=P_ID;
        COMMIT;

open O_RESULT for 
  select  firstname,lastname,email,PHONENUMBER,STATUS,ID  from DEMO_CONTCT
      order by ID;

END UPDAT_DEMO_CONCT;
   
   ---
   
   --delete
   PROCEDURE  DeleteRec_CONTCT_Demo
(
    P_ID IN number,
    O_RESULT OUT CURSORSEARCH
)

IS 

BEGIN
    DELETE FROM  DEMO_CONTCT  WHERE  ID=P_ID;
    COMMIT;
    open O_RESULT for 
  select  firstname,lastname,email,PHONENUMBER,STATUS,ID  from DEMO_CONTCT
      order by ID;
    
  END DeleteRec_CONTCT_Demo ;
   
   
