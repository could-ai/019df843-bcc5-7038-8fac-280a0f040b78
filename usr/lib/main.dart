import 'package:flutter/material.dart';

void main() {
  runApp(const TugasEtikaProfesiApp());
}

class TugasEtikaProfesiApp extends StatelessWidget {
  const TugasEtikaProfesiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Etika Profesi Hukum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A365D), // Dark blue for a professional legal look
          background: const Color(0xFFF8F9FA),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Clean font for reading
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DocumentScreen(),
      },
    );
  }
}

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Tugas Etika Profesi Hukum', style: TextStyle(fontWeight: FontWeight.w600)),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800), // Max width for reading comfort
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
            children: [
              _buildHeader(context),
              const SizedBox(height: 40),
              _buildCaseStudy(context),
              const SizedBox(height: 32),
              _buildEthicsViolations(context),
              const SizedBox(height: 32),
              _buildResolution(context),
              const SizedBox(height: 64), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'PELANGGARAN KODE ETIK PROFESI HUKUM',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'ANALISIS KASUS NYATA & PENYELESAIANNYA DI INDONESIA',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
          ),
        ),
        const SizedBox(height: 32),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Disusun oleh:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                'Mahasiswa Semester 6\nJurusan Hukum',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.9),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Mata Kuliah: Etika dan Tanggung Jawab Profesi Hukum',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCaseStudy(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.gavel_rounded, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'KASUS 1 - ADVOKAT MENYUAP HAKIM',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 36.0),
          child: Text(
            'Kasus OC Kaligis (2015) - Suap di PTUN Medan',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontStyle: FontStyle.italic,
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'a. Duduk Perkara',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Otto Cornelis Kaligis adalah advokat senior dan pendiri firma hukum ternama di Indonesia. Pada tahun 2015, ia terbukti menyuap hakim-hakim di Pengadilan Tata Usaha Negara (PTUN) Medan senilai USD 27.000 dan SGD 5.000. Suap dilakukan agar hakim mengabulkan gugatan yang diajukan oleh kliennya terkait perkara korupsi Dana Bantuan Sosial Sumatera Utara. Kasus ini terungkap melalui operasi tangkap tangan (OTT) yang dilakukan oleh Komisi Pemberantasan Korupsi (KPK).',
          textAlign: TextAlign.justify,
          style: TextStyle(height: 1.6, fontSize: 15),
        ),
      ],
    );
  }

  Widget _buildEthicsViolations(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'b. Pelanggaran Kode Etik yang Dilakukan',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Table(
            border: TableBorder.all(
              color: Theme.of(context).colorScheme.outlineVariant,
              width: 1,
              borderRadius: BorderRadius.circular(8),
            ),
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(2.5),
            },
            children: [
              _buildTableRow(
                context,
                'Kode Etik',
                'Kode Etik Advokat Indonesia (KEAI) Pasal 2, advokat dalam menjalankan tugasnya menjunjung tinggi hukum, UUD, dan Kode Etik serta sumpah jabatannya. Pasal 3 huruf (b), Advokat dalam menjalankan tugasnya mengutamakan tegaknya hukum, kebenaran dan keadilan. Serta Pasal 7 huruf (d) larangan mempengaruhi hakim secara tidak patut, dimana "Dalam perkara pidana yang sedang berjalan, Advokat hanya dapat menghubungi hakim apabila bersama-sama dengan jaksa penuntut umum".',
                isHighlight: true,
              ),
              _buildTableRow(
                context,
                'UU Advokat',
                'UU No. 18 Tahun 2003 Pasal 4 ayat (2) bahwa advokat wajib bertindak jujur, adil, bermartabat, dan bertanggung jawab berdasarkan hukum dan keadilan, dan advokat tidak akan memberikan atau menjanjikan sesuatu kepada hakim, pejabat pengadilan atau pejabat lainnya agar memenangkan atau menguntungkan bagi perkara klien.',
              ),
              _buildTableRow(
                context,
                'Hukum Pidana',
                'UU No 20 Tahun 2001 tentang Tipikor Pasal 6 ayat (1) huruf a tentang memberi atau menjanjikan sesuatu kepada hakim dengan maksud untuk mempengaruhi putusan perkara yang diserahkan kepadanya untuk diadili, dipidana penjara paling singkat 3 tahun dan paling lama 15 tahun dan pidana denda paling sedikit Rp 150.000.000,00 dan paling banyak Rp 750.000.000,00.',
                isHighlight: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  TableRow _buildTableRow(BuildContext context, String title, String content, {bool isHighlight = false}) {
    return TableRow(
      decoration: BoxDecoration(
        color: isHighlight 
            ? Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3)
            : Theme.of(context).colorScheme.surface,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content,
            textAlign: TextAlign.justify,
            style: const TextStyle(height: 1.6, fontSize: 15),
          ),
        ),
      ],
    );
  }

  Widget _buildResolution(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'c. Rekomendasi Penyelesaian Sistemik',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        _buildResolutionStep(
          context,
          '1',
          'Penangkapan dan Penyidikan (KPK)',
          'KPK melakukan Operasi Tangkap Tangan (OTT) sebagai dasar hukum penangkapan berdasarkan KUHAP Pasal 18 jo. UU KPK. Bukti yang diamankan meliputi uang suap dalam mata uang asing, komunikasi antara advokat dan hakim, serta keterangan para saksi dan tersangka.',
        ),
        _buildResolutionStep(
          context,
          '2',
          'Penuntutan',
          'KPK selaku penuntut umum mendakwa OC Kaligis dengan dakwaan berlapis:\n\n• Dakwaan Primer: Pasal 6 ayat (1) huruf a UU Tipikor\n• Dakwaan Subsidair: Pasal 5 ayat (1) UU Tipikor (turut serta menyuap)\n• Dakwaan Lebih Subsidair: Pasal 13 UU Tipikor',
        ),
        _buildResolutionStep(
          context,
          '3',
          'Persidangan dan Putusan',
          'Pengadilan Tipikor Jakarta menjatuhkan putusan. OC Kaligis divonis 5 tahun 6 bulan penjara pada tingkat pertama, kemudian diperberat menjadi 7 tahun penjara oleh Pengadilan Tinggi, dan diperberat kembali menjadi 10 tahun penjara oleh Mahkamah Agung disertai denda Rp 500.000.000 subsidair 6 bulan kurungan.',
        ),
        _buildResolutionStep(
          context,
          '4',
          'Sanksi Profesi (Dewan Kehormatan PERADI)',
          'Paralel dengan proses pidana, Dewan Kehormatan PERADI (Perhimpunan Advokat Indonesia) melakukan:\n\n1. Pemeriksaan etik berdasarkan laporan dan putusan pengadilan\n2. Pemberhentian tetap dari profesi advokat\n3. Pencabutan izin praktik sehingga OC Kaligis tidak dapat berpraktik sebagai advokat',
          isLast: true,
        ),
      ],
    );
  }

  Widget _buildResolutionStep(BuildContext context, String stepNumber, String title, String content, {bool isLast = false}) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Timeline indicator
          SizedBox(
            width: 40,
            child: Column(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      stepNumber,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 2,
                      color: Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Content card
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tahap $stepNumber — $title',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        content,
                        style: const TextStyle(height: 1.6, fontSize: 15),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
