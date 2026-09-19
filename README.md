# Orion Commons

## Overview
Orion Commons is a Flutter-based platform designed to foster community engagement and resource sharing.

## Project Vision
To provide a seamless, scalable, and modular experience for users to discover, offer, and request resources within their community.

## Technology Stack
- **Framework:** Flutter
- **State Management:** Cubit (flutter_bloc)
- **Architecture:** Clean Architecture + Feature-First
- **Dependency Injection:** Prepared for get_it / injectable
- **Routing:** Prepared for go_router
- **Theme:** Material 3

## Architecture Philosophy
The project follows **Clean Architecture** principles to ensure separation of concerns, testability, and maintainability. It is organized using a **Feature-First** approach to keep the codebase modular and scalable.

### Dependency Flow
`Presentation -> Domain <- Data`
*   **Presentation:** Responsible for UI and state management (Cubit).
*   **Domain:** The heart of the application. Contains Entities, Use Cases, and Repository Interfaces. It is pure Dart and has no dependencies on other layers or Flutter.
*   **Data:** Responsible for data retrieval and persistence. Contains Models, Repository implementations, and Data Sources.

## Project Structure
`lib/`
- `core/`: Infrastructure, app-wide configuration, and common services.
- `features/`: Modular functionality separated by business domain.
- `shared/`: Reusable UI components, widgets, and utilities shared across features.

## Feature List
- **Auth:** User authentication, registration, and session management.
- **Home:** Main dashboard and landing experience.
- **Discover:** Search and exploration of community resources.
- **Offers:** Creation and management of resource offers.
- **Requests:** Creation and management of resource requests.
- **Create:** Centralized flow for creating new community content.
- **Learning:** Access to educational materials and community knowledge.
- **Messaging:** Real-time communication between community members.
- **Notifications:** Management of system and user-to-user alerts.
- **Profile:** User identity, settings, and personal history.

## Development Principles
- **Separation of Concerns:** Keep layers distinct.
- **Domain Purity:** Entities must remain independent of external frameworks.
- **Feature Isolation:** Features should be as independent as possible.
- **Scalability:** The architecture is designed to grow with the application.

## Responsive Design
The application is built with a mobile-first approach but supports adaptive layouts for tablets and larger screens.

## Localization Strategy
Prepared for multi-language support using Flutter's localization delegates.

## Contribution Guidelines
Developers should follow the established Clean Architecture patterns and ensure all new features include their own `README.md`.
