<div style="margin-left:20%">
    <br />
    <h1>Member Search Result</h1>
    <br /><br />
<table border="1" style="border-collapse:collapse">
    <thead>
        <tr>
            <th>
                Flat No
            </th>
            <th>
                Full Name
            </th>
            <th>
                Mobile_No
            </th>
            <th>
                Email_Id
            </th>
            <th>
                Occupation
            </th>
            <th>
                Rent/Owner
            </th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="i in member">
            <td>{{i.Flat_No}}</td>
            <td>{{i.Full_Name}}</td>
             <td>{{i.Mobile_No}}</td>
             <td>{{i.Email_Id}}</td>
            <td>{{i.Occupation}}</td>
             <td>{{i.Rent}}</td>
        </tr>
    </tbody>
</table>
    </div>