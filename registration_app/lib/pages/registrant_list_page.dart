// lib/pages/registrant_list_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/registration_provider.dart';

class RegistrantListPage extends StatefulWidget {
  const RegistrantListPage({super.key});

  @override
  State<RegistrantListPage> createState() => _RegistrantListPageState();
}

class _RegistrantListPageState extends State<RegistrantListPage> {
  String _searchQuery = '';

  void _showEditDialog(BuildContext context, registrant) {

    final nameController = TextEditingController(text: registrant.name);
    final emailController = TextEditingController(text: registrant.email);
    final List<String> prodiList = [
      'Teknik Informatika',
      'Sistem Informasi',
      'Teknik Komputer',
      'Data Science',
      'Desain Komunikasi Visual',
    ];
    String selectedProgram = registrant.programStudi;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Edit Peserta"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),

            DropdownButtonFormField<String>(
              value: selectedProgram,
              decoration: const InputDecoration(
                labelText: "Program Studi",
              ),
              items: prodiList.map((program) {
                return DropdownMenuItem(
                  value: program,
                  child: Text(program),
                );
              }).toList(),
              onChanged: (value) {
                selectedProgram = value!;
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal"),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<RegistrationProvider>(context, listen:false)
                  .updateRegistrant(
                    registrant.id,
                    nameController.text,
                    emailController.text,
                    selectedProgram,
                  );

              Navigator.pop(context);
            },
            child: const Text("Simpan"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<RegistrationProvider>(
          builder: (context, provider, _) {
            return Text('Daftar Peserta (${provider.count})');
          },
        ),
      ),
      body: Consumer<RegistrationProvider>(
        builder: (context, provider, child) {

          final filtered = provider.registrants.where((r) {
            return r.name.toLowerCase().contains(_searchQuery) ||
                r.email.toLowerCase().contains(_searchQuery) ||
                r.programStudi.toLowerCase().contains(_searchQuery);
          }).toList();

          if (provider.registrants.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people_outline, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Belum ada pendaftar',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Daftar sekarang di halaman registrasi!',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Cari nama, email atau program studi...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value.toLowerCase();
                    });
                  },
                ),
              ),

              Expanded(
                child: filtered.isEmpty
                    ? const Center(
                        child: Text(
                          'Data tidak ditemukan',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: filtered.length,
                        itemBuilder: (context, index) {
                          final registrant = filtered[index];

                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                child: Text(
                                  registrant.name[0].toUpperCase(),
                                ),
                              ),
                              title: Text(
                                registrant.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                '${registrant.programStudi} • ${registrant.email}',
                              ),

                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [

                                  IconButton(
                                    icon: const Icon(Icons.edit, color: Colors.blue),
                                    onPressed: () {
                                      _showEditDialog(context, registrant);
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          title: const Text('Hapus Pendaftar?'),
                                          content: Text(
                                            'Yakin hapus ${registrant.name}?',
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(ctx),
                                              child: const Text('Batal'),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                provider.removeRegistrant(registrant.id);
                                                Navigator.pop(ctx);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                              ),
                                              child: const Text('Hapus'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: registrant.id,
                                );
                              },
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
      

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}