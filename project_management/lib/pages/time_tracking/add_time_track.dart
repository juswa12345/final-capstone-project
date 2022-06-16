import 'package:flutter/material.dart';
import 'package:project_management/pages/time_tracking/working_time_page.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/utilities/constant_string.dart';

class AddTimeTrack extends StatefulWidget {
  const AddTimeTrack({Key? key, required this.imgUrl}) : super(key: key);

  @override
  State<AddTimeTrack> createState() => _AddTimeTrackState();

  final String imgUrl;
}

class _AddTimeTrackState extends State<AddTimeTrack> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    if (current == 0) {
      isPause = false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int current = 0;
  bool isPause = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: paddingOnly,
                child: TabBar(
                  controller: _controller,
                  indicatorColor: purple,
                  indicatorWeight: 3.0,
                  labelColor: const Color(0xff000000),
                  labelStyle: textStyleAllerta,
                  onTap: (value) => setState(() {
                    current = value;
                    isPause = !isPause;
                  }),
                  tabs: const [
                    Tab(text: kWorkingTime),
                    Tab(text: kBreak),
                  ],
                ),
              ),
              current == 0
                  ? WorkingTimePage(
                      isPause: isPause,
                      imgUrl: widget.imgUrl,
                    )
                  : WorkingTimePage(
                      isPause: isPause,
                      imgUrl: widget.imgUrl,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
