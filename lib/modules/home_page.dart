import 'package:flutter/material.dart';
import 'package:flutter_bloc/constants/app_style.dart';
import 'package:flutter_bloc/constants/colors.dart';
import 'package:flutter_bloc/constants/string_constants.dart';
import 'employee.dart';
import 'employee_block.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EmployeeBloc _employeeBloc = EmployeeBloc();

  @override
  void dispose() {
    _employeeBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstants.empApp),
      ),
      body: Container(
        child: StreamBuilder<List<Employee>>(
          stream: _employeeBloc.employeeListStream,
          builder:
              (BuildContext context, AsyncSnapshot<List<Employee>> snapshot) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          '${snapshot.data?[index].id}',
                          style: BoldAppStyle.boldText(fontSize: 25),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${snapshot.data?[index].name}',
                              style: BoldAppStyle.boldText(fontSize: 20),
                            ),
                            Text(
                              '₹ ${snapshot.data?[index].salary}',
                              style: BoldAppStyle.boldText(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Container(
                          child: IconButton(
                        icon: const Icon(
                          Icons.thumb_up,
                          color: ColorsConstants.green,
                        ),
                        onPressed: () {
                          _employeeBloc.employeeSalaryIncrement
                              .add(snapshot.data![index]);
                        },
                      )),
                      Container(
                        child: IconButton(
                          icon: const Icon(
                            Icons.thumb_down,
                            color: ColorsConstants.red,
                          ),
                          onPressed: () {
                            _employeeBloc.employeeSalaryDecrement
                                .add(snapshot.data![index]);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
