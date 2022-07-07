<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Scopes\CompanySearchScope;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    
    protected $fillable = ['name', 'address', 'email', 'website'];

    public $searchColumns = ['name', 'address', 'email', 'website'];

    public function contacts()
    {
        return $this->hasMany(Contact::class);
    }

    protected static function booted()
    {
        static::addGlobalScope(new CompanySearchScope);
    }  

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
