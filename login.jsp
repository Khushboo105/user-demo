<html>
 <body>
  <form action="authenticate-user.jsp" method="post">
   <table style='border:2px solid blue;margin:auto;margin-top:30px'>
    <tr>
     <td style="padding:10px">
     	<label style='font-size:25px'>Enter user id</label>
     </td>
     <td style="padding:10px">
     	<input type='text' style='font-size:18px' name='userid' required>
     </td>
    </tr>
    <tr>
     <td style="padding:10px">
     	<label style='font-size:25px'>Enter password</label>
     </td>
     <td style="padding:10px">
     	<input type='password' style='font-size:18px' name='pass' required>
     </td>
    </tr>
    <tr>
     <td style="padding:10px" colspan="2" align="right">
      <button style='font-size:18px;padding:2px 15px;color:white;background-color:blue;border-radius:4px'>Submit</button>
     </td>
    </tr>
   </table>
   <div style='text-align: center;margin-top:10px'>
   	 <a href='registration.jsp' style='font-size:25px'>Create Account</a>
   </div>
  </form>
 </body>
</html>