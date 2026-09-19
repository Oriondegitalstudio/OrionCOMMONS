# Create Feature

## Purpose
Centralized entry point for creating any new community content (Offers, Requests, Posts).

## Responsibilities
- Providing a unified UI for content creation.
- Stepping users through the creation process.
- Validating input before submission.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: CreateCubit for managing multi-step form state.
- pages/: CreateSelectionPage, CreateFormPage.
- widgets/: Step indicators, input validation components.

## Domain
- entities/: DraftEntity.
- repositories/: ICreateRepository (if needed for drafts).
- usecases/: ValidateFormUseCase.

## Data
- datasources/: LocalDraftDataSource.
- models/: DraftModel.
- repositories/: CreateRepository implementation.

## Expected Dependencies
- features/offers: To trigger offer creation.
- features/requests: To trigger request creation.

## Future Responsibilities
- Autosave functionality for drafts.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Coordination with specific feature APIs for final submission.
