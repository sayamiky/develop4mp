<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {   
        $superadmin = Role::create([
            'name' => 'superadmin',
            'guard_name' => 'web'
        ]);

        $admin = Role::create([
            'name' => 'admin',
            'guard_name' => 'web'
        ]);

        $user = Role::create([
            'name' => 'user',
            'guard_name' => 'web'
        ]);

        // Reset cached roles and permissions
        // app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        $permission = Permission::create(['name' => 'publish news']);

        $superadmin->givePermissionTo(Permission::all());
        $admin->givePermissionTo(Permission::all());
        
    }
}
