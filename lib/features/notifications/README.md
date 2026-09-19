# Notifications Feature

## Purpose
Management and display of system, activity, and user-to-user notifications.

## Responsibilities
- Displaying a list of recent notifications.
- Handling push notification reception and routing.
- Managing notification read/unread status.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: NotificationCubit, NotificationListCubit.
- pages/: NotificationsPage.
- widgets/: Notification tile, unread indicator badge.

## Domain
- entities/: NotificationEntity.
- repositories/: INotificationRepository interface.
- usecases/: GetNotificationsUseCase, MarkAsReadUseCase.

## Data
- datasources/: NotificationRemoteDataSource, NotificationLocalDataSource.
- models/: NotificationModel.
- repositories/: NotificationRepository implementation.

## Expected Dependencies
- core/network: For fetching notification updates.
- core/storage: For local notification settings.

## Future Responsibilities
- Notification preference settings (toggle categories).
- Actionable notifications (buttons within notifications).

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Integration with Firebase Cloud Messaging (FCM) or similar push services.
