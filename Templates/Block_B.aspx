<br /> 
<asp:label style="margin-left:20%"><b>Name:</b></asp:label> <input type="text" ng-model="Full_Name" style="width:200px;margin-left:20%"/>
<input type="button" ng-click="searchMember()" value="Search" style="margin-left:20%" placeholder="Search by Name"/>
<div class="row1" style="background-color:green  ;margin-left:800px;position:absolute">
    <table cellpadding="5" border="1" style="float:right">
        <tr>
            <td colspan="2"><center><h4>{{member.Rent}}</h4></center></td>
        </tr>
        <tr>
            <td> <h4>Flat No: </h4></td>
            <td> <h4>{{member.Flat_No}}</h4></td>
        </tr>
        <tr>
            <td> <h4>Name: </h4></td>
            <td> <h4>{{member.Full_Name}}</h4> </td>
        </tr>
        <tr>
            <td> <h4>Contact No:</h4></td>
            <td> <h4>{{member.Mobile_No}}</h4></td>
        </tr>
        <tr>
            <td> <h4>Email-Id:</h4></td>
            <td> <h4>{{member.Email_Id}}</h4></td>
        </tr>
        <tr>
            <td> <h4>Occupation:</h4></td>
            <td> <h4>{{member.Occupation}}</h4></td>
        </tr>
    </table>
</div>




<div class="row" style="margin-top:50px">

    <table align="center" cellpadding="5">
        <tr ng-repeat="i in arr1">
            <td ng-repeat="j in i.inner"><input type="button" value="{{j.flat}}" ng-click="display(j.flat)" /></td>
        </tr>
    </table>


</div> 