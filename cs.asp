<%@ LANGYAGE =VBScript CodePage =936%>
<%
set  conn=Server.CreateObject("ADODB,Connection")
conn,open  "drive={SQL Server};database=test7;Server=192.168.0.100;uid=sa;pwd=ttk"
dt=Request("id1")
sql="select * from cj Where No="&dt&""
Set rs=conn.execute(sql)
if not rs.eof Then
response.write "学号"&rs("No")&"的语文成绩: "&rs("ywcj")&"分"
else
response.write "学号有误"
end if
%>
<a href=".\check.htm" title="返回" target="_self">返回</a>