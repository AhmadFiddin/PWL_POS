<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Foundation\Auth\User as Authenticatable; // implementasi class Authenticatable

class UserModel extends Authenticatable
{
    use HasFactory;

    protected $table = 'm_user';    
    protected $primaryKey = 'user_id'; 
    protected $fillable = ['username', 'password', 'nama', 'level_id', 'created_at', 'updated_at'];

    protected $hidden = ['password']; // Jangan di tampilkan saat select

    protected $casts = ['password' => 'hashed']; // Casting password agar otomatis di hash

    // Relasi ke tabel level

    public function level(): BelongsTo 
    {
        return $this->belongsTo(LevelModel::class, 'level_id', 'level_id');
    }
    
    // Mendapatkan nama role
    public function gerRoleName(): string 
    {
        return $this->level->level_nama;
    }
    
    // cek apakah user memiliki role tertentu
    public function hasRole($role): bool 
    {
        return $this->level->level_nama == $role;
    }
}
