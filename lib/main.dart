import 'package:flutter/material.dart';

void main() => runApp(const FocusPlannerApp());

class FocusPlannerApp extends StatelessWidget {
  const FocusPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FocusPlanner',
      theme: ThemeData(
        primaryColor: const Color(0xFF2E5AAC),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF4CAF50),
          background: const Color(0xFFF8F9FA),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      home: const HomePage(),
      routes: {
        '/features': (context) => const FeaturesPage(),
        '/pricing': (context) => const PricingPage(),
        '/about': (context) => const AboutPage(),
        '/download': (context) => const DownloadPage(),
        '/blog': (context) => const BlogPage(),
        '/support': (context) => const SupportPage(),
        '/auth': (context) => const AuthPage(),
      },
    );
  }
}

// --------------------------
// ENHANCED HOME PAGE
// --------------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 40),
        actions: [
          _NavButton(label: 'Features', route: '/features'),
          _NavButton(label: 'Pricing', route: '/pricing'),
          _NavButton(label: 'Blog', route: '/blog'),
          _NavButton(label: 'Support', route: '/support'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/auth'),
              child: const Text('Get Started', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.8),
                    Colors.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const Text('Master Your Research & Productivity', 
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'AI-powered scheduling and academic insights for postgraduate students',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      _ActionButton(
                        icon: Icons.person_add,
                        label: 'Sign Up Free',
                        onPressed: () => Navigator.pushNamed(context, '/auth'),
                      ),
                      _ActionButton(
                        icon: Icons.download,
                        label: 'Download App',
                        onPressed: () => Navigator.pushNamed(context, '/download'),
                      ),
                      _ActionButton(
                        icon: Icons.explore,
                        label: 'Explore Features',
                        onPressed: () => Navigator.pushNamed(context, '/features'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // University Logos Carousel
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  const Text('Trusted by researchers at:',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (_, __) => const SizedBox(width: 40),
                      itemBuilder: (context, index) => Image.asset(
                        'assets/uni${index + 1}.png',
                        width: 120,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Features Grid
            const SectionHeader(title: 'Key Features', subtitle: 'Everything you need for academic success'),
            const FeatureGrid(),

            // Testimonials
            Container(
              color: Colors.grey.shade50,
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Column(
                children: [
                  const SectionHeader(title: 'Success Stories', subtitle: 'From our community'),
                  SizedBox(
                    height: 300,
                    child: PageView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) => const TestimonialCard(),
                    ),
                  ),
                ],
              ),
            ),

            // Final CTA
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  const Text('Ready to transform your academic workflow?',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  const Text('Join thousands of researchers worldwide',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                  const SizedBox(height: 40),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.rocket_launch),
                    label: const Text('Start Free Trial'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/auth'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --------------------------
// AUTH PAGE WITH FORM VALIDATION
// --------------------------
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isLogin = true;
  String _email = '';
  String _password = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Add authentication logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to FocusPlanner')),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) => value!.contains('@') ? null : 'Invalid email',
                onSaved: (value) => _email = value!,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) => value!.length >= 6 ? null : 'Min 6 characters',
                onSaved: (value) => _password = value!,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _submit,
                child: Text(_isLogin ? 'Sign In' : 'Sign Up'),
              ),
              TextButton(
                onPressed: () => setState(() => _isLogin = !_isLogin),
                child: Text(_isLogin 
                    ? 'Create new account' 
                    : 'Already have an account? Sign In'),
              ),
              const Divider(),
              const Text('Or continue with', textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/google.png', width: 40),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/apple.png', width: 40),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// --------------------------
// REUSABLE COMPONENTS
// --------------------------
class SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionHeader({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.displayLarge),
          if (subtitle != null) ...[
            const SizedBox(height: 10),
            Text(subtitle!, 
                style: const TextStyle(fontSize: 18, color: Colors.grey)),
          ],
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: const [
        FeatureTile(icon: Icons.auto_awesome_mosaic, title: 'Smart Scheduling'),
        FeatureTile(icon: Icons.insights, title: 'AI Insights'),
        FeatureTile(icon: Icons.sync, title: 'Cross-Platform Sync'),
        FeatureTile(icon: Icons.security, title: 'Secure Storage'),
        FeatureTile(icon: Icons.analytics, title: 'Progress Analytics'),
        FeatureTile(icon: Icons.group, title: 'Collaboration Tools'),
      ],
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const FeatureTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Theme.of(context).primaryColor),
          const SizedBox(height: 15),
          Text(title, 
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          const CircleAvatar(radius: 40),
          const SizedBox(height: 20),
          const Text(
            '"FocusPlanner completely transformed how I manage my research. The AI insights helped me identify time sinks I never noticed!"',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text('Dr. Sarah Johnson',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor)),
          const Text('PhD Candidate, Neuroscience',
              style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

// Add remaining page classes (BlogPage, SupportPage, etc.) following similar patterns