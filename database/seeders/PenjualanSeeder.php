<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PenjualanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'penjualan_id' => 1,
                'user_id' => 1,
                'pembeli' => 'Alice Cooper',
                'penjualan_kode' => 'PEN001',
                'penjualan_tanggal' => '2024-03-01 10:00:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 2,
                'user_id' => 2,
                'pembeli' => 'Bob Dylan',
                'penjualan_kode' => 'PEN002',
                'penjualan_tanggal' => '2024-03-02 11:15:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 3,
                'user_id' => 1,
                'pembeli' => 'Charlie Brown',
                'penjualan_kode' => 'PEN003',
                'penjualan_tanggal' => '2024-03-03 12:30:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 4,
                'user_id' => 3,
                'pembeli' => 'Diana Ross',
                'penjualan_kode' => 'PEN004',
                'penjualan_tanggal' => '2024-03-04 13:45:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 5,
                'user_id' => 2,
                'pembeli' => 'Eddie Vedder',
                'penjualan_kode' => 'PEN005',
                'penjualan_tanggal' => '2024-03-05 14:00:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 6,
                'user_id' => 1,
                'pembeli' => 'Fiona Apple',
                'penjualan_kode' => 'PEN006',
                'penjualan_tanggal' => '2024-03-06 15:10:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 7,
                'user_id' => 3,
                'pembeli' => 'George Michael',
                'penjualan_kode' => 'PEN007',
                'penjualan_tanggal' => '2024-03-07 16:20:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 8,
                'user_id' => 2,
                'pembeli' => 'Hannah Montana',
                'penjualan_kode' => 'PEN008',
                'penjualan_tanggal' => '2024-03-08 17:30:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 9,
                'user_id' => 1,
                'pembeli' => 'Iggy Pop',
                'penjualan_kode' => 'PEN009',
                'penjualan_tanggal' => '2024-03-09 18:45:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'penjualan_id' => 10,
                'user_id' => 3,
                'pembeli' => 'Janet Jackson',
                'penjualan_kode' => 'PEN010',
                'penjualan_tanggal' => '2024-03-10 19:00:00',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
        ];

        DB::table('t_penjualan')->insert($data);
    }
}
