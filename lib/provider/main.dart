import 'package:demo_app/provider/bottomNavProvider.dart';
import 'package:demo_app/provider/drawerProvider.dart';
import 'package:provider/provider.dart';


List<ChangeNotifierProvider> providers =  [ 
  ChangeNotifierProvider(create: (_)=>bottomNavProvider()),
  ChangeNotifierProvider(create: (_)=>drawerProvider()), 
];