@extends('layouts.main')

@section('content')
<div class="container py-5">
    <div class="container">
    <div class="row mt-5">
        <div class="col-sm-8 mx-auto">
            <div class="card">
                <div class="card-header">
                    Obtain Access Token
                </div>                
                <div class="card-body">
                    <h5 id="access_token"></h5>
                    <button id="getAccessToken" class="btn btn-primary">Request Access Token</button>
                </div>
            </div>
        </div>
        <div class="col-sm-8 mx-auto">
            <div class="card mt-5">
                <div class="card-header">
                    Register URLs
                </div>
                <div class="card-body">
                    <h5 id="response"></h5>
                    <button id="registerURLS" class="btn btn-primary">Register URLs</button>
                </div>
            </div>
        </div>
        <div class="col-sm-8 mx-auto">
            <div class="card mt-5">
                <div class="card-header">
                    Simulate Transaction
                </div>                
                <div class="card-body">
                    <form action="">
                        @csrf
                        <div class="form-group">
                            <label for="amount">Amount</label>
                            <input type="number" name="amount" class="form-control" id="amount">
                        </div>
                        <div class="form-group">
                            <label for="mobilenumber">Mobile Number</label>
                            <input type="number" name="mobilenumber" class="form-control" id="mobilenumber">
                        </div>
                        <button id="simulatePayment" class="btn btn-primary">Simulate Payment</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
    
    </div>    
</div>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>    
    window.onload = prepareButton;

    function prepareButton()
{ 
   document.getElementById('getAccessToken').onclick = function()
   {
    axios.post('/get-token', {})
        .then((response)=> {
            console.log(response.data);
            document.getElementById('access_token').innerHTML=response.data;
        })
        .catch((error) => {
            console.log(error);
        });
   }

   document.getElementById('registerURLS').onclick = function()
   {
    axios.post('/register-urls', {})
        .then((response)=> {
            if(response.data.ResponseDescription){
                console.log(response.data);
                document.getElementById('response').innerHTML = response.data.ResponseDescription;
            } else {
                document.getElementById('response').innerHTML = response.data.ResponseCode
            }
            console.log(response.data);
            // document.getElementById('access_token').innerHTML=response.data.access_token;
        })
        .catch((error) => {
            console.log(error);
        });
   }

   document.getElementById('simulatePayment').onclick = function()
   {

    const requestBody = {
        amount: document.getElementById('amount').value,
        mobilenumber: document.getElementById('mobilenumber').value
    }

    axios.post('/simulate', requestBody)
        .then((response)=> {           
                console.log(response.data);
                })
        .catch((error) => {
            console.log(error);
        });
   }
}

</script>
@endsection
