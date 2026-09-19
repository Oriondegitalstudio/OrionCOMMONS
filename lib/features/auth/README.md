# Auth Feature

## Purpose
Responsible for user authentication, registration, and session management.

## Responsibilities
- Handling user login and logout.
- Managing registration and password recovery.
- Maintaining the user's authentication state.
- Integrating with external identity providers.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: AuthCubit for managing login/logout states.
- pages/: Login, Register, Forgot Password pages.
- widgets/: Auth-specific buttons and form fields.

## Domain
- entities/: UserEntity representing the authenticated user.
- repositories/: IAuthRepository interface.
- usecases/: LoginUseCase, RegisterUseCase, LogoutUseCase.

## Data
- datasources/: RemoteAuthDataSource (API), LocalAuthDataSource (Tokens).
- models/: UserModel with JSON serialization logic.
- repositories/: AuthRepository implementation.

## Expected Dependencies
- core/network: For API calls.
- core/storage: For persisting authentication tokens.

## Future Responsibilities
- Implementing Biometric authentication.
- Multi-factor authentication support.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Integration with a REST API or Firebase Auth for secure identity management.
