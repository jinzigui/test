<%@ LANGYAGE =VBScript CodePage =936%>
<%
set  conn=Server.CreateObject("ADODB,Connection")
conn,open  "drive={SQL Server};database=test7;Server=192.168.0.100;uid=sa;pwd=ttk"
dt=Request("id1")
sql="select * from cj Where No="&dt&""
Set rs=conn.execute(sql)
if not rs.eof Then
response.write "ѧ��"&rs("No")&"�����ĳɼ�: "&rs("ywcj")&"��"
else
response.write "ѧ������"
end if
%>
<a href=".\check.htm" title="����" target="_self">����</a>