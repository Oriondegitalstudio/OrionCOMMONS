# Learning Feature

## Purpose
Provides educational resources, tutorials, and community knowledge base.

## Responsibilities
- Displaying educational articles and videos.
- Categorizing learning materials.
- Tracking user progress through learning paths.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: LearningCubit, ContentListCubit.
- pages/: LearningCenterPage, ArticleDetailsPage.
- widgets/: Video player, progress bar.

## Domain
- entities/: LearningContentEntity, LessonEntity.
- repositories/: ILearningRepository interface.
- usecases/: GetArticlesUseCase, TrackProgressUseCase.

## Data
- datasources/: LearningRemoteDataSource, LocalCacheDataSource.
- models/: LearningContentModel.
- repositories/: LearningRepository implementation.

## Expected Dependencies
- shared/components: For media display components.

## Future Responsibilities
- Quiz and assessment module.
- Certification generation.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Integration with a Content Management System (CMS) for educational content.
