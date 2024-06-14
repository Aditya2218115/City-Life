<html>
    <body bgcolor="orange"> 
        <%
           String sthali=request.getParameter("st");
           String pthali=request.getParameter("pt");
           String pchilli=request.getParameter("pc");
           String dfry=request.getParameter("df");
           String ssabzi=request.getParameter("ss");
           String aparatha=request.getParameter("ap");
           String cbiryani=request.getParameter("cb");
           String cfry=request.getParameter("cf");
           String ekadi=request.getParameter("ek");
           String cchilli=request.getParameter("cc");
           String mmasala=request.getParameter("mm");
           String skabab=request.getParameter("sk");
           String eroll=request.getParameter("er");
           String cpotato=request.getParameter("cp");
           String momo=request.getParameter("m");
           String mmasalla=request.getParameter("mg");
           String brgr=request.getParameter("b");
           String pzza=request.getParameter("p");
           int total=0;
           if(sthali!=null)
           {
        	   int pizzaprice=Integer.parseInt(sthali);
        	   total+=pizzaprice;
        	   
           }
           if(pthali!=null)
           {
        	   int ptprice=Integer.parseInt(pthali);
        	   total+=ptprice;
           }
           if(pchilli!=null)
           {
        	   int pcprice=Integer.parseInt(pchilli);
        	   total+=pcprice;
           }
           if(dfry!=null)
           {
        	   int dfryprice=Integer.parseInt(dfry);
        	   total+=dfryprice;
           }
           if(ssabzi!=null)
           {
        	   int ssprice=Integer.parseInt(ssabzi);
        	   total+=ssprice;
           }
           if(aparatha!=null)
           {
        	   int apprice=Integer.parseInt(aparatha);
        	   total+=apprice;
           }
           if(cbiryani!=null)
           {
        	   int cbprice=Integer.parseInt(cbiryani);
        	   total+=cbprice;
           }
           if(cfry!=null)
           {
        	   int cfprice=Integer.parseInt(cfry);
        	   total+=cfprice;
           }
           if(ekadi!=null)
           {
        	   int ekprice=Integer.parseInt(ekadi);
        	   total+=ekprice;
           }
           if(cchilli!=null)
           {
        	   int ccprice=Integer.parseInt(cchilli);
        	   total+=ccprice;
           }
           if(mmasala!=null)
           {
        	   int mmprice=Integer.parseInt(mmasala);
        	   total+=mmprice;
           }
           if(skabab!=null)
           {
        	   int skprice=Integer.parseInt(skabab);
        	   total+=skprice;
           }
           if(eroll!=null)
           {
        	   int erprice=Integer.parseInt(eroll);
        	   total+=erprice;
           }
           if(cpotato!=null)
           {
        	   int cpprice=Integer.parseInt(cpotato);
        	   total+=cpprice;
           }
           if(momo!=null)
           {
        	   int mprice=Integer.parseInt(momo);
        	   total+=mprice;
           }
           if(mmasalla!=null)
           {
        	   int mmprice=Integer.parseInt(mmasalla);
        	   total+=mmprice;
           }
           if(brgr!=null)
           {
        	   int bprice=Integer.parseInt(brgr);
        	   total+=bprice;
           }
           if(pzza!=null)
           {
        	   int pprice=Integer.parseInt(pzza);
        	   total+=pprice;
           }
           out.println("<h1>Thank You<h1>");
           
        %>
        <br>
        <br>
       <form action="orderdb.jsp">
            
            <center>
                <h1>Fill The Address</h1>
                <table>
                    <tr>
                    <h3><td>Name</td><td><input type="text" placeholder="Enter name" name="name"></td></h3>
                    </tr>
                    <tr>
                    <h3><td>Room_NO</td><td><input type="text" placeholder="Enter room" name="room"></td></h3>
                    </tr>
                    <tr>
                    <h3><td>Mobile</td><td><input type="text" placeholder="Enter number" name="mobile"></td></h3>
                    </tr>
                    <td><td><input type="submit" value="OK"</td></td>
                </table>
            </center>
        </form>
        <h1>Total Price is <%= total %></h1>
   </body>
</html>