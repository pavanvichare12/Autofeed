<?php
ob_start();
include "connection.php";
error_reporting(E_ERROR | E_PARSE);
$url = $_SERVER['REQUEST_URI'];
    $url_components = parse_url($url);
    parse_str($url_components['query'], $params);
    $client = $params['client'];
    // echo $client;
?>
<!DOCTYPE html>
<html>

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
</head>  
<style>
body{
font-family: 'Times New Roman', Times, serif;
user-select: none;
margin-left:1%;
}
.table1,th,td{
width: auto; 
border: 1px solid black;
padding: 10px;
text-align: center;
border-collapse: collapse; 
}

input{
outline: none;
border: 0px;
text-align: center;
background-color: white;
}
select,option{
width:10%;
text-align:center;
height:4%;
border:1px solid gray;
border-radius:10px;
font-size:18px;
-webkit-appearance:none;
outline:none; 
}
.dropdown-menu{
max-height:250px;
overflow:auto;
background-color:#A9A9A9;
position:relative;
left:0px;
}
.val{
  font-size:20px;
}
.checkbox{
  color:black;
  font-family: 'Times New Roman', Times, serif;
}
.multiselect-selected-text{
  font-size:17px;
  font-weight:bold;
  font-family: 'Times New Roman', Times, serif;
}

</style>
<body>

    <h2><?php echo $client;?></h2><br>
    <form id="formId" method="post">
    <button type="button" onclick="addrow()">Add Row</button>  
    <button type="button" onclick="addcolumn()">Add column</button><br><br>
    <?php  
    if(!empty($client))
      {
        echo '<table class="table1" id="table1">
        <thead>
        <tr id="addrow">';  
        $sql = "SHOW COLUMNS FROM $client";
        $result = mysqli_query($conn,$sql);
        $rowcount = mysqli_num_rows( $result );
        // echo $rowcount;
        while($row = mysqli_fetch_array($result))
        {
            $name[] = $row['Field'];  
            // echo '<th name='.$row['Field'].'>'.$row['Field'].'</th>';  
        }
       
        for($k=0;$k<=9;$k++){
          echo '<th name='.$name[$k].'>'.$name[$k].'</th>';  
        }
       echo '</tr>
            </thead>
            <tbody>';
            for($k=1;$k<=4;$k++)
            {
              echo '<tr>';
                echo '<td></td> ';
                        for ($i=1;$i<=$rowcount-1;$i++)
                        {
                            if($name[$i]=="date")
                            {
                            echo '<td><input type="date"  name='.$name[$i].$k.'></td> ';
                            }
                            elseif($name[$i]=="fcat" ||$name[$i]=="dim" ||$name[$i]=="campaign" ||$name[$i]=="client" ||$name[$i]=="animation" ||$name[$i]=="click" ||$name[$i]=="impression" )
                            {
                            echo'<td><input type="text" name='.$name[$i].$k.' id='.$name[$i].$k.'></td> ';
                            }
                            elseif($name[$i]=="Select Assets"){                            
                            echo '<td>';                                                                          
                            $sql = "SELECT REPLACE(GROUP_CONCAT(COLUMN_NAME),'id,date,fcat,client,campaign,dim,animation,click,impression,Select Assets','')
                            FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '$client'
                            AND TABLE_SCHEMA = 'test'";                                                    
                            $replaced = $conn->query($sql);
                            $row = $replaced->fetch_assoc();            
                            echo '<select class="template" multiple="multiple" name="select'.$k.'[]">';
                            foreach($row as $x => $x_value){                        
                            {                              
                            $arr=explode(",",$x_value);                          
                            for($j=1;$j<sizeof($arr);$j++){                            
                            echo '<option class="val" value.="'.$arr[$j].'">'.$arr[$j].'</option>';                                            
                            }
                           }
                          }
                           echo'</select></td>';  
                          }                                                                        
                    }                        
                echo '</tr>';
               }    
            echo '</tbody>  
            </table><br><br>';  
        }      
    ?>
    <input type="hidden" id="rowc" name="rowc" value="" >
    <input type="hidden" id="colc" name="colc" value="">
    <button type="submit" name="saver" value="Save Feed">Save Feed</button>  
    <button type="submit" name="savec" value="Save Column">Save Column</button>
    <!--<button type="submit" name="saver" value="Save Row">-->
    <!--<input type="submit" name="savec" value="Save Column">-->
    </form>
    <!--<input style="border:1px solid black" type="date"  name="from_date">-->
</body>
</html>
<script>

var column = [<?php echo '"'.implode('","', $name).'"' ?>];
var table = document.getElementById("table1");
var rowc = table.rows.length;
document.getElementById("rowc").value = rowc;
var columnc = table.getElementsByTagName('th').length;
document.getElementById("colc").value = columnc;

function addrow() {
var row = table.insertRow(rowc);
    for (var i = 0 ; i<=columnc-1;i++)
    {
    var cell1 = row.insertCell(i);
    cell1.headers = column[i];
    if(column[i]!= "id")
    {
    var el = document.createElement('input');  
        if(column[i] == "date")
            {
             el.type="date";  
             el.name = column[i]+rowc;
          el.id = column[i]+rowc;
        //   el.value = 'ee';
        el.setAttribute("onclick","test(this.id)" );
          cell1.appendChild(el);    
            }
            else if(column[i] == "Select Assets")
           {
            var dc=document.createElement('select');
            dc.setAttribute("multiple","multiple" );
            dc.setAttribute("class","template" );
            dc.setAttribute("name","select"+rowc+"[]" );
            cell1.appendChild(dc);
            <?php
                                                                                     
            $sql = "SELECT REPLACE(GROUP_CONCAT(COLUMN_NAME),'id,date,fcat,client,campaign,dim,animation,click,impression,Select Assets','')
            FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '$client'
            AND TABLE_SCHEMA = 'test'";                                                    
            $replaced = $conn->query($sql);
            $row = $replaced->fetch_assoc();    
            foreach($row as $x => $x_value){                         
            {                               
            $arr=explode(",",$x_value);  
            // echo $arr[0];                         
            // for($j=1;$j<sizeof($arr);$j++){                             
            // echo '<option value.="'.$arr[$j].'">'.$arr[$j].'</option>';                                            
            // }
            }
            }   
            for ($i = 1; $i < count($arr); $i++) {
        //       ?>
              var option = document.createElement("option");
             
              option.value = '<?php echo $arr[$i] ?>';
              option.text = '<?php echo $arr[$i] ?>';
              dc.appendChild(option);
         <?php } ?>
         let $select = $('.template').multiselect({
enableFiltering: true,
includeFilterClearBtn: true,
enableCaseInsensitiveFiltering: true  
});
            }              
        else{
             el.type="text";
             el.name = column[i]+rowc;
          el.id = column[i]+rowc;
        //   el.value = 'ee';
        el.setAttribute("onclick","test(this.id)" );
          cell1.appendChild(el);
           }
          
        }  
    }
    rowc++;
    document.getElementById("rowc").value = rowc;
  }

function myFunction(id) {
alert("I am an alert box!"+id);
}

function addcolumn()
       {
        columnc++;
        var tblHeadObj = document.getElementById("table1").tHead;
        // alert(tblHeadObj.rows.length);
        for (var h=0; h<tblHeadObj.rows.length; h++) {
            var newTH = document.createElement('th');
            tblHeadObj.rows[h].appendChild(newTH);
            var el = document.createElement('input');
            el.type = 'text';
            el.name = "col"+columnc;
            el.id = "col"+columnc;
            newTH.appendChild(el);
            document.getElementById("colc").value = columnc;
            // alert( columnc)
            // newTH.innerHTML = "<input type='text'>";
        }
        var tblBodyObj = document.getElementById("table1").tBodies[0];
        // alert(tblBodyObj.rows.length)
        console.log(tblBodyObj)
        for (var i=0; i<rowc; i++) {
        var newCell = tblBodyObj.rows[i].insertCell(-1);
        console.log(newCell)
        newCell.innerHTML ='<input type="text" onclick="test(this.id)">';
        }  
    }

function test(id)
    {
      var name = (document.getElementById(id).parentElement.headers);
      if(name != "fcat" && name != "dim" && name != "campaign" && name != "client" && name != "animation" && name != "click" && name != "impression" && name != "video" && name != "Select Assets"  )
     {
          var idn = id.replace(name,'');
          console.log(idn);
            var test = document.getElementById("client"+idn).value+"/"+document.getElementById("campaign"+idn).value+"/"+document.getElementById("dim"+idn).value+"/"+document.getElementById(id).parentElement.headers;
             console.log(test);
            //  document.getElementById(id).style.visibility = "visible"
            document.getElementById(id).value ="https://s.hcurvecdn.com/"+test+".png"
     }
     else if(name == "video")
     {
      var idn = id.replace(name,'');
          console.log(idn);
            var test = document.getElementById("client"+idn).value+"/"+document.getElementById("campaign"+idn).value+"/"+document.getElementById("dim"+idn).value+"/"+document.getElementById(id).parentElement.headers;
             console.log(test);
            //  document.getElementById(id).style.visibility = "visible"
            document.getElementById(id).value ="https://do.hockeycurve.com/"+test+".png"  
       }  
  }

let $select = $('.template').multiselect({
enableFiltering: true,
includeFilterClearBtn: true,
enableCaseInsensitiveFiltering: true  
});



</script>
<?php
$value1 = [];
$empty = 0;
$rowct = $_POST['rowc'];

for ($js=1;$js<$rowct;$js++){
  if(isset($_POST['saver']))
 {
  ${"save".$js} = $_POST['select'.$js];
  ${"temp" . $js} = "";
  foreach(${"save" . $js} as $tem1)  
    {  
      ${"temp" . $js}.=$tem1.",";
    }
$campaign=$_POST[$name[4].$js];
$dim=$_POST[$name[5].$js];

 if($campaign!="" && $dim!=""){
  $asset=explode(",",${"temp" . $js});


  for($p=0;$p<count($asset)-1;$p++){
    ${"test".$js} = "https://s.hcurvecdn.com/".$client."/".$campaign."/".$dim."/".$asset[$p].".png";
${"ps".$js}.="`".$asset[$p]."`,";
${"link".$js}.="'".${"test".$js}."',";

  } 
  for ($msi=1;$msi<=8;$msi++){
    ${"msi".$js}.="`".$name[$msi]."`,";
    ${"msi2".$js}.="'".$_POST[$name[$msi].$js]."',";
  }
  

  $enter= rtrim(${"ps".$js}, ",");
   $finalcol=${"msi".$js}.$enter;
  $enter2= rtrim(${"link".$js}, ",");
$finallink=${"msi2".$js}.$enter2;
  $sqlin="INSERT INTO $client ($finalcol) VALUES ($finallink)";
  $result=mysqli_query($conn,$sqlin); 
  if($result){
    header("Location:update.php?client=".$client);
  }else{
    echo "ERROR: Hush! Sorry $sql. "
    . mysqli_error($conn);
  }
 }
}
}

// for ($j = 1;$j <= $_POST['rowc']-1 ; $j++)
//     {
//         for ($i = 0; $i <= count($name)-1; $i++)
//        {
//             if(empty($_POST[$name[$i].$j]))
//             {
//              $empty++;
//             }
//             array_push($value1,$_POST[$name[$i].$j]);    
//        }

//       if($empty<count($name))
//       {
//        $datar = implode("','",$value1);
     
//       $sql = "INSERT INTO $client values ('$datar')";
//           if(mysqli_query($conn, $sql)){
//             echo "<h3>data stored in a database successfully."
//                 . " Please browse your localhost php my admin"
//                 . " to view the updated data</h3>";
                // header("Location:update.php?client=".$client);
//         } else{
            // echo "ERROR: Hush! Sorry $sql. "
            //     . mysqli_error($conn);
//         }
//       }        
//        foreach ($value1 as $i => $value) {
//         unset($value1[$i]);
//         unset($empty);
//     }
//  }

 if(isset($_POST['savec']))
 {
  $countt = $_POST['colc'];
  for($i = 1; $i <= $countt ; $i++)
       {
           $col = "col".$i;
           echo $col;
           echo $_POST[$col];
           if(!empty($_POST[$col]))
           {
               if($_POST[$col] == "animation")
               {
                   $sql = "ALTER TABLE $client ADD `$_POST[$col]` longtext null";
               }
               else{
                   $sql = "ALTER TABLE $client ADD `$_POST[$col]` varchar(500) null";                                                                
               }    
               
      if(mysqli_query($conn, $sql)){    
      echo "<h3>column added</h3>";
      header("Location:".$url);
      }
      else{
      echo "ERROR: Hush! Sorry $sql. "
      .mysqli_error($conn);
      }
    }
    else{
    echo "fail";
    }
   }    
}
?>
<script>
      var temp = <?php echo json_encode($temp) ?>;
      var client = <?php echo json_encode($client) ?>;
      console.log(temp);
      // var campaign = document.getElementById("campaign").value;
      // var dim = document.getElementById("dim").value;
      // var change = "https://do.hockeycurve.com/" + client +"/"+ campaign +"/"+ dim + "/" + temp + ".png";
      var test = client +"/"+document.getElementById("campaign1").value+"/"+document.getElementById("dim1").value+"/"+ temp + ".png";
      console.log(test);

</script>
