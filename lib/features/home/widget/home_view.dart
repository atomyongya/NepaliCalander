import 'package:calander/exports/widget_exports.dart';
import 'package:calander/features/home/bloc/home_bloc.dart';
import 'package:flutter/services.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as nepali_date;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<HomeBloc>();
    _bloc.add(InitializeHomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).canvasColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) {
          if (state.status == StateStatus.initializeInProgress) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          return RefreshIndicator(
            onRefresh: () async {
              _bloc.add(InitializeHomeView());
            },
            child: ListView(
              children: <Widget>[
                Container(
                  margin: defaultPadding,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextView(
                          text: 'Today Date',
                          color: Theme.of(context).canvasColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: -32,
                        contentPadding: horizontalPadding,
                        leading: TextView(
                          text: 'Nepali Date: ',
                          fontSize: 14,
                          color: Theme.of(context).canvasColor,
                        ),
                        title: TextView(
                          text: state.nepaliDate!,
                          color: Theme.of(context).canvasColor,
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: -32,
                        contentPadding: horizontalPadding,
                        leading: TextView(
                          text: 'English Date: ',
                          fontSize: 14,
                          color: Theme.of(context).canvasColor,
                        ),
                        title: TextView(
                          text: state.englishDate!,
                          color: Theme.of(context).canvasColor,
                        ),
                      ),
                    ],
                  ),
                ),
                nepali_date.CalendarDatePicker(
                  firstDate: nepali_date.NepaliDateTime(1999),
                  initialDate: nepali_date.NepaliDateTime.now(),
                  lastDate: nepali_date.NepaliDateTime(2090),
                  onDateChanged: (_) {},
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
