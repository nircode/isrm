<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        DB::table('roles')->insert([
        	'name' => 'Administrator',
        	'desc' => 'Built-in Administrator',
        	]);

        DB::table('users')->insert([
        	'name' => 'Administrator',
        	'email' => 'admin@isrm.com',
        	'password' => bcrypt('qwerty'),
        	'isdelete' => 0,
        	'rights' => '0',
        	]);
        
        $role = \App\Role::find(1);
        $user = \App\User::find(1);
        $user->roles()->attach($role);
    }


}
