import 'package:flutter/material.dart';

void main() {
  runApp(const LegalEthicsApp());
}

class LegalEthicsApp extends StatelessWidget {
  const LegalEthicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Etika Profesi Hukum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1B3B6F), // Professional deep blue
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1B3B6F)),
          titleLarge: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF1B3B6F)),
          bodyLarge: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DocumentReaderScreen(),
      },
    );
  }
}

class DocumentReaderScreen extends StatelessWidget {
  const DocumentReaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Tugas Hukum - Semester 6'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.picture_as_pdf),
            tooltip: 'Simulasi Download',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Simulasi: Dokumen siap diunduh dalam format PDF')),
              );
            },
          )
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800), // Max width for web/desktop readability
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Card(
                elevation: 4,
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'TUGAS MATA KULIAH\nETIKA DAN TANGGUNG JAWAB PROFESI HUKUM',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              height: 3,
                              width: 60,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Analisis Kasus Pelanggaran Kode Etik\nProfesi Advokat dan Penyelesaiannya',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      
                      // Section 1
                      _buildSectionTitle(context, 'I. Posisi Kasus (Case Study)'),
                      const SizedBox(height: 12),
                      _buildParagraph(context, 'Sdr. X adalah seorang advokat yang menerima kuasa dari Klien A untuk menangani kasus sengketa harta gono-gini melawan mantan suami Klien A, yaitu Sdr. B. Klien A telah membayar honorarium (fee) yang disepakati secara lunas di awal kepada Sdr. X.'),
                      _buildParagraph(context, 'Pada tahap mediasi dan persidangan awal, Sdr. X aktif mendampingi Klien A. Namun, di pertengahan proses persidangan, Sdr. X secara diam-diam mengadakan pertemuan dengan Sdr. B (pihak lawan) tanpa sepengetahuan dan persetujuan Klien A. Dalam pertemuan tersebut, Sdr. X menerima sejumlah uang dari Sdr. B dengan kesepakatan bahwa Sdr. X akan memperlemah pembelaan terhadap Klien A agar Sdr. B dapat memenangkan gugatan sengketa harta tersebut.'),
                      _buildParagraph(context, 'Setelah menerima uang suap tersebut, Sdr. X mulai sering tidak hadir dalam persidangan dengan berbagai alasan yang dibuat-buat, tidak menyusun kesimpulan sidang dengan baik, dan sangat sulit dihubungi oleh Klien A. Akibat tindakan Sdr. X, Klien A mengalami kerugian besar dan kalah dalam persidangan tingkat pertama. Klien A yang merasa curiga kemudian melakukan investigasi mandiri dan menemukan bukti nyata bahwa pengacaranya (Sdr. X) telah menerima suap dari mantan suaminya.'),
                      
                      const SizedBox(height: 32),

                      // Section 2
                      _buildSectionTitle(context, 'II. Analisis Pelanggaran Kode Etik'),
                      const SizedBox(height: 12),
                      _buildParagraph(context, 'Tindakan Sdr. X merupakan pelanggaran berat terhadap Kode Etik Advokat Indonesia (KEAI) dan Undang-Undang No. 18 Tahun 2003 tentang Advokat. Beberapa ketentuan mendasar yang dilanggar antara lain:'),
                      const SizedBox(height: 8),
                      _buildBulletPoint(context, 'Menelantarkan Kepentingan Klien:', 'Advokat tidak dibenarkan melepaskan tugas yang dibebankan kepadanya pada saat yang tidak menguntungkan posisi klien atau pada saat tugas tersebut belum selesai.'),
                      _buildBulletPoint(context, 'Benturan Kepentingan (Conflict of Interest):', 'Advokat dilarang mengadakan hubungan langsung atau tidak langsung dengan pihak lawan berkenaan dengan perkara yang sedang ditanganinya tanpa sepengetahuan kliennya.'),
                      _buildBulletPoint(context, 'Mencederai Kepercayaan (Fiduciary Duty):', 'Hubungan antara advokat dan klien didasarkan pada asas kepercayaan. Menerima suap dari pihak lawan adalah bentuk pengkhianatan profesional tertinggi yang mencederai martabat profesi hukum dan merugikan pencari keadilan.'),
                      
                      const SizedBox(height: 32),

                      // Section 3
                      _buildSectionTitle(context, 'III. Mekanisme Penyelesaian dan Sanksi'),
                      const SizedBox(height: 12),
                      _buildParagraph(context, 'Klien A selaku pihak yang sangat dirugikan memiliki hak untuk menuntut keadilan dan penyelesaian atas pelanggaran etika ini melalui Dewan Kehormatan Organisasi Advokat (misalnya, PERADI) dan juga melalui jalur hukum positif.'),
                      const SizedBox(height: 8),
                      _buildNumberedPoint(context, '1.', 'Pengaduan ke Dewan Kehormatan:', 'Klien A membuat laporan pengaduan tertulis kepada Dewan Kehormatan Cabang Organisasi Advokat tempat Sdr. X terdaftar. Laporan ini harus disertai dengan alat bukti yang sah (misal: bukti transfer antar bank, keterangan saksi, atau rekaman komunikasi) yang menunjukkan adanya suap dan tindakan penelantaran perkara.'),
                      _buildNumberedPoint(context, '2.', 'Proses Sidang Etik:', 'Dewan Kehormatan akan memanggil Sdr. X untuk memberikan klarifikasi, hak jawab, dan pembelaan dalam sidang etik. Sidang ini akan memeriksa bukti-bukti secara objektif dan mendengarkan keterangan saksi untuk membuktikan terjadinya pelanggaran.'),
                      _buildNumberedPoint(context, '3.', 'Penjatuhan Sanksi Etik:', 'Mengingat beratnya pelanggaran yang dilakukan (menerima suap dari lawan dan secara sengaja merugikan klien secara materiel dan imateriel), sanksi etik yang paling tepat dijatuhkan untuk Sdr. X berdasarkan Pasal 16 KEAI adalah Pemberhentian Tetap (Pemecatan) dari keanggotaan organisasi profesi. Sanksi ini berakibat pada pencabutan izin praktik Sdr. X sebagai advokat secara permanen di seluruh wilayah yurisdiksi Republik Indonesia.'),
                      _buildNumberedPoint(context, '4.', 'Tuntutan Hukum Pidana dan Perdata:', 'Selain menerima sanksi pemecatan secara etik, Klien A dapat melaporkan Sdr. X ke pihak kepolisian atas dugaan tindak pidana penipuan/penggelapan jabatan (Pasal 372/378 KUHP) atau suap. Secara keperdataan, Klien A dapat mengajukan gugatan Perbuatan Melawan Hukum (Pasal 1365 KUHPerdata) ke Pengadilan Negeri untuk menuntut ganti rugi materiil (pengembalian honorarium dan nilai harta yang hilang) serta immateriil.'),
                      
                      const SizedBox(height: 40),
                      
                      // Footer
                      Center(
                        child: Text(
                          'Disusun untuk memenuhi Tugas Mata Kuliah Etika Profesi Hukum',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontSize: 18,
      ),
    );
  }

  Widget _buildParagraph(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '•  ',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(text: '$title ', style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNumberedPoint(BuildContext context, String number, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            child: Text(
              number,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(text: '$title ', style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
