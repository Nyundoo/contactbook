<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\Company;
use App\Http\Requests\CompanyRequest;

class CompanyController extends Controller
{
    public function index()
    {        
        $user = auth()->user();

       $companies = $user->companies()->with('contacts')->latest()->paginate(10);
   
        return view('companies.index', compact('companies'));
    }   

    public function create()
    {        
        $company = new Company();
   
        return view('companies.create', compact('company'));
    } 
    
    public function store(CompanyRequest $request)
    {        
       $request->user()->companies()->create($request->all());

       return redirect()->route('companies.index')->with('message', "Company has been added successfully.");
    }     

    public function show(Company $company)
    {
        return view('companies.show', compact('company'));
    }

    public function edit(Company $company)
    {
        return view('companies.edit', compact('company'));

    }

    public function update(CompanyRequest $request, Company $company)
    {
        $company->update($request->all());

        return redirect()->route('companies.index')->with('message', "Company has been updated successfully.");

    }
   

    public function destroy(Company $company)
    {
        $company->delete();

        return redirect()->route('companies.index')->with('message', "Company has been deleted successfully.");
    }
}
