# Offers Feature

## Purpose
Management of resource offers created by the user or available in the community.

## Responsibilities
- Creating, editing, and deleting offers.
- Displaying offer details.
- Tracking the status of an offer (e.g., active, completed, cancelled).

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: OfferCubit for management operations, OfferListCubit.
- pages/: OfferDetailsPage, MyOffersPage.
- widgets/: Offer card, status badge.

## Domain
- entities/: OfferEntity.
- repositories/: IOfferRepository interface.
- usecases/: CreateOfferUseCase, UpdateOfferUseCase, GetUserOffersUseCase.

## Data
- datasources/: OfferRemoteDataSource.
- models/: OfferModel.
- repositories/: OfferRepository implementation.

## Expected Dependencies
- features/auth: To associate offers with the logged-in user.
- shared/models: For common data types.

## Future Responsibilities
- Offer categories and tags.
- Image uploads for offers.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
CRUD operations via a resource management API.
