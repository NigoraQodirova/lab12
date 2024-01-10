This project connects, writes and reads from firestore. I don't see anything meaningful from second app. Just run multiple instances of this app.

# First Project - Firestore Interaction in Flutter

This Flutter project demonstrates the integration of Firebase Firestore in a mobile app. It consists of two screens: one for writing data to Firestore and displaying it, and another screen dedicated solely to reading data.

## Features

### Screen 1: Write to Firestore

- Allows users to input data and save it to Firestore.
- Displays the saved data in real-time using Firestore's data streaming capabilities.
  
### Screen 2: Read from Firestore

- Displays data fetched from Firestore in a read-only manner.
- Provides users with a view-only interface for the Firestore collection.

## Instructions

### Running the Project

- To run the project, execute `flutter run` in the project's root directory.

### Usage

- Screen 1:
  - Write Data Screen:
    - Enter data into the input field.
    - Press the "Save to Firestore" button to save data to the Firestore collection.
    - Saved data will be displayed in real-time in the list below the input field.
  
- Screen 2:
  - Read Data Screen:
    - Displays data retrieved from the Firestore collection 'things'.
    - Offers a view-only interface to visualize the stored data.
