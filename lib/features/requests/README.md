# Requests Feature

## Purpose
Management of resource requests created by community members.

## Responsibilities
- Creating and managing help or resource requests.
- Browsing community requests.
- Responding to requests.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: RequestCubit, RequestListCubit.
- pages/: RequestDetailsPage, BrowseRequestsPage.
- widgets/: Request list item, urgency indicator.

## Domain
- entities/: RequestEntity.
- repositories/: IRequestRepository interface.
- usecases/: CreateRequestUseCase, GetRequestsUseCase, FulfillRequestUseCase.

## Data
- datasources/: RequestRemoteDataSource.
- models/: RequestModel.
- repositories/: RequestRepository implementation.

## Expected Dependencies
- features/auth: To identify the requester.
- shared/enums: For request status and priority.

## Future Responsibilities
- Location-based request alerts.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Integration with a messaging or notification system when a request is fulfilled.
