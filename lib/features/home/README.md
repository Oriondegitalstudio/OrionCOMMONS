# Home Feature

## Purpose
Main landing experience and dashboard for the user.

## Responsibilities
- Displaying featured content and summaries.
- Providing navigation to other core features.
- Showing personalized user activity updates.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: HomeCubit for managing dashboard state.
- pages/: HomePage.
- widgets/: Feature cards, summary lists.

## Domain
- entities/: DashboardData entity.
- repositories/: IHomeRepository interface.
- usecases/: GetHomeDataUseCase.

## Data
- datasources/: HomeRemoteDataSource.
- models/: DashboardModel.
- repositories/: HomeRepository implementation.

## Expected Dependencies
- features/offers: For displaying offer summaries.
- features/requests: For displaying request summaries.

## Future Responsibilities
- Customizable dashboard widgets.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Aggregation of multiple backend services to provide a unified dashboard view.
