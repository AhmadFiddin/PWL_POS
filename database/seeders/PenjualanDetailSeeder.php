<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PenjualanDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [];
        $barang_ids = range(1, 10); // Asumsikan ada 10 barang, sesuaikan dengan data yang ada di m_barang
        $penjualan_ids = range(1, 10); // Asumsikan ada 10 penjualan, sesuaikan dengan data yang ada di t_penjualan

        for ($i = 1; $i <= 30; $i++) {
            $data[] = [
                'penjualan_id' => $penjualan_ids[array_rand($penjualan_ids)],
                'barang_id' => $barang_ids[array_rand($barang_ids)],
                'harga' => rand(10000, 50000), // Harga acak antara 10.000 dan 50.000
                'jumlah' => rand(1, 5), // Jumlah acak antara 1 dan 5
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }

        DB::table('t_penjualan_detail')->insert($data);
    }
}
