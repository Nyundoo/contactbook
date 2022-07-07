<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\Company;
use App\Http\Requests\ContactRequest;

class ContactController extends Controller
{
    public function index()
    {        
        $user = auth()->user();

        $companies = $user->companies()->orderBy('name')->pluck('name', 'id')->prepend('All Companies', '');
        // \DB::enableQueryLog();
        $contacts = $user->contacts()->latestFirst()->paginate(10);
        // dd(\DB::getQueryLog());

        return view('contacts.index', compact('contacts', 'companies'));
    }

    public function create()
    {

        $contact = new Contact();
        $companies = $this->userCompanies();

        return view('contacts.create', compact('companies', 'contact'));
    }

    protected function userCompanies()
    {        
        $user = auth()->user();
        return $user->companies()->orderBy('name')->pluck('name', 'id')->prepend('All Companies', '');
    }

    public function edit(Contact $contact)
    {
        $companies = $this->userCompanies();

        return view('contacts.edit', compact('companies', 'contact'));
    }

    public function update(Contact $contact, ContactRequest $request)
    {       

        $contact->update($request->all());

        return redirect()->route('contacts.index')->with('message', "Contact has been updated sucessfully");
    
    }

  

    public function store(ContactRequest $request)
    {
        $request->user()->contacts()->create($request->all());

        return redirect()->route('contacts.index')->with('message', "Contact has been added sucessfully");
    }

    public function show(Contact $contact)
    {
        return view('contacts.show', compact('contact'));
    }

    public function destroy(Contact $contact)
    {
        $contact->delete();

        return back()->with('message', "Contact has been deleted sucessfully");
    }
    
}
