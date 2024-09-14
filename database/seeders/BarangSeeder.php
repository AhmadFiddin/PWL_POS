<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            // Kategori 1: Makanan
            [
                'barang_id' => 1,
                'kategori_id' => 1,
                'barang_kode' => 'BAR001',
                'barang_nama' => 'Roti Tawar',
                'harga_beli' => 8000,
                'harga_jual' => 15000,
            ],
            [
                'barang_id' => 2,
                'kategori_id' => 1,
                'barang_kode' => 'BAR002',
                'barang_nama' => 'Cokelat Batang',
                'harga_beli' => 12000,
                'harga_jual' => 20000,
            ],
            [
                'barang_id' => 3,
                'kategori_id' => 1,
                'barang_kode' => 'BAR003',
                'barang_nama' => 'Keripik Kentang',
                'harga_beli' => 5000,
                'harga_jual' => 10000,
            ],

            // Kategori 2: Minuman
            [
                'barang_id' => 4,
                'kategori_id' => 2,
                'barang_kode' => 'BAR004',
                'barang_nama' => 'Teh Botol',
                'harga_beli' => 3000,
                'harga_jual' => 6000,
            ],
            [
                'barang_id' => 5,
                'kategori_id' => 2,
                'barang_kode' => 'BAR005',
                'barang_nama' => 'Kopi Sachet',
                'harga_beli' => 2500,
                'harga_jual' => 5000,
            ],
            [
                'barang_id' => 6,
                'kategori_id' => 2,
                'barang_kode' => 'BAR006',
                'barang_nama' => 'Jus Jeruk',
                'harga_beli' => 8000,
                'harga_jual' => 15000,
            ],

            // Kategori 3: Buku
            [
                'barang_id' => 7,
                'kategori_id' => 3,
                'barang_kode' => 'BAR007',
                'barang_nama' => 'Buku Tulis',
                'harga_beli' => 5000,
                'harga_jual' => 10000,
            ],
            [
                'barang_id' => 8,
                'kategori_id' => 3,
                'barang_kode' => 'BAR008',
                'barang_nama' => 'Buku Novel',
                'harga_beli' => 20000,
                'harga_jual' => 35000,
            ],
            [
                'barang_id' => 9,
                'kategori_id' => 3,
                'barang_kode' => 'BAR009',
                'barang_nama' => 'Majalah',
                'harga_beli' => 10000,
                'harga_jual' => 18000,
            ],

            // Kategori 4: Pakaian
            [
                'barang_id' => 10,
                'kategori_id' => 4,
                'barang_kode' => 'BAR010',
                'barang_nama' => 'Kaos Polos',
                'harga_beli' => 30000,
                'harga_jual' => 50000,
            ],
            [
                'barang_id' => 11,
                'kategori_id' => 4,
                'barang_kode' => 'BAR011',
                'barang_nama' => 'Celana Jeans',
                'harga_beli' => 70000,
                'harga_jual' => 100000,
            ],
            [
                'barang_id' => 12,
                'kategori_id' => 4,
                'barang_kode' => 'BAR012',
                'barang_nama' => 'Jaket Hoodie',
                'harga_beli' => 90000,
                'harga_jual' => 150000,
            ],

            // Kategori 5: Alat Tulis
            [
                'barang_id' => 13,
                'kategori_id' => 5,
                'barang_kode' => 'BAR013',
                'barang_nama' => 'Pulpen',
                'harga_beli' => 2000,
                'harga_jual' => 4000,
            ],
            [
                'barang_id' => 14,
                'kategori_id' => 5,
                'barang_kode' => 'BAR014',
                'barang_nama' => 'Pensil',
                'harga_beli' => 1000,
                'harga_jual' => 2000,
            ],
            [
                'barang_id' => 15,
                'kategori_id' => 5,
                'barang_kode' => 'BAR015',
                'barang_nama' => 'Penghapus',
                'harga_beli' => 500,
                'harga_jual' => 1000,
            ],
        ];

        DB::table('m_barang')->insert($data);
    }
}
