<?php

namespace Database\Seeders;

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
        Permission::create(['name' => 'company','guard_name'=>'api']);
        Permission::create(['name' => 'update_company','guard_name'=>'api']);
        Permission::create(['name' => 'delete_company','guard_name'=>'api']);
        
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

        $superadmin->givePermissionTo(Permission::all());
    }
}
