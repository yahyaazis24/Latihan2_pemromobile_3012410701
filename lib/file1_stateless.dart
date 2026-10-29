import 'package:flutter/material.dart';

// Widget Reusable KartuMahasiswa
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.badge, size: 40, color: Colors.blue),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text('NIM: $nim', style: TextStyle(color: Colors.grey[700])),
                Text('Prodi: $prodi', style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman Utama File 1 (Stateless)
class File1StatelessScreen extends StatelessWidget {
  const File1StatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File 1 - Stateless Widget'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Profil Saya
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 12),
            const Text(
              'Yahya Abdul Azis',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            // Baris Ikon Kontak dengan Row dan Container
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.email, color: Colors.blue),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.phone, color: Colors.green),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.location_on, color: Colors.purple),
                ),
              ],
            ),
            const Divider(height: 32, thickness: 1),
            // 3 Kartu Mahasiswa dalam Column
            const KartuMahasiswa(
              nama: 'Yahya Abdul Azis',
              nim: '3012410701',
              prodi: 'Informatika',
            ),
            const KartuMahasiswa(
              nama: 'Agus',
              nim: '3012410702',
              prodi: 'Informatika',
            ),
            const KartuMahasiswa(
              nama: 'Budi',
              nim: '3012410703',
              prodi: 'Sistem Informasi',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}