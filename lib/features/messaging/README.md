# Messaging Feature

## Purpose
Real-time communication between community members regarding offers, requests, or general collaboration.

## Responsibilities
- Handling text-based chat messages.
- Managing conversation lists.
- Providing real-time updates for new messages.

## Architecture
Presentation -> Domain -> Data

## Presentation
- cubit/: ChatCubit, ConversationListCubit.
- pages/: ChatPage, ConversationsPage.
- widgets/: Message bubble, input field, typing indicator.

## Domain
- entities/: MessageEntity, ConversationEntity.
- repositories/: IMessagingRepository interface.
- usecases/: SendMessageUseCase, GetConversationsUseCase.

## Data
- datasources/: ChatSocketDataSource, MessageRemoteDataSource.
- models/: MessageModel, ConversationModel.
- repositories/: MessagingRepository implementation.

## Expected Dependencies
- features/auth: To identify the sender and receiver.
- core/network: For WebSocket connections.

## Future Responsibilities
- File and image sharing in chat.
- Group messaging support.

## Architectural Rules
- Domain must remain independent from Flutter.
- Entities must not contain JSON serialization.
- Cubits must communicate through use cases.
- Data sources must not be accessed directly by presentation.
- Repository implementations belong to the data layer.

## Future API / Backend Integration
Real-time integration using WebSockets or Firebase Cloud Messaging.
