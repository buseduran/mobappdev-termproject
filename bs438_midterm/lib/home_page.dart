import 'package:bs438_midterm/extensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade700),
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    label: Text('İsim'),
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (input) {
                    if (input == null || input.isEmpty) {
                      return "Lütfen isim giriniz.";
                    } else if (input.length < 2 || input.length > 32) {
                      return "İsim 2-32 karakter aralığında olmalıdır.";
                    }
                    return null;
                  },
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade700),
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    label: Text('Soyisim'),
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (input) {
                    if (input == null || input.isEmpty) {
                      return "Lütfen soyisim giriniz.";
                    } else if (input.length < 2 || input.length > 32) {
                      return "Soyisim 2-32 karakter aralığında olmalıdır.";
                    }
                    return null;
                  },
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade700),
                    ),
                    prefixIcon: Icon(Icons.mail_outline_outlined),
                    label: Text('E-Mail'),
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  // controller: widget.controller,
                  validator: (input) => (input ?? "").isValidEmail()
                      ? null
                      : "Lütfen geçerli bir e-posta adresi girin.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.tonal(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Başarıyla kayıt oldunuz!')));
                      }
                    },
                    child: Text('Gönder'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
