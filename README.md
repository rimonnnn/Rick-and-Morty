# 🧪 Rick and Morty Flutter App

A **Flutter application** that displays characters from the **Rick and Morty API** using a clean architecture and well-structured data models.  
This project demonstrates API integration, state management, and model-layer design in Flutter.

---

## 🖼️ Screenshots

| Characters List Screen | Character Details Screen |
|-------------------------|--------------------------|
| ![Characters Screen](screenshots/cha<img width="290" height="615" alt="Android Emulator - Pixel_3_5554 10_16_2025 6_53_56 PM" src="https://github.com/user-attachments/assets/da7961f6-a907-4403-afdb-8ece317bafde" />
racters_screen.png) | ![Details Screen](screenshots/<img width="290" height="615" alt="Android Emulator - Pixel_3_5554 10_16_2025 6_54_34 PM" src="https://github.com/user-attachments/assets/4b65726c-e0b8-4154-8da3-c996208b04b5" />
details_screen.png) |

---

### 📶 Offline Mode Screenshots

| Offline Indicator 
|-------------------|-----------------------------|
| ![Offline Banner](screenshots/off<img width="290" height="615" alt="Android Emulator - Pixel_3_5554 10_16_2025 6_55_05 PM" src="https://github.com/user-attachments/assets/804c2602-732e-4c60-ad10-0a7c9979b8a9" />
line_banner.png)

> 📸 *Place all screenshots inside the `/screenshots` folder and update the paths above.*

---

## 🚀 Features

✅ Fetch and display characters from the [Rick and Morty API](https://rickandmortyapi.com)  
✅ Clean data model design with JSON serialization/deserialization  
✅ Organized architecture using **Cubit / BLoC pattern**  
✅ **Offline support** using `flutter_offline` package  
✅ Custom loading and error handling states  
✅ Modular, scalable folder structure  
✅ Fully typed and null-safe Dart models  
✅ Ready for API pagination and filtering  

---

## ⚙️ Installation & Setup

Follow these steps to run the project locally:

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/rick_and_morty_app.git


   🧠 Project Structure

   lib/
│
├── data/
│   ├── models/
│   │   └── characters.dart     # Data models (Characters, Info, Results, Origin)
│   ├── repositories/           # API and data logic
│
├── business_logic/
│   └── cubit/                  # BLoC/Cubit state management
│
├── presentation/
│   ├── screens/                # UI screens (Characters, Details)
│   ├── widgets/                # Reusable widgets
│
└── constants/
    └── my_colors.dart          # App theme and color constants
    
    🧩 Data Model Overview

| Class          | Description                                                                         |
| -------------- | ----------------------------------------------------------------------------------- |
| **Characters** | Root model containing `Info` and a list of `Results`.                               |
| **Info**       | Pagination data such as `count`, `pages`, `next`, and `prev`.                       |
| **Results**    | Represents a single character with attributes (name, status, species, image, etc.). |
| **Origin**     | Represents location details for origin and current location.                        |

🧩 Tech Stack
| Category             | Technology                |
| -------------------- | ------------------------- |
| **Language**         | Dart                      |
| **Framework**        | Flutter                   |
| **State Management** | Cubit / BLoC              |
| **Networking**       | HTTP                      |
| **Offline Support**  | flutter_offline           |
| **Architecture**     | MVVM / Clean Architecture |
| **API**              | Rick and Morty REST API   |

🧑‍💻 Author
Eng/ Rimon Abdelmasih

🎯 Software Engineer & Mobile App Develober 📱

