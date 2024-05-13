import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Inscription',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir votre nom';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Prénom'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir votre prénom';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Adresse Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir votre adresse email';
                  }
                  // You can add additional email validation logic here if needed
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Numéro de téléphone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir votre numéro de téléphone';
                  }
                  // You can add additional phone number validation logic here if needed
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Mot de passe'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir votre mot de passe';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Confirmer le mot de passe'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez confirmer votre mot de passe';
                  }
                  if (value != _passwordController.text) {
                    return 'Les mots de passe ne correspondent pas';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform signup logic here
                    // Once signup is successful, navigate back to the login page
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Inscription réussie !'),
                        backgroundColor: Colors.green, // Couleur verte
                        behavior: SnackBarBehavior.floating, // Animation de descente vers le bas
                      ),
                    );
                  }
                },
                child: const Text('Valider'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
