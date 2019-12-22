/**
 * 
 */
/**
 * +
 * 
 */
 function validate()
            {
           
            var shopNo= document.getElementById("txtshopNo");
            var city= document.getElementById("txtcity");
            var area = document.getElementById("txtarea");
              
                var valid = true;
               
               
                document.getElementById("eshopNo").style.visibility = "hidden";
                document.getElementById("ecity").style.visibility = "hidden";
                document.getElementById("earea").style.visibility = "hidden";
               
           
                if(city.value.length<=0 )
                {
            document.getElementById("ecity").style.visibility = "visible";
                    //alert("Don't leave the field empty!");
                    valid = false;
                 
                }
                if(shopNo.value.length<=0 )
                {
            document.getElementById("eshopNo").style.visibility = "visible";
                    //alert("Don't leave the field empty!");
                    valid = false;
                 
                }
               
                if(area.value.length<=0 )
                    {
                document.getElementById("earea").style.visibility = "visible";
                        //alert("Don't leave the field empty!");
                        valid = false;
                     
                    }
               
               
                return valid;
            };