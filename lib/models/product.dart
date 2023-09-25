import 'dart:convert';

class Product {
  final String id;
  final String name;
  final double price;
  final String description;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.description});

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      description: map['description'],
    );
  }

  factory Product.fromJson(String json) {
    final map = jsonDecode(json);
    return Product.fromMap(map);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
    };
  }

  String toJson() {
    final map = toMap();
    return jsonEncode(map);
  }
}

List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'Samsung Galaxy S21',
    price: 799.99,
    description:
        'The Samsung Galaxy S21 is a flagship smartphone with a stunning display, powerful performance, and an advanced camera system.',
  ),
  Product(
    id: '2',
    name: 'Apple iPhone 12 Pro',
    price: 999.99,
    description:
        'The Apple iPhone 12 Pro features a sleek design, a high-resolution Super Retina XDR display, and a professional-grade camera setup.',
  ),
  Product(
    id: '3',
    name: 'Sony PlayStation 5',
    price: 499.99,
    description:
        'The Sony PlayStation 5 is the latest gaming console that delivers immersive gaming experiences with its powerful hardware and cutting-edge features.',
  ),
  Product(
    id: '4',
    name: 'Dell XPS 15 Laptop',
    price: 1699.99,
    description:
        'The Dell XPS 15 is a high-performance laptop with a stunning 4K display, powerful processors, and premium build quality.',
  ),
  Product(
    id: '5',
    name: 'Samsung 65-Inch 4K Smart TV',
    price: 1499.99,
    description:
        'The Samsung 65-Inch 4K Smart TV offers a crystal-clear display, smart features, and a sleek design for an immersive home entertainment experience.',
  ),
  Product(
    id: '6',
    name: 'Canon EOS 5D Mark IV DSLR Camera',
    price: 2499.99,
    description:
        'The Canon EOS 5D Mark IV is a professional-grade DSLR camera with a high-resolution sensor, advanced autofocus system, and 4K video recording capabilities.',
  ),
  Product(
    id: '7',
    name: 'Bose QuietComfort 35 Wireless Headphones',
    price: 349.99,
    description:
        'The Bose QuietComfort 35 Wireless Headphones offer industry-leading noise cancellation, exceptional sound quality, and comfortable design for an immersive audio experience.',
  ),
  Product(
    id: '8',
    name: 'Fitbit Versa 3 Smartwatch',
    price: 229.99,
    description:
        'The Fitbit Versa 3 is a feature-packed smartwatch with built-in GPS, heart rate monitoring, sleep tracking, and various fitness and health tracking capabilities.',
  ),
  Product(
    id: '9',
    name: 'Amazon Echo Dot (4th Generation)',
    price: 49.99,
    description:
        'The Amazon Echo Dot (4th Generation) is a compact smart speaker with Alexa voice assistant, delivering crisp sound and smart home control capabilities.',
  ),
  Product(
    id: '10',
    name: 'Apple AirPods Pro',
    price: 249.99,
    description:
        'The Apple AirPods Pro are wireless earbuds with active noise cancellation, immersive sound, and a comfortable, customizable fit.',
  ),
  Product(
    id: '11',
    name: 'Samsung 34-Inch Ultra-Wide Curved Monitor',
    price: 799.99,
    description:
        'The Samsung 34-Inch Ultra-Wide Curved Monitor offers an expansive display, vibrant colors, and immersive viewing angles, ideal for productivity and multimedia experiences.',
  ),
  Product(
    id: '12',
    name: 'Nintendo Switch Console',
    price: 299.99,
    description:
        'The Nintendo Switch Console is a versatile gaming system that allows you to play games on the go or connect to a TV for a home console experience.',
  ),
  Product(
    id: '13',
    name: 'GoPro HERO9 Black',
    price: 449.99,
    description:
        'The GoPro HERO9 Black is a rugged action camera with advanced stabilization, 5K video recording, and a range of features for capturing adventures.',
  ),
  Product(
    id: '14',
    name: 'Microsoft Surface Laptop 4',
    price: 1299.99,
    description:
        'The Microsoft Surface Laptop 4 combines performance, portability, and a stunning PixelSense display, making it an ideal choice for productivity on the go.',
  ),
  Product(
    id: '15',
    name: 'Sony WH-1000XM4 Wireless Noise-Canceling Headphones',
    price: 349.99,
    description:
        'The Sony WH-1000XM4 Wireless Noise-Canceling Headphones offer exceptional noise cancellation, high-quality audio, and long battery life for a premium listening experience.',
  ),
  Product(
    id: '16',
    name: 'LG OLED55CXPUA 55-Inch 4K Smart OLED TV',
    price: 1699.99,
    description:
        'The LG OLED55CXPUA 55-Inch 4K Smart OLED TV delivers stunning picture quality, deep blacks, and smart features for an immersive home theater experience.',
  ),
  Product(
    id: '17',
    name: 'Nikon D850 DSLR Camera',
    price: 2999.99,
    description:
        'The Nikon D850 is a professional-grade DSLR camera with a high-resolution sensor, fast autofocus system, and exceptional image quality for photographers.',
  ),
  Product(
    id: '18',
    name: 'Apple MacBook Pro 16-inch',
    price: 2399.99,
    description:
        'The Apple MacBook Pro 16-inch is a powerful laptop with a stunning Retina display, fast processors, and a comfortable keyboard, ideal for professional use.',
  ),
  Product(
    id: '19',
    name: 'Bose SoundLink Revolve+ Bluetooth Speaker',
    price: 299.99,
    description:
        'The Bose SoundLink Revolve+ Bluetooth Speaker offers 360-degree sound, long battery life, and a water-resistant design for portable audio enjoyment.',
  ),
  Product(
    id: '20',
    name: 'Sony A7 III Mirrorless Camera',
    price: 1999.99,
    description:
        'The Sony A7 III is a versatile mirrorless camera with a full-frame sensor, advanced autofocus, and impressive low-light performance for professional photographers.',
  ),
  Product(
    id: '21',
    name: 'HP ENVY 27-inch 4K UHD Monitor',
    price: 499.99,
    description:
        'The HP ENVY 27-inch 4K UHD Monitor offers stunning visuals, precise colors, and a sleek design, enhancing your productivity and entertainment experiences.',
  ),
  Product(
    id: '22',
    name: 'Fitbit Charge 4 Fitness and Activity Tracker',
    price: 149.99,
    description:
        'The Fitbit Charge 4 is a feature-rich fitness and activity tracker with built-in GPS, heart rate monitoring, sleep tracking, and various workout modes.',
  ),
  Product(
    id: '23',
    name: 'Google Nest Hub (2nd Generation)',
    price: 99.99,
    description:
        'The Google Nest Hub (2nd Generation) is a smart display with Google Assistant, allowing you to control your smart home devices and enjoy visual content with voice commands.',
  ),
];
