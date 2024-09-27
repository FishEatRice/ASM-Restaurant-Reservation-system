.MODEL SMALL
.STACK 100H
.DATA
	; TEST Program
	AA DB "A$"
	BB DB "B$"
	CC DB "C$"

    ; New Line
    NL DB 0AH,0DH,"$"

	Display_Line DB " | $"
	
	; Output Setting
	TEN DB 10 ; to show 2 digit
	T20 DB 20 ; for data
	Hundred DB 100 ; to show 3 digit
    
    ; Format
    Display_Input DB ">> $"
	Display_Wrong DB "Wrong Enter. Please enter again.$"
	Display_Fin DB "Bye Bye.$"
	
	; Account KeyWord
	Logout_Success DB "Logout success.$"
	Login_Success DB "Login success! Welcome.$"
	Login_Not_Success DB "Error,Wrong ID or Password!$"
    
    ; Header
    Header1 DB "===============================================",0AH,0DH,"$"
    Header2 DB "  __                          _         _      ",0AH,0DH,"$"
    Header3 DB " /__   _.  |   _.            /    _.  _|_   _  ",0AH,0DH,"$"
    Header4 DB " \_|  (_|  |  (_|  ><  \/    \_  (_|   |   (/_ ",0AH,0DH,"$"
    Header5 DB "                       /                       ",0AH,0DH,"$"
    Header6 DB "===============================================",0AH,0DH,"$"	
    
    ; Home Page
    Display_HomePage1 DB "Welcome to Galaxy Cafe",0AH,0DH,"$"
    Display_HomePage2 DB "<1> Booking Table",0AH,0DH,"$"
    Display_HomePage3 DB "<2> Admin Login",0AH,0DH,"$"
    Display_HomePage4 DB "<3> Pay Deposit",0AH,0DH,"$"
    Display_HomePage5 DB "<0> Exit",0AH,0DH,"$"
	
	; Admin Login
    Display_Admin_Login1 DB "Admin Login Page",0AH,0DH,"$"
    Display_Admin_Login2 DB "ID : $"
    Display_Admin_Login3 DB "Password : $"
    
    ; Admin Information
    Admin_ID DB "123$"
    Admin_Pass DB "123$"
    Admin_Name DB "Admin$"
    
    ; Admin Login Input	
	Input_Admin_ID LABEL BYTE
	Input_Admin_ID_MaxLong DB 11
	Input_Admin_ID_Long DB ?
	Input_Admin_ID_Data DB 11 DUP("$")
	
	Input_Admin_PS LABEL BYTE
	Input_Admin_PS_MaxLong DB 11
	Input_Admin_PS_Long DB ?
	Input_Admin_PS_Data DB 11 DUP("$")
	
	; Admin Page
	Display_Admin_Page1 DB "Admin Main Page",0AH,0DH,"$"
    Display_Admin_Page2 DB "<1> View Booking Table",0AH,0DH,"$"
    Display_Admin_Page3 DB "<2> Deposit System",0AH,0DH,"$"
	Display_Admin_Page4 DB "<3> Check Table Details",0AH,0DH,"$"
	Display_Admin_Page5 DB "<4> Cancel Booking",0AH,0DH,"$"
	Display_Admin_Page6 DB "<0> Log Out",0AH,0DH,"$"
	
	; Table Information
	TotalOfTable	DB 0
	
	Table_B			DB 3
	Table_M			DB 2
	Table_S			DB 1

	; B = more than or equal 6 ( deposit table )
	; M = more than 4 and no over than 6
	; S = less or equals 4
	
	Table_B_Current		DB ?
	Table_M_Current		DB ?
	Table_S_Current		DB ?
	
	; ShowTableDetails
	Display_Show_Table_Details1 DB "Table Details Page",0AH,0DH,"$"
	Display_Show_Table_Details2 DB "Big Table: $"
	Display_Show_Table_Details3 DB "Medium Table: $"
	Display_Show_Table_Details4 DB "Small Table: $"
	Display_Show_Table_Details5 DB "Total: $"
	Display_Show_Table_Details6 DB " Table",0AH,0DH,"$"
	Display_Show_Table_Details7 DB "Press any key continue$"
	
	; User Book Table
	Display_User_Book_Table1 DB "Booking System Menu",0AH,0DH,"$"
	Display_User_Book_Table2 DB "<1> Book a new table",0AH,0DH,"$"
	Display_User_Book_Table3 DB "<2> Seach Booking Record",0AH,0DH,"$"
	Display_User_Book_Table4 DB "<0> Back To Previous Page",0AH,0DH,"$"
	
	; Book New Table
	Display_Book_New_Table1 	DB "Booking New Table Details",0AH,0DH,"$"
	
	Display_Book_New_Table2 	DB "Enter random date to show booking time ( Enter // to exit )",0AH,0DH,"$"
	
	Display_Book_New_Table3 	DB "Booking Date( DD/MM/YYYY ): $"

	Display_Book_Date_Table		DB "Date that been selected : $"
	
	Display_Book_Table_Time_Title	DB "|     | Dining Time |    Status?    |",0AH,0DH,"$"
	Display_Book_Table_Time0 		DB "| <1> |   6:00pm    | $"
	Display_Book_Table_Time1 		DB "| <2> |   6:30pm    | $"
	Display_Book_Table_Time2 		DB "| <3> |   7:00pm    | $"
	Display_Book_Table_Time3 		DB "| <4> |   7:30pm    | $"
	Display_Book_Table_Time4 		DB "| <5> |   8:00pm    | $"
	Display_Book_Table_Time5 		DB "| <6> |   8:30pm    | $"
	Display_Book_Table_Time6 		DB "| <7> |   9:00pm    | $"
	
	Booking_Status_Fully						   	  DB " Fully Booked |",0AH,0DH,"$"

	Booking_Status_Empty						   	  DB "  Available   |",0AH,0DH,"$"
	
	DateIsNotValid DB "Booking Data format is wrong. Please enter again.$"

	TimeIsNotValid DB "The selected time is wrong. Please enter again.$"

	FullyBookDisplay DB "The selected time is fully booked. Please enter again.$"

	; Date input ( 01/01/2024 )
	Input_Date LABEL BYTE
	Input_Date_MaxLong DB 11
	Input_Date_Long DB ?
	Input_Date_Data DB 11 DUP("$")
	
	; Data Date
	Day_Data 	DB 0
	Month_Data 	DB 0
	Year_Data 	DB 0
	
	Display_LocalDate_Input DB "Enter Local $"
	Local_Day_Data 		DB 0
	Local_Month_Data	DB 12
	Local_Year_Data		DB 0
	
	; Booking Data Information
	Booking_No		  	 DB 50 		DUP(?)			; 1						;Add 30H
	Booking_ID		  	 DB 500 	DUP(?)		; 1.1.0.9.2.4.1.B.1
											; Date2 . Month2 . Year2 . Time . Size . No
	Customer_Name 	 	 DB 1000 	DUP(?)
	Contact			 	 DB 1000 	DUP(?)
	Number_People	  	 DB 50 		DUP(?)									;Add 30H
	Booking_Day		 	 DB 50 		DUP(?)									;Add 30H
	Booking_Month    	 DB 50 		DUP(?)									;Add 30H
	Booking_Time_Choose	 DB 50 		DUP(?)			; 0, 1, 2, 3, 4, 5, 6	;Add 30H
	Deposit_Status	 	 DB 50 		DUP(?)			; Y = yes / N = no
	Table_Size			 DB 50 		DUP(?)
	Delete_Status		 DB 50		DUP(?)			; N = default / Y = alraedy delete

	; Keep which time is fully book
	Fully_Book_Table 	 DB 7 DUP(?)		; Y = yes / N = no 

	; Booking Time
	Display_Booking_Time1	DB "Choose a time by using number.",0AH,0DH,"$"

	Time_already_fullybook	DB "Time that selected is fully book.",0AH,0DH,"$"

	Input_Time DB 0;						; To keep what user choose (0, 1, 2, 3, 4...)

	Current_Booking_No DB -1				; to put inside data

	Display_Booking_Time_Process_Loop DB ?

	Display_Booking_Table_Details1 DB "Time that been selected : $"
	
	Number_People_Compare_System1 DB "Number of People : $"

	; To keep how many people that customer input
	Number_People_System_Input LABEL BYTE
	Number_People_System_Input_MaxLong DB 3
	Number_People_System_Input_Long DB ?
	Number_People_System_Input_Data DB 3 DUP("$")

	Number_People_System DB ?

	Display_Number_People_Overage1 DB "Sorry. Our Biggest table is only for a maximum of 12 people.",0AH,0DH,"$"
	Display_Number_People_Overage2 DB "Or you can try to book for 2 table or more?$"

	Display_Number_People_Less1 DB "Sorry. Our minimum booking requirement is 1 customer.",0AH,0DH,"$"
	Display_Number_People_Less2 DB "Please enter again.",0AH,0DH,"$"

	Current_BTable DB 0
	Current_MTable DB 0
	Current_STable DB 0

	Table_Details_B DB "( Big Table Only open for 7 to 12 customers, deposit RM10 per customer )",0AH,0DH,"$"
	Table_Details_M DB "( Medium Table open for 5 and 6 customers ) ",0AH,0DH,"$"
	Table_Details_S DB "( Small Table open for 1 to 4 customers )",0AH,0DH,"$"

	Display_Current_BTable DB "Big Table still available : $"
	Display_Current_MTable DB "Medium Table still available : $"
	Display_Current_STable DB "Small Table still available : $"

	Display_No_More_B_Table DB "Big Table already fully booked. $"
	Display_No_More_M_Table DB "Medium Table already fully booked. $"
	Display_No_More_S_Table DB "Small Table already fully booked. $"

	Display_Booking_Table_Details2 DB "Number of Poeple : $"

	; Customer Details
	Input_Booking_Details_Display DB "Booking Details ( Name maximum 19 characters )",0AH,0DH,"$"

	; To keep customer name
	Input_Customer_Name_Display DB "Customer Name : $"
	Customer_Name_Input LABEL BYTE
	Customer_Name_Input_MaxLong DB 20
	Customer_Name_Input_Long DB ?
	Customer_Name_Input_Data DB 20 DUP("$")

	; To keep customer contact
	; 012 345 6789
	Input_Customer_Contact_Display DB "Phone Number : (+60) $"

	Customer_Contact_Input LABEL BYTE
	Customer_Contact_Input_MaxLong DB 20
	Customer_Contact_Input_Long DB ?
	Customer_Contact_Input_Data DB 20 DUP("$")

	Current_Table_Size DB ?

	Display_Table_Size_DisplayB DB "Table Size : Big Table ",0AH,0DH,"$"
	Display_Table_Size_DisplayM DB "Table Size : Medium Table ",0AH,0DH,"$"
	Display_Table_Size_DisplayS DB "Table Size : Small Table ",0AH,0DH,"$"

	Table_Booking_Error DB "Table Booking Error!!!!",0AH,0DH,"$"

	Display_Table_Booking_Confirm1 DB "Please double confirm for the booking details.",0AH,0DH,"$"
	Display_Table_Booking_Confirm2 DB "Enter '//' to edit name and phone number.",0AH,0DH,"$"
	Display_Table_Booking_Confirm3 DB "Enter 'NO' to cancel this booking.",0AH,0DH,"$"
	Display_Table_Booking_Confirm4 DB "Confirm? ( Please Enter 'YES' to confirm )",0AH,0DH,"$"

	Display_Contact_Wrong_Format DB "Phone Number is in Wrong Format.$"

	Confirm_Booking_Input LABEL BYTE
	Confirm_Booking_Input_MaxLong DB 5
	Confirm_Booking_Input_Long DB ?
	Confirm_Booking_Input_Data DB 5 DUP("$")

	Display_Warning_confirm_Booking1 DB "Detected possible wrong press!",0AH,0DH,"$"

	Display_Press_Any_Key DB "Press any key to continue$"

	Success_Booking_Table1 DB "Booking Successful!",0AH,0DH,"$"
	Success_Booking_Table0 DB "Please pay deposit if there have any deposit.",0AH,0DH,"$"

	Success_Booking_Table2 DB "Press 'Y' to confirm exit.$"

	Display_Booking_ID_Search1 DB "Seach Booking ID Menu",0AH,0DH,"$"
	Display_Booking_ID_Search2 DB "Booking ID ( Enter // to exit ) : $"

	Booking_ID_Search LABEL BYTE
	Booking_ID_Search_MaxLong DB 12
	Booking_ID_Search_Long DB ?
	Booking_ID_Search_Data DB 12 DUP("$")

	Booking_ID_Booking_No DB 88

	Display_Not_Found_Booking_ID DB "Booking ID not found.",0AH,0DH,"$"

	Display_Booking_ID_Search_Menu DB "Booking ID Found!",0AH,0DH,"$"

	Current_Booking_ID		DB 10 DUP (?)

	Display_Booking_ID 		DB "Booking ID : $"
	Display_Customer_Name	DB "Customer Name : $"
	Display_Contact			DB "Phone Number : (+60) $"

	Display_Day				DB "Date : $"
	Display_Time			DB "Time : $"

	Display_Number_People	DB "Number People : $"

	Display_Deposit_Status	DB "Deposit Status : $"
	Display_Not_Paid_Deposit	DB "Not yet paid",0AH,0DH,"$"
	Display_Paid_Deposit		DB "Already paid",0AH,0DH,"$"

	;Cancel Booking
	Display_Cancel_Booking DB "Cancel Booking Table",0AH,0DH,"$"
	Cancel_Booking_EnterID DB "Enter Booking ID to Delete ( Enter // to exit ) : $"

	Cancel_Booking_Confirm DB "Enter YES to Confirm Delete : $"

	Cancel_Booking_Success DB "Delete Process Successful! $"
	Cancel_Booking_Close   DB "Delete Process Canceled! $"

	;Display Booking Details
	Display_Booking_Page1 DB "View Booking Table",0AH,0DH,"$"
	Display_Booking_Page2 DB "List Booking ID:" ,0AH,0DH,"$"
	Display_Booking_Page3 DB "No Booking Record!",0AH,0DH,"$"
	Display_Search_Page DB "Search Booking ID ( Enter // to exit ) : $"

	Show_Record_Process DB 0
	Total_Delete_Table DB -1

	Deposit_system_1 DB "Deposit System",0AH,0DH,"$"
	Deposit_display_allTable DB "Total tables booked : $"
	Deposit_display_BigTable DB "Total big tables booked : $"
	
	;Deposit System
	DISPLAY_DEPOSIT_CHECKING_PAYMENT 	DB "Change Deposit Status to ( Y/N ) : $"

	Deposit_Table 						DB 0
	Deposit_total_table 				DB 0

	Deposit_Not_Big_Table 				DB "This not a big table ",0AH,0DH,"$"

	Display_Multiplied_Result 			DB "The total deposit ( RM 10 / person ) is : RM $"
	Display_Paid_Status_Update			DB "Paid status updating ",0AH,0DH,"$"

	; Deposit Payment
	Deposit_Payment1		DB "Pay Deposit For Big Table (RM 10 / person)",0AH,0DH,"$"
	Deposit_Payment2		DB "** Please label your <Booking_ID> **",0AH,0DH,"$"
	Deposit_Payment3		DB "Touch 'n Go: (+60) 16-311 6627",0AH,0DH,"$"
	Deposit_Payment4		DB "Bank Transfer: 1234 5678 9012",0AH,0DH,"$"


.CODE
; Main Menu
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
	
	CALL SetTable
	
	;Get Local Time 
	MOV AH,2AH
	INT 21H
	
	MOV Local_Day_Data,DL
	MOV Local_Month_Data,DH
	MOV Local_Year_Data,24
   
	START:
		;Header
		CALL HEADER
		
		;HomePage
		MOV AH, 09H
		LEA DX, Display_HomePage1
		INT 21H
		MOV AH, 09H
		LEA DX, Display_HomePage2
		INT 21H
		MOV AH, 09H
		LEA DX, Display_HomePage3
		INT 21H
		MOV AH, 09H
		LEA DX, Display_HomePage4
		INT 21H
		MOV AH, 09H
		LEA DX, Display_HomePage5
		INT 21H
		
		MOV AH, 09H
		LEA DX, NL
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Input
		INT 21H
		MOV AH, 01H
		INT 21H
		
		CMP AL, '0'
		JE FIN
		
		CMP AL, '1'
		JE BookTable
		
		CMP AL, '2'
		JE AdminLogin

		CMP AL, '3'
		JE ShowPayDepositWay
		
		;Wrong Enter 
		MOV AH, 09H
		LEA DX, NL
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Wrong
		INT 21H
		MOV AH, 01H
		INT 21H
		JMP Start
		
		BookTable:
			CALL User_Book_Table
			
			JMP Start
    
		AdminLogin:
			CALL Admin_Login

			JMP Start

		ShowPayDepositWay:

			CALL Show_Deposit_Way
		
	JMP Start
	
	FIN:
		MOV AH, 09H
		LEA DX, NL
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Fin
		INT 21H	
		MOV AH, 09H
		LEA DX, NL
		INT 21H
	
    MOV AX, 4C00H
    INT 21H
MAIN ENDP

; Deposit Payment
Show_Deposit_Way PROC

	CALL HEADER

	MOV AH, 09H
	LEA DX, Deposit_Payment1
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, Deposit_Payment2
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, Deposit_Payment3
	INT 21H

	MOV AH, 09H
	LEA DX, Deposit_Payment4
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Press_Any_Key
	INT 21H

	MOV AH, 01H
	INT 21H

	ret

Show_Deposit_Way ENDP

; Header
HEADER PROC
	; Clear Screen
    MOV AX, 0003H
    INT 10H
	
	;Header
	MOV AH, 09H
    LEA DX, Header1
    INT 21H
	MOV AH, 09H
    LEA DX, Header2
    INT 21H
	MOV AH, 09H
    LEA DX, Header3
    INT 21H
	MOV AH, 09H
    LEA DX, Header4
    INT 21H
	MOV AH, 09H
    LEA DX, Header5
    INT 21H
	MOV AH, 09H
    LEA DX, Header6
    INT 21H
	
	ret
HEADER ENDP

; Admin Login Page
Admin_Login PROC
    ; Header
    CALL HEADER
    
    MOV AH, 09H
    LEA DX, Display_Admin_Login1
    INT 21H
    
    ; ID
    MOV AH, 09H
    LEA DX, Display_Admin_Login2
    INT 21H
    
    MOV AH, 0AH
    LEA DX, Input_Admin_ID
    INT 21H
    
    MOV AH, 09H
    LEA DX, NL
    INT 21H
    
    ; Password
    MOV AH, 09H
    LEA DX, Display_Admin_Login3
    INT 21H
    
    MOV AH, 0AH
    LEA DX, Input_Admin_PS
    INT 21H
    
    MOV AH, 09H
    LEA DX, NL
    INT 21H
    
    ; Check ID
    MOV SI, 0
	MOV CH, 0
    MOV CL, Input_Admin_ID_Long
    
    CHECK_Admin_ID:
        MOV AL, Admin_ID[SI]
        CMP AL, Input_Admin_ID_Data[SI]
        JNE Admin_Login_Fail
        INC SI
    LOOP CHECK_Admin_ID
	
	; DOUBLE CHECK
	CMP Admin_ID[SI],'$'
	JNE Admin_Login_Fail
    
    ; Check Password
    MOV SI, 0
    MOV CH, 0
    MOV CL, Input_Admin_PS_Long
    
    CHECK_Admin_PS:
        MOV AL, Admin_Pass[SI]
        CMP AL, Input_Admin_PS_Data[SI]
        JNE Admin_Login_Fail
        INC SI
    LOOP CHECK_Admin_PS
	
	; DOUBLE CHECK
	CMP Admin_Pass[SI],'$'
	JNE Admin_Login_Fail
    
    ; Login Success
    MOV AH, 09H
    LEA DX, NL
    INT 21H
    MOV AH, 09H
    LEA DX, Login_Success
    INT 21H
    MOV AH, 01H
    INT 21H
	
	;To Admin Page
	CALL Admin_Page
	
    JMP Admin_Login_END
    
    Admin_Login_Fail:
        MOV AH, 09H
        LEA DX, NL
        INT 21H
        MOV AH, 09H
        LEA DX, Login_Not_Success
        INT 21H
        MOV AH, 01H
        INT 21H
    Admin_Login_END:
    ret
Admin_Login ENDP

; [Page] Admin Page
Admin_Page PROC
	; Header
    CALL HEADER
    
	;AdminPage
		MOV AH, 09H
		LEA DX, Display_Admin_Page1
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Admin_Page2
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Admin_Page3
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Admin_Page4
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Admin_Page5
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Admin_Page6
		INT 21H
		
		MOV AH, 09H
		LEA DX, NL
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Input
		INT 21H
		MOV AH, 01H
		INT 21H
		
		CMP AL, '0'
		JE Logout

		;Display Booking Details
		CMP AL, '1'
		JE ShowBooking

		;Deposit System
		CMP AL, '2'
		JE DepositSys
		
		; Show Table Details
		CMP AL, '3'
		JE TableDetails

		CMP AL, '4'
		JE DeleteBookingID

		JMP Admin_Page_Wrong_Input

		ShowBooking:

			CALL ViewShowBooking

			CALL Admin_Page

			ret	

		DepositSys :

			CALL DepositSystem

			CALL Admin_Page

			ret
		
		TableDetails:
		
			CALL ShowTableDetails
		
			CALL Admin_Page
			
			ret

		DeleteBookingID:
			
			CALL Cancel_Booking_Page
		
			CALL Admin_Page
			
			ret

		Admin_Page_Wrong_Input:
		;Wrong Enter 
		MOV AH, 09H
		LEA DX, NL
		INT 21H
		MOV AH, 09H
		LEA DX, Display_Wrong
		INT 21H
		MOV AH, 01H
		INT 21H	
		
		CALL Admin_Page
		
		ret
		
		Logout:
			MOV AH, 09H
			LEA DX, NL
			INT 21H
			MOV AH, 09H
			LEA DX, Logout_Success
			INT 21H	
			MOV AH, 01H
			INT 21H

		ret
Admin_Page ENDP

; Set Table Size
SetTable PROC	
	; Get TotalOfTable
	MOV AL,Table_B
	ADD AL,Table_M
	ADD AL,Table_S
	MOV TotalOfTable,AL
	
	; Set Current Table Data
    MOV AL,Table_B
    MOV Table_B_Current,AL
    MOV AL,Table_M
    MOV Table_M_Current,AL
    MOV AL,Table_S
    MOV Table_S_Current,AL
	
	ret
	
SetTable ENDP

; [Admin] Table Details Page
ShowTableDetails PROC
	;Header
	CALL HEADER
	
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details1
	INT 21H
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	;  Big Table
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details2
	INT 21H
	
	MOV AL,Table_B
	CMP AL,10
	JL Table_B_1digit_only
	
		MOV AH,0H
		MOV AL,Table_B
		DIV TEN
		MOV BX, AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
	
		JMP Table_B_Show_FIN
	
	Table_B_1digit_only:
	
		MOV AH,02H
		MOV DL,Table_B
		ADD DL,30H
		INT 21H
	
	Table_B_Show_FIN:
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	;  Medium Table
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details3
	INT 21H
	
	MOV AL,Table_M
	CMP AL,10
	JL Table_M_1digit_only
	
		MOV AH,0H
		MOV AL,Table_M
		DIV TEN
		MOV BX, AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
	
		JMP Table_M_Show_FIN
	
	Table_M_1digit_only:
	
		MOV AH,02H
		MOV DL,Table_M
		ADD DL,30H
		INT 21H
	
	Table_M_Show_FIN:
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	;  Small Table
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details4
	INT 21H
	
	MOV AL,Table_S
	CMP AL,10
	JL Table_S_1digit_only
	
		MOV AH,0H
		MOV AL,Table_S
		DIV TEN
		MOV BX, AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
	
		JMP Table_S_Show_FIN
	
	Table_S_1digit_only:
	
		MOV AH,02H
		MOV DL,Table_S
		ADD DL,30H
		INT 21H
	
	Table_S_Show_FIN:
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	; Total Table
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details5
	INT 21H
	
	MOV AL,TotalOfTable
	CMP AL,10
	JL TotalOfTable_1digit_only
	
		MOV AH,0H
		MOV AL,TotalOfTable
		DIV TEN
		MOV BX, AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
	
		JMP TotalOfTable_FIN
	
	TotalOfTable_1digit_only:
	
		MOV AH,02H
		MOV DL,TotalOfTable
		ADD DL,30H
		INT 21H
	
	TotalOfTable_FIN:
	
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details6
	INT 21H
	
	MOV AH, 09H
	LEA DX, Display_Show_Table_Details7
	INT 21H
	
	MOV AH, 01H
	INT 21H
	
	ret
	
ShowTableDetails ENDP

; [User] Booking System Menu
User_Book_Table PROC

	;Header
	CALL HEADER
	
	MOV AH, 09H
	LEA DX, Display_User_Book_Table1
	INT 21H
	MOV AH, 09H
	LEA DX, Display_User_Book_Table2
	INT 21H
	MOV AH, 09H
	LEA DX, Display_User_Book_Table3
	INT 21H
	MOV AH, 09H
	LEA DX, Display_User_Book_Table4
	INT 21H
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	MOV AH, 09H
	LEA DX, Display_Input
	INT 21H
	MOV AH, 01H
	INT 21H
	
	CMP AL, '0'
		JE User_Book_Table_FIN
		
		CMP AL, '1'
		JE BookNewTable
		
		CMP AL, '2'
		JE SearchBookingID
	
	;Wrong Enter 
	MOV AH, 09H
	LEA DX, NL
	INT 21H
	MOV AH, 09H
	LEA DX, Display_Wrong
	INT 21H
	MOV AH, 01H
	INT 21H
	
	CALL User_Book_Table
	
	JMP User_Book_Table_FIN
	
	BookNewTable:
		CALL Book_New_Table
		
		CALL User_Book_Table
		
		JMP User_Book_Table_FIN

	SearchBookingID:
		CALL Search_Booking_ID
		
		CALL User_Book_Table
		
	User_Book_Table_FIN:
	
	ret

User_Book_Table ENDP

; Booking Process
Book_New_Table PROC

	Book_New_Table_Process:

		;Header
		CALL HEADER
		
		MOV AH, 09H
		LEA DX, Display_Book_New_Table1
		INT 21H
		
		MOV AH, 09H
		LEA DX, Display_Book_New_Table2
		INT 21H
		
		CALL Set_Date_System

		CMP Year_Data,44
		JNE No_Exit_Booking_Process

			ret

		No_Exit_Booking_Process:
		
		CMP Year_Data,88
		JNE Success_Set_Date_System
		
			MOV AH, 01H
			INT 21H
			
			JMP Book_New_Table_Process
		
			ret
		
		Success_Set_Date_System:

			;Header
			CALL HEADER

			CALL Display_Date_that_been_selected
		
		CALL Booking_Time

		CALL Booking_Process

			CMP Current_Booking_No,-1
			JE Success_Set_Date_System
		
	    Booking_Customer_Number_Process:

			;Header
			CALL HEADER

			; Show date
			CALL Display_Date_that_been_selected

			; Show time
			CALL Display_Time_that_been_selected

			MOV AH, 09H
			LEA DX, NL
			INT 21H

			; Show is there have any table
			CALL Check_Table_Available_Quantity

			MOV AH, 09H
			LEA DX, NL
			INT 21H

			; To see how many people that customer have
			CALL Number_People_Compare_System

			CMP Number_People_System,-1
			JE Booking_Customer_Number_Process

		; Big than 7
		CMP Number_People_System,7
		JGE Booking_New_Table_B

		; Big than 5
		CMP Number_People_System,5
		JGE Booking_New_Table_M

		; Low than 4
		JMP Booking_New_Table_S

		Booking_New_Table_B:

			CALL Booking_New_Table_B_Process

				CMP Current_BTable,0
				JLE Booking_Customer_Number_Process

			JMP Booking_Customer_Details_Details

		Booking_New_Table_M:

			CALL Booking_New_Table_M_Process

				CMP Current_MTable,0
				JLE Booking_Customer_Number_Process

			JMP Booking_Customer_Details_Details

		Booking_New_Table_S:

			CALL Booking_New_Table_S_Process

				CMP Current_STable,0
				JLE Booking_Customer_Number_Process

		Booking_Customer_Details_Details:

			;Header
			CALL HEADER

			; Show date
			CALL Display_Date_that_been_selected

			; Show time
			CALL Display_Time_that_been_selected

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Show Customer Number
			CALL Display_Number_that_user_enter

			CALL Table_Size_Display_System

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH, 09H
			LEA DX, Input_Booking_Details_Display
			INT 21H

			MOV AH, 09H
			LEA DX, Input_Customer_Name_Display
			INT 21H

			MOV AH,0AH
			LEA DX,Customer_Name_Input
			INT 21H

			MOV AH, 09H
			LEA DX, NL
			INT 21H

			; Phone Number
			MOV AH, 09H
			LEA DX, Input_Customer_Contact_Display
			INT 21H

			MOV AH,0AH
			LEA DX,Customer_Contact_Input
			INT 21H

			MOV AH, 09H
			LEA DX, NL
			INT 21H

		Final_Confirm_Booking_Table:

			;Header
			CALL HEADER

			; Show date
			CALL Display_Date_that_been_selected

			; Show time
			CALL Display_Time_that_been_selected

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Show Customer Number
			CALL Display_Number_that_user_enter

			CALL Table_Size_Display_System

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Customer Name
			MOV AH,09H
			LEA DX,Input_Customer_Name_Display
			INT 21H

			MOV AH,09H
			LEA DX,Customer_Name_Input_Data
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Customer Contact
			MOV AH,09H
			LEA DX,Input_Customer_Contact_Display
			INT 21H

			MOV AH,09H
			LEA DX,Customer_Contact_Input_Data
			INT 21H

			MOV CH,0
			MOV CL,Customer_Contact_Input_Long
			MOV SI,0
			MOV BL,0
			MOV DI,0

			INC CL

			Check_Phone_Is_All_Number:

				MOV AL,Customer_Contact_Input_Data[SI]

				; 0DH is end of the input "\n"
				CMP AL,0DH
				JE End_Phone_Checking_Process

				CMP AL,' '
				JE Next_Phone_Checking_Process

				CMP AL,'-'
				JE Next_Phone_Checking_Process

				CMP AL,'0'
				JL Wrong_Phone_Format

				CMP AL,'9'
				JG Wrong_Phone_Format

				INC DI

				JMP Next_Phone_Checking_Process

				Wrong_Phone_Format:
					MOV BL,1

					JMP Next_Phone_Checking_Process

				End_Phone_Checking_Process:

					CMP DI,9
					JE Next_Phone_Checking_Process

					CMP DI,10
					JE Next_Phone_Checking_Process

					MOV BL,1

				Next_Phone_Checking_Process:
					INC SI

			LOOP Check_Phone_Is_All_Number

			CMP BL,0
			JE Contact_Result_Format_Correct

				MOV AH,09H
				LEA DX,NL
				INT 21H

				MOV AH,09H
				LEA DX,NL
				INT 21H

				MOV AH,09H
				LEA DX,Display_Contact_Wrong_Format
				INT 21H

				MOV AH,01H
				INT 21H

				Back_To_Booking_Customer_Details:
				JMP Booking_Customer_Details_Details

			Contact_Result_Format_Correct:

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,Header1
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H
			
			MOV AH,09H
			LEA DX,Display_Table_Booking_Confirm1
			INT 21H

			MOV AH,09H
			LEA DX,Display_Table_Booking_Confirm2
			INT 21H
			
			MOV AH,09H
			LEA DX,Display_Table_Booking_Confirm3
			INT 21H

			MOV AH,09H
			LEA DX,Display_Table_Booking_Confirm4
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,Display_Input
			INT 21H

			MOV AH,0AH
			LEA DX,Confirm_Booking_Input
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; NO
			CMP Confirm_Booking_Input_Data[0],'N'
			JNE Maybe_Back_To_Edit

			CMP Confirm_Booking_Input_Data[1],'O'
			JNE Maybe_Back_To_Edit

			ret

			Maybe_Back_To_Edit:

				; //
				CMP Confirm_Booking_Input_Data[0],'/'
				JNE Not_Back_To_Edit_Booking

				CMP Confirm_Booking_Input_Data[1],'/'
				JE Back_To_Booking_Customer_Details

				; Check for Data Long
				MOV AL,3
				CMP AL,Confirm_Booking_Input_Long
				JNE Wrong_Confirm_Back_To_Enter_Details

			Not_Back_To_Edit_Booking:
				; YES
				CMP Confirm_Booking_Input_Data[0],'Y'
				JNE Wrong_Confirm_Back_To_Enter_Details

				CMP Confirm_Booking_Input_Data[1],'E'
				JNE Wrong_Confirm_Back_To_Enter_Details

				CMP Confirm_Booking_Input_Data[2],'S'
				JNE Wrong_Confirm_Back_To_Enter_Details

				JMP Confirm_Booking_Table

			Wrong_Confirm_Back_To_Enter_Details:

				MOV AH,09H
				LEA DX,Display_Warning_confirm_Booking1
				INT 21H

				MOV AH,09H
				LEA DX,Display_Press_Any_Key
				INT 21H

				MOV AH,01H
				INT 21H

				JMP Final_Confirm_Booking_Table

		Confirm_Booking_Table:

			CALL Create_New_Booking_Date

			;Header
			CALL HEADER

			; Show date
			CALL Display_Date_that_been_selected

			; Show time
			CALL Display_Time_that_been_selected

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Show Customer Number
			CALL Display_Number_that_user_enter

			CALL Table_Size_Display_System
			
			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Customer Name
			MOV AH,09H
			LEA DX,Input_Customer_Name_Display
			INT 21H

			MOV AH,09H
			LEA DX,Customer_Name_Input_Data
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			; Customer Contact
			MOV AH,09H
			LEA DX,Input_Customer_Contact_Display
			INT 21H

			MOV AH,09H
			LEA DX,Customer_Contact_Input_Data
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,Header6
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			JMP Continue_Display_Booking_Details

				Show_Again_Booking_Details:
				JMP Confirm_Booking_Table

			Continue_Display_Booking_Details:

			; Booking ID
			MOV AH,09H
			LEA DX,Display_Booking_ID
			INT 21H

			MOV SI,0
			MOV CX,10
			Display_Current_Booking_ID:
				MOV AH,02H
				MOV DL,Current_Booking_ID[SI]
				INT 21H

				INC SI
			LOOP Display_Current_Booking_ID

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,Header6
			INT 21H

			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,Success_Booking_Table1
			INT 21H

			MOV AH,09H
			LEA DX,Success_Booking_Table0
			INT 21H
			
			MOV AH,09H
			LEA DX,NL
			INT 21H

			MOV AH,09H
			LEA DX,Display_Press_Any_Key
			INT 21H
				
		MOV AH,01H
		INT 21H

		MOV AH,09H
		LEA DX,NL
		INT 21H

		MOV AH,09H
		LEA DX,Success_Booking_Table2
		INT 21H

		MOV AH,01H
		INT 21H
		CMP AL,'Y'
		JNE Show_Again_Booking_Details

		ret

Book_New_Table ENDP

; Booking Date
Set_Date_System PROC

	; Ask Date
	MOV AH, 09H
	LEA DX, Display_Book_New_Table3
	INT 21H
	
	MOV AH, 0AH
    LEA DX, Input_Date
    INT 21H
    
    MOV AH, 09H
    LEA DX, NL
    INT 21H	
	
	MOV SI,0
	MOV CH,0
	MOV CL,Input_Date_Long
	
	MOV Day_Data,0
	MOV Month_Data,0
	MOV Year_Data,0
	
	DateInputCheck:
	
		CALL DateInputCheck_Process
	
	LOOP DateInputCheck
	
	 ; Check Year
    MOV AL,Year_Data
    CMP AL,24                       ;Only Year 2024
    JNE Date_Is_Not_Valid

    ; Check Month
    MOV AL,Month_Data
    CMP AL,Local_Month_Data
    JL Date_Is_Not_Valid
    
    CMP AL,12
    JG Date_Is_Not_Valid

    ; Check Day
    MOV BL,Day_Data
    CMP BL,1
    JL Date_Is_Not_Valid
	
	CMP AL,Local_Month_Data
	JNE Not_Day_Local

	; Check Local
	CMP BL,Local_Day_Data
	JLE Date_Is_Not_Valid

	Not_Day_Local:
    CMP AL,2                    ;AL used in Month
    JE Check_Day_29

    CMP AL,4
    JE Check_Day_30
    
    CMP AL,6
    JE Check_Day_30
    
    CMP AL,9
    JE Check_Day_30
    
    CMP AL,11
    JE Check_Day_30
        
    JMP Check_Day_31
	
    ; Check Day 29
    Check_Day_29:
        CMP BL,29
        JG Date_Is_Not_Valid

	JMP Date_Set_Finish

    ; Check Day 30
    Check_Day_30:
        CMP BL,30
        JG Date_Is_Not_Valid

	JMP Date_Set_Finish

    ; Check Day 31
    Check_Day_31:
        CMP BL,31
        JG Date_Is_Not_Valid
		
	JMP Date_Set_Finish

    Date_Is_Not_Valid:
		MOV AL,Input_Date_Data[0]
		CMP AL,"/"
		JNE No_Exit_Booking_New_Table

		MOV AL,Input_Date_Data[1]
		CMP AL,"/"
		JNE No_Exit_Booking_New_Table

        MOV AH, 09H
        LEA DX, DateIsNotValid
        INT 21H
        
        MOV Day_Data,0
        MOV Month_Data,0
        MOV Year_Data,44
        
        ret

		No_Exit_Booking_New_Table:

		MOV AH, 09H
        LEA DX, DateIsNotValid
        INT 21H
        
        MOV Day_Data,0
        MOV Month_Data,0
        MOV Year_Data,88
        
        ret
        
    Date_Set_Finish:
    
    ret

Set_Date_System ENDP

; Check Input Date
DateInputCheck_Process PROC

	MOV BL,Input_Date_Data[SI]
				
		CMP SI,2
		JE Next_Digit_Date_input

		CMP SI,5
		JE Next_Digit_Date_input
		
		CMP SI,6
		JE Next_Digit_Date_input
		
		CMP SI,7
		JE Next_Digit_Date_input
		
		SUB BL,30H
		
		CMP SI,2
		JGE Input_Date_Not_Day
			
			;Day Set
			CMP Day_Data,0
			JNE Day_Is_Over_1digit
				
				ADD Day_Data,BL
			
			JMP Next_Digit_Date_input
			
			Day_Is_Over_1digit:
				
				MOV AH,0
				MOV AL,Day_Data
				MUL TEN
				ADD AL,BL
				MOV Day_Data,AL
			
			JMP Next_Digit_Date_input
		
		Input_Date_Not_Day:	
				
			CMP SI,5
			JGE Input_Date_Not_Month
				
				;Month Set
				CMP Month_Data,0
				JNE Month_Is_Over_1digit
					
					ADD Month_Data,BL
				
				JMP Next_Digit_Date_input
				
				Month_Is_Over_1digit:
					
					MOV AH,0
					MOV AL,Month_Data
					MUL TEN
					ADD AL,BL
					MOV Month_Data,AL
				
				JMP Next_Digit_Date_input
				
		Input_Date_Not_Month:
						
			;Year Set
			CMP Year_Data,0
			JNE Year_Is_Over_1digit
				
				ADD Year_Data,BL
			
			JMP Next_Digit_Date_input
			
			Year_Is_Over_1digit:
				
				MOV AH,0
				MOV AL,Year_Data
				MUL TEN
				ADD AL,BL
				MOV Year_Data,AL
			
			JMP Next_Digit_Date_input
		
		Next_Digit_Date_input:
		
		INC SI

		ret

DateInputCheck_Process ENDP

; Display Booking Time Table
Booking_Time PROC

	; Dining Time 
	MOV AH, 09H
	LEA DX, Display_Book_Table_Time_Title
	INT 21H
	
	; Having 7 time
	MOV CX, 0
	MOV CL, 7
    MOV SI, 0

	Display_Booking_All:

		MOV Display_Booking_Time_Process_Loop,CL

		CMP SI,0
		JE Display_Booking_Time_Process_0

		CMP SI,1
		JE Display_Booking_Time_Process_1

		CMP SI,2
		JE Display_Booking_Time_Process_2

		CMP SI,3
		JE Display_Booking_Time_Process_3

		CMP SI,4
		JE Display_Booking_Time_Process_4

		CMP SI,5
		JE Display_Booking_Time_Process_5

		CMP SI,6
		JE Display_Booking_Time_Process_6

		Display_Booking_Time_Process_0:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time0
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Process_1:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time1
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Process_2:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time2
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Process_3:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time3
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Process_4:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time4
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Process_5:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time5
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Process_6:
			MOV AH, 09H
			LEA DX, Display_Book_Table_Time6
			INT 21H

			JMP Display_Booking_Time_Done

		Display_Booking_Time_Done:

		CALL Booking_Check_Status_Process

		MOV CL,Display_Booking_Time_Process_Loop

		INC SI

	LOOP Display_Booking_All

	ret

Booking_Time ENDP

; Booking Time Input Process
Booking_Process PROC

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Booking_Time1
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Input
	INT 21H

	MOV AH, 01H
	INT 21H
	MOV Input_Time, AL

	; Change to number from string
	SUB Input_Time,30H

	MOV SI, 0
	MOV BH, 0
    MOV BL, Input_Time 
	
	; if user enter 1, change to 0
    DEC BL

    ADD SI, BX
    MOV AL, Fully_Book_Table[SI]
    CMP AL, 'Y'
    JNE Fully_Booking_Active

		MOV AH, 09H
		LEA DX, FullyBookDisplay
		INT 21H
		MOV Current_Booking_No,-1

		ret

	Fully_Booking_Active:

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	; Check time 1 to 7 = { 1,2,3,4,5,6,7 to 0,1,2,3,4,5,6 }
	CMP Input_Time, 1
    JL Invalid_Booking_Time

    CMP Input_Time, 7
    JG Invalid_Booking_Time

	SUB Input_Time,1			; change 1 to 0

	; Check for booking No
	MOV CX,50
	MOV SI,0
	MOV BL,0

	Booking_No_Search_System:

		MOV AL, Booking_No[SI]
		CMP AL, BL
		JLE Check_Next_Booking_No
		MOV DX, SI
		MOV BL, AL 						; If Yes, put BL

		Check_Next_Booking_No:
			INC SI

    LOOP Booking_No_Search_System

		CMP BL, 0
    	JE First_Booking_No

		; Set it as current
		MOV AL, BL
		MOV Current_Booking_No, AL

		JMP Finish_Booking_No

		First_Booking_No:

			MOV Current_Booking_No,0

		JMP Finish_Booking_No

	Invalid_Booking_Time:

	MOV AH, 09H
	LEA DX, TimeIsNotValid
	INT 21H
	MOV Current_Booking_No,-1

	MOV AH, 01H
	INT 21H

	Finish_Booking_No:

	ret

Booking_Process ENDP

; Check is the Time is fully book or not?
Booking_Check_Status_Process PROC

	    MOV CX, 50
        MOV DI, 0
        MOV BL, 0

		Check_Booking_Status:

			MOV AH,0
			MOV AL, Booking_Time_Choose[DI]
			CMP AX, SI
			JNE Next_Booking

			MOV AL, Booking_Day[DI]
			CMP AL, Day_Data
            JNE Next_Booking

			MOV AL, Booking_Month[DI]
			CMP AL, Month_Data
            JNE Next_Booking

			ADD BL,1

			Next_Booking:
			INC DI

		LOOP Check_Booking_Status

		CMP BL,TotalOfTable
		JGE Booking_Status_FullyBook

			MOV AH, 09H
			LEA DX, Booking_Status_Empty
			INT 21H

			MOV Fully_Book_Table[SI],'N'
		
		JMP Booking_Status_Finish

		Booking_Status_FullyBook:

			MOV AH, 09H
			LEA DX, Booking_Status_Fully
			INT 21H

			MOV Fully_Book_Table[SI],'Y'

		Booking_Status_Finish:

		ret

Booking_Check_Status_Process ENDP

; Display Date
Display_Date_that_been_selected PROC
	; Display Booking Date that selected
	MOV AH, 09H
	LEA DX, Display_Book_Date_Table
	INT 21H

	MOV AH,0H
	MOV AL,Day_Data
	DIV TEN
	MOV BX, AX
	
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H
	
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH,02H
	MOV DL,'/'
	INT 21H

	MOV AH,0H
	MOV AL,Month_Data
	DIV TEN
	MOV BX, AX
	
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H
	
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH,02H
	MOV DL,'/'
	INT 21H

	MOV AH,02H
	MOV DL,'2'
	INT 21H

	MOV AH,02H
	MOV DL,'0'
	INT 21H

	MOV AH,0H
	MOV AL,Year_Data
	DIV TEN
	MOV BX, AX
	
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H
	
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	ret
Display_Date_that_been_selected ENDP

; Display Time
Display_Time_that_been_selected PROC

	; Display Booking Time that selected
	MOV AH, 09H
	LEA DX, Display_Booking_Table_Details1
	INT 21H

	MOV AL,Input_Time

	CMP AL,0
	JE Display_Which_user_choose_time0

	CMP AL,1
	JE Display_Which_user_choose_time1

	CMP AL,2
	JE Display_Which_user_choose_time2

	CMP AL,3
	JE Display_Which_user_choose_time3

	CMP AL,4
	JE Display_Which_user_choose_time4

	CMP AL,5
	JE Display_Which_user_choose_time5

	CMP AL,6
	JE Display_Which_user_choose_time6

	Display_Which_user_choose_time0:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time0
		INT 21H

	    JMP Display_Which_user_choose_time_finish

	Display_Which_user_choose_time1:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time1
		INT 21H

	    JMP Display_Which_user_choose_time_finish

	Display_Which_user_choose_time2:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time2
		INT 21H

	    JMP Display_Which_user_choose_time_finish

	Display_Which_user_choose_time3:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time3
		INT 21H

	    JMP Display_Which_user_choose_time_finish

	Display_Which_user_choose_time4:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time4
		INT 21H

	    JMP Display_Which_user_choose_time_finish

	Display_Which_user_choose_time5:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time5
		INT 21H

	    JMP Display_Which_user_choose_time_finish

	Display_Which_user_choose_time6:

		MOV AH, 09H
		LEA DX, Display_Book_Table_Time6
		INT 21H

	    JMP Display_Which_user_choose_time_finish


	Display_Which_user_choose_time_finish:

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	ret

Display_Time_that_been_selected ENDP

; Check User Input Booking People Number
Number_People_Compare_System PROC

	MOV AH, 09H
	LEA DX, Number_People_Compare_System1
	INT 21H

	MOV AH,0AH
	LEA DX,Number_People_System_Input
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AL,0
	MOV Number_People_System,AL

	CMP Number_People_System_Input_Long, 1
    JE Number_People_Only1_digit

		MOV AL, Number_People_System_Input_Data[0]
        SUB AL, 30H
        MUL TEN
        MOV Number_People_System, AL

        MOV AL, Number_People_System_Input_Data[1]
        SUB AL, 30H
        ADD Number_People_System, AL

        JMP Number_People_Change_to_digit_FIN

	Number_People_Only1_digit:

		MOV AL, Number_People_System_Input_Data[0]
        SUB AL, 30H
        MOV Number_People_System, AL

	Number_People_Change_to_digit_FIN:

    MOV AL,12
	CMP Number_People_System, AL
	JLE Number_People_Not_Overage

		MOV AH, 09H
		LEA DX, Display_Number_People_Overage1
		INT 21H

		MOV AH, 09H
		LEA DX, Display_Number_People_Overage2
		INT 21H

		MOV AH,01H
		INT 21H

		MOV Number_People_System,-1

		ret

	Number_People_Not_Overage:

	MOV AL,0
	CMP Number_People_System, AL
	JG Number_People_Not_Less

		MOV AH, 09H
		LEA DX, Display_Number_People_Less1
		INT 21H

		MOV AH, 09H
		LEA DX, Display_Number_People_Less2
		INT 21H

		MOV AH,01H
		INT 21H

		MOV Number_People_System,-1

	Number_People_Not_Less:

	ret

Number_People_Compare_System ENDP 

; Check still have how many table
Check_Table_Available_Quantity PROC

	MOV CX,50
	MOV SI,0

	MOV AL, Table_B
	MOV Current_BTable, AL

	MOV AL, Table_M
	MOV Current_MTable, AL

	MOV AL, Table_S
	MOV Current_STable, AL

	Check_How_Many_Table_Can_Book:

		MOV AL,Booking_Day[SI]
		CMP AL,Day_Data
		JNE Next_Check_How_Many_Table_Can_Book

		MOV AL,Booking_Month[SI]
		CMP AL,Month_Data
		JNE Next_Check_How_Many_Table_Can_Book

		MOV AL,Booking_Time_Choose[SI]
		CMP AL,Input_Time
		JNE Next_Check_How_Many_Table_Can_Book

		MOV AL,Table_Size[SI]
		CMP AL,'B'
		JE Is_Table_B_Already_Booked

		MOV AL,Table_Size[SI]
		CMP AL,'M'
		JE Is_Table_M_Already_Booked

		MOV AL,Table_Size[SI]
		CMP AL,'S'
		JE Is_Table_S_Already_Booked

		JMP Next_Check_How_Many_Table_Can_Book

		Is_Table_B_Already_Booked:

			DEC Current_BTable

			JMP Next_Check_How_Many_Table_Can_Book

		Is_Table_M_Already_Booked:

			DEC Current_MTable

			JMP Next_Check_How_Many_Table_Can_Book

		Is_Table_S_Already_Booked:

			DEC Current_STable

		Next_Check_How_Many_Table_Can_Book:

		INC SI

	LOOP Check_How_Many_Table_Can_Book

	; Display B Table
	MOV AH, 09H
	LEA DX, Table_Details_B
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Current_BTable
	INT 21H

	MOV AH,0H
	MOV AL,Current_BTable
	DIV TEN
	MOV BX, AX

	CMP BL,0
	JE Current_B_Table_Only_1digit
	
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H

	Current_B_Table_Only_1digit:
	
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	; Display M Table
	MOV AH, 09H
	LEA DX, Table_Details_M
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Current_MTable
	INT 21H

	MOV AH,0H
	MOV AL,Current_MTable
	DIV TEN
	MOV BX, AX

	CMP BL,0
	JE Current_M_Table_Only_1digit
	
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H

	Current_M_Table_Only_1digit:
	
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H

	; Display S Table
	MOV AH, 09H
	LEA DX, Table_Details_S
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Current_STable
	INT 21H

	MOV AH,0H
	MOV AL,Current_STable
	DIV TEN
	MOV BX, AX

	CMP BL,0
	JE Current_S_Table_Only_1digit
	
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H

	Current_S_Table_Only_1digit:
	
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	ret

Check_Table_Available_Quantity ENDP

; Book for Big Table
Booking_New_Table_B_Process PROC

	MOV AL,Current_BTable
	CMP AL,1
	JGE Have_More_Big_Table

		MOV AH, 09H
		LEA DX, Display_No_More_B_Table
		INT 21H

		MOV AH,01H
		INT 21H

		ret

	Have_More_Big_Table:

		MOV Current_Table_Size,"B"

	; YQ HERE
	INC Deposit_Table

	ret

Booking_New_Table_B_Process ENDP

; Book for Medium Table
Booking_New_Table_M_Process PROC

	MOV AL,Current_MTable
	CMP AL,1
	JGE Have_More_Medium_Table

		MOV AH, 09H
		LEA DX, Display_No_More_M_Table
		INT 21H

		MOV AH,01H
		INT 21H

		ret

	Have_More_Medium_Table:

		MOV Current_Table_Size,"M"

	ret

Booking_New_Table_M_Process ENDP

; Book for Small Table
Booking_New_Table_S_Process PROC

	MOV AL,Current_STable
	CMP AL,1
	JGE Have_More_Small_Table

		MOV AH, 09H
		LEA DX, Display_No_More_S_Table
		INT 21H

		MOV AH,01H
		INT 21H

		ret

	Have_More_Small_Table:

		MOV Current_Table_Size,"S"

	ret

Booking_New_Table_S_Process ENDP

; Display_Number_that_user_enter
Display_Number_that_user_enter PROC

	MOV AH, 09H
	LEA DX, Display_Booking_Table_Details2
	INT 21H

	CMP Number_People_System,9
	JG Number_People_2digit

		MOV AH,02H
		MOV DL,Number_People_System
		ADD DL,30H
		INT 21H

		MOV AH, 09H
		LEA DX, NL
		INT 21H

		ret 

	Number_People_2digit:

		MOV AH,0H
		MOV AL,Number_People_System
		DIV TEN
		MOV BX, AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H

		MOV AH, 09H
		LEA DX, NL
		INT 21H

		ret

Display_Number_that_user_enter ENDP

; Deposit_System and Display Table Size
Table_Size_Display_System PROC
	
	CMP Current_Table_Size,'B'
	JE Display_Table_Size_B

	CMP Current_Table_Size,'M'
	JE Display_Table_Size_M

	CMP Current_Table_Size,'S'
	JE Display_Table_Size_S

	MOV AH,09H
	LEA DX,Table_Booking_Error
	INT 21H

	MOV AH,01H
	INT 21H

	ret

	Display_Table_Size_B:

		MOV AH,09H
		LEA DX,Display_Table_Size_DisplayB
		INT 21H

		CALL DisplayDepositResult

		ret

	Display_Table_Size_M:

		MOV AH,09H
		LEA DX,Display_Table_Size_DisplayM
		INT 21H

		ret

	Display_Table_Size_S:

		MOV AH,09H
		LEA DX,Display_Table_Size_DisplayS
		INT 21H

		ret

Table_Size_Display_System ENDP 

; Create New Booking Data
Create_New_Booking_Date PROC

	MOV DH,0
	MOV DL,Current_Booking_No

	; Number To Insert data
	MOV SI,DX

	; Booking_No
	INC DL ; 0 to 1
	MOV Booking_No[SI],DL

	; Booking_ID
		MOV AH,0
		MOV AL,Current_Booking_No		; 0		; 1
		MUL TEN							; 0		; 10
		MOV SI,AX
		; Set Date
		MOV DL,Input_Date_Data[0]
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[0],DL
		INC SI
		MOV DL,Input_Date_Data[1]
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[1],DL
		INC SI

		; Set Month
		MOV DL,Input_Date_Data[3]
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[2],DL
		INC SI
		MOV DL,Input_Date_Data[4]
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[3],DL
		INC SI

		; Set Year
		MOV DL,'2'
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[4],DL
		INC SI
		MOV DL,'4'
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[5],DL
		INC SI

		; Time chossen 
		MOV DL,Input_Time
		ADD DL,30H
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[6],DL
		INC SI

		; Table Size
		MOV DL,Current_Table_Size
		MOV Booking_ID[SI],DL
		MOV Current_Booking_ID[7],DL
		INC SI

		; Booking_No
		MOV AH,0
		MOV AL,Current_Booking_No
		DIV TEN
		ADD AL,30H
		MOV Booking_ID[SI],AL
		MOV Current_Booking_ID[8],AL
		INC SI
		ADD AH,30H
		MOV Booking_ID[SI],AH
		MOV Current_Booking_ID[9],AH

	; END for BookingID

	; Customer_Name
	MOV AH,0
	MOV AL,Current_Booking_No		; 0		; 1
	MUL T20							; 0		; 20
	MOV SI,AX
	MOV DI,0

	MOV CH,0
	MOV CL,Customer_Name_Input_Long
	Customer_Name_Set_Server:
		MOV AL,Customer_Name_Input_Data[DI]
		MOV Customer_Name[SI],AL

		INC SI
		INC DI
	LOOP Customer_Name_Set_Server

	; Customer_Contact
	MOV AH,0
	MOV AL,Current_Booking_No		; 0		; 1
	MUL T20							; 0		; 20
	MOV SI,AX
	MOV DI,0

	MOV CH,0
	MOV CL,Customer_Contact_Input_Long
	Customer_Contact_Set_Server:
		MOV AL,Customer_Contact_Input_Data[DI]
		MOV Contact[SI],AL

		INC SI
		INC DI
	LOOP Customer_Contact_Set_Server

	; Reset back data
	MOV DH,0
	MOV DL,Current_Booking_No

	; Number To Insert data
	MOV SI,DX

	; Number_People
	MOV DL,Number_People_System
	MOV Number_People[SI],DL

	; Booking_Day
	MOV DL,Day_Data
	MOV Booking_Day[SI],DL

	; Booking_Month
	MOV DL,Month_Data
	MOV Booking_Month[SI],DL

	; Booking_Time_Choose
	MOV DL,Input_Time
	MOV Booking_Time_Choose[SI],DL

    ; Delete Status
	MOV DL,'N'
	MOV Delete_Status[SI], DL

	; Table_Size
	MOV DL,Current_Table_Size
	MOV Table_Size[SI],DL

	; Deposit_Status
	CMP DL,'B'
	JNE Size_Not_B
		MOV DL,"N"
		MOV Deposit_Status[SI],DL

		JMP FIN_Depost_System
	Size_Not_B:
		MOV DL,"Y"
		MOV Deposit_Status[SI],DL

	FIN_Depost_System:

	ret

Create_New_Booking_Date ENDP

; [Page] Check Booking Record
Search_Booking_ID PROC

	; Header
    CALL HEADER

	MOV AH,09H
	LEA DX,Display_Booking_ID_Search1
	INT 21H

	MOV AH,09H
	LEA DX,Display_Booking_ID_Search2
	INT 21H

	MOV AH,0AH
	LEA DX,Booking_ID_Search
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	CMP Booking_ID_Search_Data[0],"/"
	JE Cancel_Process

	CMP Booking_ID_Search_Data[1],"/"
	JE Cancel_Process

	CALL Search_Booking_ID_Process

	CMP Booking_ID_Booking_No,88
	JNE Booking_ID_Found

	MOV AH,09H
	LEA DX,Display_Not_Found_Booking_ID
	INT 21H

	MOV AH,09H
	LEA DX,Display_Press_Any_Key
	INT 21H

	MOV AH,01H
	INT 21H

	CALL Search_Booking_ID

	Cancel_Process:

	ret

	Booking_ID_Found:

	CALL Booking_ID_Search_Menu

	MOV AH, 09H
	LEA DX, Display_Press_Any_Key
	INT 21H

	MOV AH,01H
	INT 21H

	ret

Search_Booking_ID ENDP

; Search Booking Record
Search_Booking_ID_Process PROC

	MOV AL,Booking_ID_Search_Long
	CMP AL,10
	JNE Booking_ID_Wrong_Format

	; Check Date
	MOV AL,Booking_ID_Search_Data[0]
	SUB AL,30H
	CMP AL,3
	JG Booking_ID_Wrong_Format
	CMP AL,0
	JL Booking_ID_Wrong_Format

	; Check Month
	MOV AL,Booking_ID_Search_Data[2]
	SUB AL,30H
	CMP AL,1
	JG Booking_ID_Wrong_Format
	CMP AL,0
	JL Booking_ID_Wrong_Format

	; Check Year
	MOV AL,Booking_ID_Search_Data[4]
	CMP AL,"2"
	JNE Booking_ID_Wrong_Format
	MOV AL,Booking_ID_Search_Data[5]
	CMP AL,"4"
	JNE Booking_ID_Wrong_Format

	; Check Time
	MOV AL,Booking_ID_Search_Data[6]
	SUB AL,30H
	CMP AL,6
	JG Booking_ID_Wrong_Format
	CMP AL,0
	JL Booking_ID_Wrong_Format

	JMP Continue_Booking_ID_Checking

	Booking_ID_Wrong_Format:
		JMP No_Search_Booking_ID_Result
	
	Continue_Booking_ID_Checking:

	; Check Size
	MOV AL,Booking_ID_Search_Data[7]
	CMP AL,"B"
	JE Booking_ID_Size_Correct
	CMP AL,"M"
	JE Booking_ID_Size_Correct
	CMP AL,"S"
	JE Booking_ID_Size_Correct

	JMP No_Search_Booking_ID_Result

	Booking_ID_Size_Correct:

	MOV AL,Booking_ID_Search_Data[8]
	SUB AL,30H
	CMP AL,5							; MAX is 50 data
	JG No_Search_Booking_ID_Result

	MOV CX,50
	MOV SI,8
	MOV AL,Booking_ID_Search_Data[8]
	Booking_ID_1_Search_Process:

		MOV AH,Booking_ID[SI]
		CMP AL,AH
		JE Booking_ID_1_FIN
		
		MOV BH,0
		MOV BL,TEN
		ADD SI,BX

	LOOP Booking_ID_1_Search_Process

	JMP No_Search_Booking_ID_Result

	Booking_ID_1_FIN:

	MOV CX,50
	MOV SI,9
	MOV AL,Booking_ID_Search_Data[9]
	Booking_ID_2_Search_Process:

		MOV AH,Booking_ID[SI]
		CMP AL,AH
		JE Booking_ID_2_FIN
		
		MOV BH,0
		MOV BL,TEN
		ADD SI,BX

	LOOP Booking_ID_2_Search_Process

	JMP No_Search_Booking_ID_Result

	Booking_ID_2_FIN:

	MOV BL,50
	SUB BL,CL
	MOV CX,0
	MOV Booking_ID_Booking_No,BL

	ret

	No_Search_Booking_ID_Result:

		MOV Booking_ID_Booking_No,88

	ret

Search_Booking_ID_Process ENDP

; Search Booking ID
Booking_ID_Search_Menu PROC

	CALL HEADER

	MOV AH,09H
	LEA DX,Display_Booking_ID_Search_Menu
	INT 21H

	MOV AH,09H
	LEA DX,Header6
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	; Booking ID
	MOV AH,09H
	LEA DX,Display_Booking_ID
	INT 21H
	MOV AH,09H
	LEA DX,Booking_ID_Search_Data
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	; Name
	MOV AH,09H
	LEA DX,Display_Customer_Name
	INT 21H
	MOV CX,20
	MOV AH,0
	MOV AL,Booking_ID_Booking_No
	MUL T20
	MOV AH,0
	MOV SI,AX
	Display_Customer_Name_Process:
		MOV AH,02H
		MOV DL,Customer_Name[SI]
		INT 21H

		INC SI
	LOOP Display_Customer_Name_Process

	MOV AH,09H
	LEA DX,NL
	INT 21H

	; Phone Number
	MOV AH,09H
	LEA DX,Display_Contact
	INT 21H
	MOV CX,20
	MOV AH,0
	MOV AL,Booking_ID_Booking_No
	MUL T20
	MOV AH,0
	MOV SI,AX
	Display_Contact_Process:
		MOV AH,02H
		MOV DL,Contact[SI]
		INT 21H

		INC SI
	LOOP Display_Contact_Process

	MOV AH,09H
	LEA DX,NL
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	; Day
	MOV AH,09H
	LEA DX,Display_Day
	INT 21H
	MOV BL,Booking_ID_Booking_No
	MOV BH,0
	MOV SI,BX
	
	MOV AH,0H
	MOV AL,Booking_Day[SI]
	DIV TEN
	MOV BX, AX
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H
	
	MOV AH,02H
	MOV DL,"/"
	INT 21H

	; Month
	MOV AH,0H
	MOV AL,Booking_Month[SI]
	DIV TEN
	MOV BX, AX
	MOV AH,02H
	MOV DL,BL
	ADD DL,30H
	INT 21H
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H

	MOV AH,02H
	MOV DL,"/"
	INT 21H

	; Year
	MOV AH,02H
	MOV DL,"2"
	INT 21H
	MOV AH,02H
	MOV DL,"0"
	INT 21H
	MOV AH,02H
	MOV DL,"2"
	INT 21H
	MOV AH,02H
	MOV DL,"4"
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	; Time
	MOV AH,09H
	LEA DX,Display_Time
	INT 21H

	MOV AL,Booking_Time_Choose[SI]
	CMP AL,0
	JE Display_Time_0
	CMP AL,1
	JE Display_Time_1
	CMP AL,2
	JE Display_Time_2
	CMP AL,3
	JE Display_Time_3
	CMP AL,4
	JE Display_Time_4
	CMP AL,5
	JE Display_Time_5
	MOV AH, 09H
	LEA DX, Display_Book_Table_Time6
	INT 21H
	JMP Display_Play_Fin
	Display_Time_0:
		MOV AH, 09H
		LEA DX, Display_Book_Table_Time0
		INT 21H
	    JMP Display_Play_Fin
	Display_Time_1:
		MOV AH, 09H
		LEA DX, Display_Book_Table_Time1
		INT 21H
	    JMP Display_Play_Fin
	Display_Time_2:
		MOV AH, 09H
		LEA DX, Display_Book_Table_Time2
		INT 21H
	    JMP Display_Play_Fin
	Display_Time_3:
		MOV AH, 09H
		LEA DX, Display_Book_Table_Time3
		INT 21H
	    JMP Display_Play_Fin
	Display_Time_4:
		MOV AH, 09H
		LEA DX, Display_Book_Table_Time4
		INT 21H
	    JMP Display_Play_Fin
	Display_Time_5:
		MOV AH, 09H
		LEA DX, Display_Book_Table_Time5
		INT 21H
	Display_Play_Fin:

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	; Number People
	MOV AH, 09H
	LEA DX, Display_Number_People
	INT 21H

	MOV AH,0H
	MOV AL,Number_People[SI]
	DIV TEN
	MOV BX, AX
	CMP BL,0
	JE Number_People_Display_1digit
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
	Number_People_Display_1digit:
	MOV AH,02H
	MOV DL,BH
	ADD DL,30H
	INT 21H
	MOV AH, 09H
	LEA DX, NL
	INT 21H

	; Table Size
	MOV AL,Table_Size[SI]
	MOV Current_Table_Size,AL
	MOV AL,Number_People
	MOV Number_People_System,AL

	CALL Table_Size_Display_System

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV BL,Number_People[SI]
	CMP BL,7
	JL Booking_ID_No_Size_B

		MOV AH, 09H
		LEA DX, Display_Deposit_Status
		INT 21H

		MOV AL,Deposit_Status[SI]
		CMP AL,"Y"
		JE Deposit_Paid_Already

		MOV AH, 09H
		LEA DX, Display_Not_Paid_Deposit
		INT 21H

		JMP Booking_ID_No_Size_B

		Deposit_Paid_Already:
		MOV AH, 09H
		LEA DX, Display_Paid_Deposit
		INT 21H

		MOV AH, 09H
		LEA DX, NL
		INT 21H

	Booking_ID_No_Size_B:

	ret
	

Booking_ID_Search_Menu ENDP

; Delete Booking Page
Cancel_Booking_Page PROC

	CALL HEADER

	MOV AH, 09H
	LEA DX, Display_Cancel_Booking
	INT 21H

	MOV DL,Total_Delete_Table
	CMP Current_Booking_No, DL
	JNE Delete_Booking_Already

		MOV AH,09H
		LEA DX, Display_Booking_Page3
		INT 21H

		MOV AH,09H
		LEA DX, NL
		INT 21H

		MOV AH,09H
		LEA DX, Display_Press_Any_Key
		INT 21H

		MOV AH,01H
		INT 21H

	ret

	Delete_Booking_Already:

	CMP Current_Booking_No,0
	JGE Display_FIN_Delete_List

		MOV AH,09H
		LEA DX, Display_Press_Any_Key
		INT 21H

		MOV AH,01H
		INT 21H

	ret

	Display_FIN_Delete_List:

	CALL Show_All_Booking

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH,09H
	LEA DX, Cancel_Booking_EnterID
	INT 21H

	MOV AH,0AH
	LEA DX, Booking_ID_Search
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	CMP Booking_ID_Search_Data[0], "/"
	JE Cancel_Booking_Process

	CMP Booking_ID_Search_Data[1], "/"
	JE Cancel_Booking_Process

	CALL Search_Booking_ID_Process

	CMP Booking_ID_Booking_No,88
	JNE Booking_ID_Found_de

	MOV AH,09H
	LEA DX,Display_Not_Found_Booking_ID
	INT 21H

	MOV AH,09H
	LEA DX,Display_Press_Any_Key
	INT 21H

	MOV AH,01H
	INT 21H

	CALL Cancel_Booking_Page

	ret

	Cancel_Booking_Process:

	ret

	Booking_ID_Found_de:

		CALL Booking_ID_Search_Menu

		MOV AH, 09H
		LEA DX, NL
		INT 21H

		MOV AH, 09H
		LEA DX, Cancel_Booking_Confirm
		INT 21H

		MOV AH,0AH
		LEA DX,Confirm_Booking_Input
		INT 21H

		MOV AH, 09H
		LEA DX, NL
		INT 21H

		; YES
		CMP Confirm_Booking_Input_Long,3
		JNE Cancel_Delete_Process

		CMP Confirm_Booking_Input_Data[0],'Y'
		JNE Cancel_Delete_Process

		CMP Confirm_Booking_Input_Data[1],'E'
		JNE Cancel_Delete_Process

		CMP Confirm_Booking_Input_Data[2],'S'
		JNE Cancel_Delete_Process

		CALL Delete_Process

		MOV AH, 09H
		LEA DX, NL
		INT 21H

		MOV AH, 09H
		LEA DX, Cancel_Booking_Success
		INT 21H

		MOV AH,01H
		INT 21H

		CALL Cancel_Booking_Page

		ret

	Cancel_Delete_Process:

		MOV AH, 09H
		LEA DX, NL
		INT 21H

		MOV AH, 09H
		LEA DX, Cancel_Booking_Close
		INT 21H

		MOV AH,01H
		INT 21H

		CALL Cancel_Booking_Page

		ret

Cancel_Booking_Page ENDP

; Delete Process
Delete_Process PROC

	MOV AH, 0
	MOV AL, Booking_ID_Booking_No

	MOV SI,AX
	MOV BL, ' '
	MOV Table_Size[SI], BL
	MOV BL, 'Y'
	MOV Delete_Status[SI], BL

	MUL TEN
	MOV SI, AX

	MOV CX, 10
	
	Delete_Loop:
		MOV AL, ' '
		MOV Booking_ID[SI], AL

		INC SI
	Loop Delete_Loop

	INC Total_Delete_Table

	ret

Delete_Process ENDP

;[Admin] View Booking Table
ViewShowBooking PROC
	CALL HEADER

	MOV AH,09H
	LEA DX,Display_Booking_Page1
	INT 21H

	MOV DL,Total_Delete_Table
	CMP Current_Booking_No, DL
	JNE Delete_All_Booking_Already

		MOV AH,09H
		LEA DX, Display_Booking_Page3
		INT 21H

		MOV AH,09H
		LEA DX, NL
		INT 21H

		MOV AH,09H
		LEA DX, Display_Press_Any_Key
		INT 21H

		MOV AH,01H
		INT 21H

	ret

	Delete_All_Booking_Already:

	CMP Current_Booking_No,0
	JGE Display_FIN_Show_Booking

		MOV AH,09H
		LEA DX, Display_Press_Any_Key
		INT 21H

		MOV AH,01H
		INT 21H

	ret

	Display_FIN_Show_Booking:

	CALL Show_All_Booking


	MOV AH,09H
	LEA DX, NL
	INT 21H

	MOV AH,09H
	LEA DX, NL
	INT 21H

	MOV AH,09H
	LEA DX,Display_Search_Page
	INT 21H

	MOV AH,0AH
	LEA DX,Booking_ID_Search
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	CMP Booking_ID_Search_Data[0],"/"
	JE Fin_Booking_Search

	CMP Booking_ID_Search_Data[1],"/"
	JE Fin_Booking_Search

	CALL Search_Booking_ID_Process

	CMP Booking_ID_Booking_No,88
	JNE ID_Found

	MOV AH,09H
	LEA DX,Display_Not_Found_Booking_ID
	INT 21H

	MOV AH,09H
	LEA DX,Display_Press_Any_Key
	INT 21H
	
	MOV AH,01H
	INT 21H

	CALL ViewShowBooking

	Fin_Booking_Search:

	ret

	ID_Found:

	CALL Booking_ID_Search_Menu

	MOV AH,09H
	LEA DX,Display_Press_Any_Key
	INT 21H
	
	MOV AH,01H
	INT 21H

	ret

	
ViewShowBooking ENDP

Show_All_Booking PROC

	MOV AH,09H
	LEA DX,Display_Booking_Page2
	INT 21H
	
	MOV AH,09H
	LEA DX, NL
	INT 21H

	CMP Current_Booking_No,0
	JGE Show_Booking

		MOV AH,09H
		LEA DX, Display_Booking_Page3
		INT 21H

		MOV AH,09H
		LEA DX, NL
		INT 21H

	ret

	Show_Booking:
	
	MOV SI, 0
	MOV CH,0
	MOV CL,Current_Booking_No
	MOV Show_Record_Process,0
	INC CL
	MOV DI, 0

	ListBookingNo:
		MOV BX,CX
		MOV CX, 10

		MOV AX,DI

		MOV DH,0
		MOV DL,Show_Record_Process
		MOV DI,DX
		
		CMP Delete_Status[DI],'Y'
		JE Hide_Booking_ID

		MOV DI,AX

		CMP BL,0
		JLE ListBookingNo_Fin

		ListOneRow:

			MOV DL, Booking_ID[SI]
			MOV AH, 02H
			INT 21H
			INC SI

		LOOP ListOneRow

		INC DI

		MOV AH, 09H
		LEA DX, Display_Line
		INT 21H

		CMP DI, 5
		JNE ListBookingNo_Fin

		MOV AH,09H
		LEA DX, NL
		INT 21H 
		MOV DI, 0 

		JMP ListBookingNo_Fin

		Hide_Booking_ID:

		HideOneRow:

			INC SI

		LOOP HideOneRow

		INC DI

		ListBookingNo_Fin:

		INC Show_Record_Process
		
		MOV CX,BX
	LOOP ListBookingNo

	ret

Show_All_Booking ENDP

DisplayDepositResult PROC
    
	MOV AH,09H
	LEA DX,Display_Multiplied_Result
	INT 21H

	; Calculate Function
	MOV AH,0
	MOV AL,Number_People_System
    MUL TEN

	MOV AH,0
	DIV HUNDRED
	MOV BX,AX

	CMP AL,0
	JE Deposit_Two_Digit

	MOV AH,02H
    MOV DL,AL
    ADD DL,30H
    INT 21H 

	Deposit_Two_Digit:

	MOV AL,BH
	MOV AH,0
	DIV TEN
	MOV BX,AX

	MOV AH,02H
    MOV DL,BL
    ADD DL,30H
    INT 21H

	MOV AH, 02H
    MOV DL,BH
    ADD DL, 30H
    INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H  

    RET
DisplayDepositResult ENDP

;[ADMIN] Deposit System
DepositSystem PROC
	CALL HEADER

dep:
	MOV AH,09H
	LEA DX,Deposit_system_1
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	CMP Current_Booking_No,0
	JL Current_Booking_Not_Zero
	MOV BL, Current_Booking_No
	INC BL
	MOV Deposit_total_table, BL

	Current_Booking_Not_Zero:
	MOV AH,09H
	LEA DX ,Deposit_display_allTable
	INT 21H

	;all table current
	MOV AH,02H
	MOV DL, Deposit_total_table
	ADD DL, 30H
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H
	;all table big 
	MOV AH,09H
	LEA DX,Deposit_display_BigTable
	INT 21H
	MOV AH,02H
	MOV DL, Deposit_table ;bigtable
	ADD DL, 30H
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H
	
	MOV DL,Total_Delete_Table
	CMP Current_Booking_No, DL
	JNE Delete_All_Booking_Deposit

		MOV AH,09H
		LEA DX, Display_Booking_Page3
		INT 21H

		MOV AH,09H
		LEA DX, NL
		INT 21H

		MOV AH,09H
		LEA DX, Display_Press_Any_Key
		INT 21H

		MOV AH,01H
		INT 21H

	ret

	Delete_All_Booking_Deposit:

	CMP Current_Booking_No,0
	JGE Display_FIN_Show_Deposit

		MOV AH,09H
		LEA DX, Display_Press_Any_Key
		INT 21H

		MOV AH,01H
		INT 21H

	ret

	Display_FIN_Show_Deposit:

	CALL Show_All_Booking
	
	MOV AH, 09H
	LEA DX, NL
	INT 21H

	
	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH,09H
	LEA DX,Display_Booking_ID_Search1
	INT 21H

	MOV AH,09H
	LEA DX,Display_Booking_ID_Search2
	INT 21H

	MOV AH,0AH
	LEA DX,Booking_ID_Search
	INT 21H

	MOV AH,09H
	LEA DX,NL
	INT 21H

	MOV AL,Booking_ID_Search_Data[0]
	CMP AL,"/"
	JE Deposit_exit

	MOV AL,Booking_ID_Search_Data[1]
	CMP AL,"/"
	JE Deposit_exit
	
	CALL Search_Booking_ID_Process

	CMP Booking_ID_Booking_No,88
	JNE Deposit_Booking_ID_Found

	MOV AH,09H
	LEA DX,Display_Not_Found_Booking_ID
	INT 21H

	MOV AH,09H
	LEA DX,Display_Press_Any_Key
	INT 21H

	MOV AH,01H
	INT 21H

	CALL DepositSystem

	ret

	Deposit_Booking_ID_Found:

	MOV AL,Booking_ID_Search_Data[7]
	CMP AL,"B"
	JNE Deposit_Not_Big

	CALL Deposit_edit_payment

	CALL DepositSystem

	ret

	Deposit_Not_Big:

	CALL HEADER

	MOV AH,09H
	LEA DX,Deposit_system_1
	INT 21H

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH,09H
	LEA DX,Deposit_Not_Big_Table
	INT 21H

	MOV AH,09H
	LEA DX,Display_Press_Any_Key
	INT 21H

	MOV AH,01H
	INT 21H
	
	Deposit_Fin:

	CALL DepositSystem

	Deposit_exit:

	ret

DepositSystem ENDP

Deposit_edit_payment PROC

	; Display Booking Details
	CALL Booking_ID_Search_Menu

	MOV AL,Current_Table_Size
	CMP AL,"B"
	JNE Deposit_Not_Big
			
	MOV AH,09H
	LEA DX,DISPLAY_DEPOSIT_CHECKING_PAYMENT
	INT 21H

	MOV AH,01H
	INT 21H 

	CMP AL,'Y'
	JE Deposit_Paid_Alreadys
	CMP AL,'y'
	JE Deposit_Paid_Alreadys

	CMP AL,'N'
	JE Deposit_No_Paid
	CMP AL,'n'
	JE Deposit_No_Paid

	MOV AH, 09H
	LEA DX, NL
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Warning_confirm_Booking1
	INT 21H

	MOV AH, 09H
	LEA DX, Display_Press_Any_Key
	INT 21H

	MOV AH,01H
	INT 21H

	CALL Deposit_edit_payment

	ret

		Deposit_No_Paid:

			MOV AH, 0
			MOV AL, Booking_ID_Booking_No
			MOV SI,AX

			MOV AL,"N"
			MOV Deposit_Status[SI], AL

			JMP Deposit_Status_Change_FIN      

		Deposit_Paid_Alreadys:

			MOV AH, 0
			MOV AL, Booking_ID_Booking_No
			MOV SI,AX

			MOV AL,"Y"
			MOV Deposit_Status[SI], AL   

		Deposit_Status_Change_FIN:  

			MOV AH, 09H
			LEA DX, NL
			INT 21H

			MOV AH, 09H
			LEA DX, NL
			INT 21H

			MOV AH, 09H
			LEA DX, Display_Paid_Status_Update
			INT 21H

			MOV AH, 09H
			LEA DX, Display_Press_Any_Key
			INT 21H

			MOV AH,01H
			INT 21H

			ret

Deposit_edit_payment ENDP 

END MAIN