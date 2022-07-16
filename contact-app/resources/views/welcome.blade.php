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
                    <div id="response"></div>
                    <button id="registerURLs" class="btn btn-primary">Register URLs</button>
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
                            <label for="account">Account</label>
                            <input type="account" name="account" class="form-control" id="amount">
                        </div>
                        <button class="btn btn-primary">Simulate Payment</button>
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
            document.getElementById('access_token').innerHTML=response.data.access_token;
        })
        .catch((error) => {
            console.log(error);
        });
   }

   document.getElementById('registerURLs').onclick = function()
   {
    axios.post('/register_urls', {})
        .then((response)=> {
            if(response.data.ResponseDescription){
                document.getElementById('response').innerHTML = response.data.ResponseDescription;
            } else {
                document.getElementById('response').innerHTML = response.data.errorMessage
            }
            console.log(response.data);
            // document.getElementById('access_token').innerHTML=response.data.access_token;
        })
        .catch((error) => {
            console.log(error);
        });
   }
}

</script>
@endsection
