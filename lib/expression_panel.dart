import 'package:flutter/material.dart';
import './cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpressionPanel extends StatelessWidget {
  const ExpressionPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
 //   final PageCubit pageCubit = context.watch()<PageCubit>();
    return Center(
      child: Text("pageCubit"),
    );
  }
}