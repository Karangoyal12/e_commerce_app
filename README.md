# e_commerce_app

### Description

**e_commerce_app** is a full-featured e-commerce application built with Flutter for cross-platform mobile development. The app integrates both frontend and backend services using Firebase for authentication and database functionalities. It provides users with a seamless shopping experience, enabling them to browse products, add items to the cart, and manage orders efficiently.

### Technologies Used

- **Flutter**: The primary framework used for building the cross-platform UI for both iOS and Android devices.
- **Firebase**: Backend services, including authentication and database for user management and product storage.
- **GetX**: State management and navigation for a smooth and reactive user experience.

### Features

- User authentication (Sign-up, Login, and Logout) using Firebase Authentication.
- Browse and search products.
- Add items to the shopping cart.
- Manage user profile and order history.
- Integration with Firebase for real-time data management.


Install the required dependencies:
### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Karangoyal12/e_commerce_app.git
   cd e_commerce_app

2. Install the required dependencies:
   flutter pub get
3. Set up Firebase for the project:
   Add your Firebase project’s google-services.json file (for Android) and GoogleService-Info.plist file (for iOS) in the appropriate directories.
4. Run the app:
   For Android:
   flutter run
   For iOS:
   flutter run

   
### Folder Structure
e_commerce_app/
│
├── lib/                  
│   ├── features/
│   │   ├── authentication/    # Handles user authentication flow
│   │   ├── personalization/   # Manages user preferences and settings
│   │   └── shop/              # Includes product browsing, cart management, and checkout
│   │
│   └── shared/                # Contains reusable widgets and utilities
│
├── assets/                    # Stores images, icons, and other static assets
│
└── test/                      # Contains unit and widget tests


### Future Enhancements

- Adding payment gateway integration for secure checkout.
- Implementing product reviews and ratings.
- Push notifications for offers and updates.
