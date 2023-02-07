$ set noon
$!
$! Get terminal name.
$!
$ tty_num = f$getjpi("","TERMINAL")
$ sh sym tty_num
$!
$! Check if the device is remote.
$!
$ rem_dev = f$getdvi(tty_num,"SET_HOST_TERMINAL")
$ sh sym rem_dev
$! 
$ IF rem_dev .EQS. "FALSE"
$   THEN
$	GOTO EXIT
$   ELSE
$ ENDIF
$!
$ host_name = f$getdvi(tty_num,"TT_ACCPORNAM")
$ sh sym host_name
$!
$ tmp[0,5] := 'host_name
$ sh sym tmp 
$!
$ IF (tmp .EQS. "HOST:") .OR. ( tmp .EQS. "Host:" )
$    THEN
$	host_name[0,5] := "    "
$	host_name = f$edit(host_name,"TRIM")
$	sh sym host_name
$!
$       NUM = 0
$       LOOP_REM:
$       tmp_name_str = f$extract(NUM,5,host_name)
$       sh sym tmp_name_str
$       IF (tmp_name_str .EQS. "PORT:") .OR. ( tmp_name_str .EQS. "Port:" )
$           THEN
$               host_name[NUM,20] := "                      "
$       	host_name = f$edit(host_name,"COLLAPSE")
$               sh sym host_name
$               GOTO    SET_DIS
$           ELSE
$       ENDIF
$       IF NUM .EQ. f$length(host_name)
$           THEN 
$ 		write SYS$output "Not a TCP/IP connection. Just exit"
$		GOTO EXIT
$           ELSE
$       ENDIF
$       NUM = NUM + 1
$       GOTO LOOP_REM
$!
$    ELSE
$	GOTO EXIT
$ ENDIF
$!
$ SET_DIS:
$ set  dis/cre/exe/node='host_name  /tran=tcpip
$ mcr decw$wsinit
$ mcr decw$startlogin
$!
$ write SYS$OUTPUT "SET_DIS OK"
$
$ EXIT :
$ logout
