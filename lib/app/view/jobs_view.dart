import 'package:flutter/material.dart';
import 'package:bossad/app/item/joblist_item.dart';
import 'package:bossad/app/model/job.dart';

class JobsTab extends StatefulWidget {
  const JobsTab({Key? key}) : super(key: key);

  @override
  _JobsTabState createState() => _JobsTabState();
}

class _JobsTabState extends State<JobsTab> {
  // ignore: unused_field
  List<Job> _jobs = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      getJobList();
    });
  }

  void getJobList() {
    _jobs = Job.fromJson(""" 
      {
        "list":[
          {
            "name":"架构师（Android)",
            "cname":"蚂蚁金服",
            "size":"B轮",
            "salary":"25k-45k",
            "username":"夏庆鹏",
            "title":"HR"
          },
          {
            "name":"架构师（IOS) ",
            "cname":"大疆无人机",
            "size":"A轮",
            "salary":"35k-55k",
            "username":"黄磊",
            "title":"HRBP"
          }
        ]
      } 
    """);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'android',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: buildJobItem,
        itemCount: _jobs.length,
      ),
    );
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job job = _jobs[index];
    var jobItem = InkWell(
      child: JobListItem(job),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              content: Text(
                '敬请期待',
                style: TextStyle(fontSize: 20.0),
              ),
            );
          },
        );
      },
    );
    return jobItem;
  }
}
