// import 'package:flutter/material.dart';
// import 'package:store_web/core/freezed/network_error.dart';
// import 'package:store_web/core/service/placeholder_service.dart';
// import 'package:store_web/resource/entity/result_dio.dart';
// import 'package:store_web/resource/entity/store.dart';

// class FetchScreen extends StatefulWidget {
//   const FetchScreen({Key? key}) : super(key: key);

//   @override
//   _FetchScreenState createState() => _FetchScreenState();
// }

// class _FetchScreenState extends State<FetchScreen> {
//   Result<List<Store>, NetworkError>? result;
//   JsonPlaceHolderService service = JsonPlaceHolderService();

//   @override
//   void initState() {
//     super.initState();
//     service.posts().then((data) {
//       setState(() {
//         result = data;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Clean Network")),
//       body: result != null
//           ? result!.when(success: (posts) {
//               return ListView.builder(
//                   itemCount: posts.length,
//                   itemBuilder: (_, index) {
//                     return Card(
//                       child: ListTile(
//                         leading: Text(posts[index].name),
//                         title: Text(posts[index].shopId),
//                       ),
//                     );
//                   });
//             }, failure: (networkError) {
//               return Center(
//                   child: Text(networkError.localizedErrorMessage ?? 'ERROR',
//                       textAlign: TextAlign.center));
//             })
//           : const Center(child: CircularProgressIndicator()),
//     );
//   }
// }
