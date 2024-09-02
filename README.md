
---

# 🛒 Amazon Clone - Flutter, Firebase, Provider, Razorpay

A feature-rich e-commerce application inspired by Amazon, built using **Flutter** for the front end, **Firebase** for backend services, **Provider** for state management, and **Razorpay** for payment integration. This project serves as a complete guide for developing a scalable e-commerce platform with modern technologies.

## ✨ Features

- **User Authentication**: Secure user registration and login with email/password using Firebase Authentication.
- **Product Catalog**: Browse a wide range of products with detailed information, including images, descriptions, prices, and ratings.
- **Search and Filter**: Robust search functionality with filters to sort and find products quickly.
- **Shopping Cart**: Add, remove, and update product quantities in the shopping cart with real-time updates.
- **Wishlist**: Save favorite items to a wishlist for future purchases.
- **Order Management**: Users can view their order history and track order status.
- **Payment Integration**: Secure and seamless payment processing using Razorpay.
- **Admin Panel**: An admin interface for managing products, categories, and orders.
- **Responsive Design**: Optimized for both mobile and web platforms, providing a smooth and consistent user experience.

## 🛠 Tech Stack

- **Frontend**: [Flutter](https://flutter.dev) - A powerful framework for building cross-platform apps from a single codebase.
- **State Management**: [Provider](https://pub.dev/packages/provider) - A recommended approach to manage state in Flutter applications.
- **Backend**: [Firebase](https://firebase.google.com) - A suite of tools including Authentication, Firestore Database, and Cloud Storage.
- **Payment Gateway**: [Razorpay](https://razorpay.com) - Secure payment gateway integration for processing payments.

## 🚀 Getting Started

Follow these instructions to set up and run the project on your local machine.

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- A [Firebase](https://firebase.google.com) account and project.
- A [Razorpay](https://razorpay.com) account for payment gateway integration.

### Installation

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/your-username/amazon-clone-flutter-firebase.git
    cd amazon-clone-flutter-firebase
    ```

2. **Install Flutter Dependencies**:
    ```bash
    flutter pub get
    ```

3. **Set Up Firebase**:
   - Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   - Set up Firebase Authentication, Firestore Database, and Cloud Storage.
   - Download the `google-services.json` file and place it in the `android/app` directory.
   - Enable Email/Password authentication in Firebase Authentication settings.
   - Create Firestore collections as per the provided `firestore_schema.md` file.

4. **Configure Razorpay**:
   - Create a Razorpay account and generate an API key.
   - Add the Razorpay API key to your `.env` file in the root directory:

    ```env
    RAZORPAY_KEY_ID=your_razorpay_key_id
    RAZORPAY_SECRET=your_razorpay_secret
    ```

5. **Run the App**:
    ```bash
    flutter run
    ```

### Project Structure

The project is organized as follows:

```
lib/
│── main.dart                # Entry point of the application
├── models/                  # Data models for the app
├── providers/               # State management using Provider
├── services/                # Firebase and Razorpay service integrations
├── screens/                 # All screen UIs for the app
├── widgets/                 # Reusable UI components
└── utils/                   # Utility functions and constants
```

## 📚 Key Modules

- **Authentication Module**: Handles user registration, login, and session management.
- **Product Module**: Manages product listings, search, and filtering features.
- **Cart Module**: Manages shopping cart functionality, including adding, removing, and updating products.
- **Order Module**: Manages order placement, order history, and payment processing using Razorpay.
- **Admin Module**: Provides functionality for administrators to manage products, orders, and categories.

## 🤝 Contributing

Contributions are what make the open-source community such a fantastic place to learn, inspire, and create. Any contributions you make to this project are **greatly appreciated**.

To contribute:

1. **Fork the repository**.
2. **Create your feature branch**:
    ```bash
    git checkout -b feature/AmazingFeature
    ```
3. **Commit your changes**:
    ```bash
    git commit -m 'Add some AmazingFeature'
    ```
4. **Push to the branch**:
    ```bash
    git push origin feature/AmazingFeature
    ```
5. **Open a pull request**.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📬 Contact

Your Name - [@yourusername](https://twitter.com/Amitmasram10) - your-amitmasram831@gmail.com

Project Link: [https://github.com/your-username/amazon-clone-flutter-firebase](https://github.com/your-username/amazon-clone-flutter-firebase)

---
