# UberHelpV8: AI-Powered Efficiency App for Uber Drivers

UberHelpV8 is an Android application designed to help Uber drivers maximize their earnings by intelligently evaluating trip offers and automating acceptance decisions based on profitability metrics.

## Features

- **Automated Trip Detail Extraction**: Uses Android's Accessibility Service to read and extract trip details from the Uber Driver app.
- **AI-Driven Trip Evaluation**: Utilizes on-device TensorFlow Lite models to evaluate trip profitability based on fare, distance, duration, and other factors.
- **Automated Trip Acceptance**: Automatically accepts profitable trips, ensuring drivers never miss lucrative opportunities.
- **Dark-Themed Minimalist UI**: Clean, simple interface with a prominent on/off toggle for easy control.
- **Local Data Storage**: All data is stored securely on-device using SQLite.
- **On-Device Model Retraining**: Periodically retrains the ML model using your historical trip data to improve decision accuracy.

## Requirements

- Android 8.0 (API level 26) or higher
- Device with at least 2GB of RAM (recommended)
- Uber Driver app installed
- Accessibility Services enabled

## Setup & Installation

1. Install the app on your Android device
2. Launch UberHelpV8
3. Follow the on-screen instructions to enable Accessibility Services
4. Configure your preferences in the Settings screen
5. Toggle the service ON when you're ready to start accepting trips

## Permissions Required

- **Accessibility Service**: Required to read trip details from the Uber Driver app
- **Internet**: Used to fetch external trends for improved trip evaluation (optional)

## How It Works

When the service is active, UberHelpV8 will:

1. Monitor the Uber Driver app for new trip offers
2. Extract key details (fare, distance, duration, etc.)
3. Evaluate the trip profitability using both simple criteria and machine learning
4. Automatically accept profitable trips
5. Store trip data locally for model improvement

## Settings Configuration

- **Minimum Fare**: Set the minimum fare you're willing to accept
- **Maximum Pickup Distance**: Set the maximum distance you'll drive for a pickup
- **Vibrate on Acceptance**: Enable/disable vibration notification when trips are accepted
- **Model Retraining Frequency**: Choose how often the ML model should be retrained

## Privacy & Security

UberHelpV8 is designed with privacy in mind:
- All data is stored locally on your device
- No data is transmitted to external servers
- The app only monitors the Uber Driver app when active

## Troubleshooting

If you encounter issues:
- Ensure Accessibility Services are properly enabled
- Check that the Uber Driver app is updated to the latest version
- Try restarting your device
- Make sure battery optimization is disabled for UberHelpV8

## Development

This app was developed using:
- Java for Android
- TensorFlow Lite for on-device machine learning
- SQLite for local data storage
- Android Accessibility Services

---

*Note: UberHelpV8 is designed for personal use and is not affiliated with or endorsed by Uber Technologies Inc.*
