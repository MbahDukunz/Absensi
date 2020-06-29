<?php

use Illuminate\Database\Seeder;

use Faker\Factory as Faker;


class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	$faker = Faker::create('id_ID');

    	for($i = 1; $i <= 20; $i++)
    	{
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('pegawai')->insert([
    			'user_id' => $faker->numberBetween(10000,11000),
    			'id_name' => $faker->name,
    			'position' => $faker->jobTitle,
    			'email' => $faker->email
    		]);

    	}

    }
}