import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twita_kulone/constants/constants.dart';

final appwriteClientProvider = Provider((ref) {
  Client client = Client();
  return client
      .setEndpoint(AppwriteConstants.endPoint)
      .setProject(AppwriteConstants.projectId)
      .setSelfSigned(status: true);
});

final appwriteAccountProvider=Provider((ref) {
  final client=ref.watch(appwriteClientProvider);
  return Account(client);
});
final appwriteDatabasesProvider=Provider((ref) {
  final client=ref.watch(appwriteClientProvider);
  return Databases(client);
});