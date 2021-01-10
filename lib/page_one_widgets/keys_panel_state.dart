import 'package:flutter/material.dart';
import 'cubit/Expression_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './page1widget.dart';
import './Showdialog.dart';

class KeysPanel extends StatelessWidget {
//  KeysPanel({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final PageCubit pageCubit = context.bloc()<PageCubit>();
    final PageCubit pageCubit = BlocProvider.of<PageCubit>(context);

    return BlocBuilder<PageCubit, PageState>(
      builder: (context, state) {
        if (state is PageInitial) {
          return Column(
            children: [
              Text("let's go!"),
              Text("let's go!"),
              SizedBox(
                height: 200,
              ),
              Page1widget(),
              ShowDialog(),
            ],
          );
        }
        if (state is PagePressedKey) {
          return Column(
            children: [
              Expression(state.listdata),
              Text("${state.key}"),
              SizedBox(
                height: 200,
              ),
              Page1widget()
            ],
          );
        }

        return Text("Not initial");
      },
    );
  }

  Widget Expression(List<int> list) {
    String sign;
    if (list[2] == 0) {
      sign = "+";
    } else {
      sign = "-";
    }
    return Text("${list[0]}$sign${list[1]}");
  }
}
/*






  @override
  Widget build(BuildContext context) {
    final PageCubit pageCubit = context.watch()<PageCubit>();
    
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.2,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(0),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(1),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(2),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        ],
      ),
    );
  }
*/
