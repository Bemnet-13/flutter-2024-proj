import 'package:flutter/material.dart';
import '../../widgets/colors.dart';
import 'package:faq/application/auth/auth_bloc.dart';
import '../../../injection.dart';
import 'login_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.lightPrimary,
        body: MultiBlocProvider(
          providers: [
            BlocProvider<LoginFormBloc>(
              create: (BuildContext context) => getIt<LoginFormBloc>(),
            ),
            BlocProvider<SignupFormBloc>(
              create: (BuildContext context) => getIt<SignupFormBloc>(),
            ),
          ],
          child: LoginForm(),
        ));
  }
}    
      
      
//       MultiBlocProvider(
//         providers: [
//           BlocProvider<LoginFormBloc>(
//             create: (context) => getIt<LoginFormBloc>(),
//           ),
//           BlocProvider<SignupFormBloc>(
//             create: (context) => getIt<SignupFormBloc>(),
//           ),
//         ],
//         child: LoginForm(),
//       ),)
//   }
// }