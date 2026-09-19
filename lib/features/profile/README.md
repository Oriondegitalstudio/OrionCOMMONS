# Profile Feature

## Purpose
Manages user identity, personal information, settings, and activity history.

## Responsibilities
- Displaying and editing user profile information.
- Managing application settings (theme, language, etc.).
- Showing user-specific activity and history.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: ProfileCubit, SettingsCubit.
- pages/: ProfilePage, EditProfilePage, SettingsPage.
- widgets/: User avatar, settings toggle, activity list item.

## Domain
- entities/: UserProfileEntity, SettingsEntity.
- repositories/: IProfileRepository interface.
- usecases/: GetProfileUseCase, UpdateProfileUseCase, GetUserSettingsUseCase.

## Data
- datasources/: ProfileRemoteDataSource, SettingsLocalDataSource.
- models/: UserProfileModel, SettingsModel.
- repositories/: ProfileRepository implementation.

## Expected Dependencies
- features/auth: To handle identity-related profile updates.
- core/theme: For theme settings management.

## Future Responsibilities
- Profile verification badges.
- Privacy settings management.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Integration with a user management service and local storage for app settings.
