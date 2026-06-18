import 'package:flutter/material.dart';

void main() {
  runApp(const InnovationTeamDeviceApp());
}

class InnovationTeamDeviceApp extends StatelessWidget {
  const InnovationTeamDeviceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '创新实验团队真机验收',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TeamDeviceHomePage(),
    );
  }
}

class TeamDeviceHomePage extends StatelessWidget {
  const TeamDeviceHomePage({super.key});

  static const String groupName = '第4组 创新实验团队';
  static const String projectTitle = 'Flutter Android 真机验收看板';
  static const String projectSlogan = '用 GitHub 协作，把第15周个人 Hello World 升级成小组真机运行成果';

  static const List<TeamMember> members = [
    TeamMember(role: '组长', name: '刘凯', task: '创建原始仓库、维护 main、审核 PR、组织真机运行与证据提交'),
    TeamMember(role: '组员 A', name: '赵杰', task: '修改 groupName、projectTitle、projectSlogan'),
    TeamMember(role: '组员 B', name: '陈建涛', task: '补全 members 中的成员姓名与分工'),
    TeamMember(role: '组员 C', name: '赵家国', task: '补充 realDeviceChecks 中的真机运行检查项'),
    TeamMember(role: '组员 D', name: '刘祖涛', task: '补充 evidenceRules，并把真机照片加入 README'),
  ];

   static const List<String> realDeviceChecks = [
    '主机电脑能执行 flutter doctor，并识别 Android toolchain',
    'flutter doctor -v 输出中 Android SDK 无红色错误',
    '已安装 Android SDK Build-Tools 和 Platform-Tools',
    'Android 手机已打开开发者选项（连续点击"版本号"7次）',
    'Android 手机已开启 USB 调试模式',
    '手机已通过 USB 数据线（非仅充电线）连接到主电脑',
    '手机屏幕已授权此电脑的 USB 调试请求（弹窗点击"始终允许"）',
    'adb devices 显示设备状态为 device，而不是 unauthorized 或 offline',
    'flutter devices 能看到真实 Android 设备（非仅模拟器）',
    '在项目根目录已执行 flutter pub get，无依赖报错',
    'flutter run 能成功编译并将 App 安装到手机',
    'flutter run 后手机屏幕显示本小组修改后的页面',
    'App 页面中能正确显示小组名称、成员分工、检查项和证据要求',
  ];

  static const List<String> realDeviceChecks = [
    '主电脑能执行 flutter doctor，并识别 Android toolchain',
    '已开启手机的开发者选项和 USB 调试',
    '手机通过数据线连接电脑，并授权 USB 调试',
    '终端运行 flutter devices 能看到真实手机型号',

  static const List<String> evidenceRules = [
    '证据照片必须由第二部手机拍摄，不能用本机截图代替',
    '照片中要看到手持真实 Android 手机和本应用页面',
    'README 中要包含 GitHub 协作说明、PR 合并记录和真机照片',
    '提交前检查照片不包含私人聊天、手机号、定位等隐私信息',
    '真机运行照片需清晰展示 Flutter App 在手机上的运行界面',
    '照片中必须包含小组名称和组员分工信息',
    'GitHub 仓库需保留完整的提交历史，不能 force push 覆盖',
    'PR 合并记录必须真实，不能由同一人完成所有审查和合并',
    '代码审查意见需在 PR 中有文字记录',
    '最终提交前需在小组会议上进行演示确认',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('创新实验第15周'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          HeroSection(),
          SizedBox(height: 20),
          MembersSection(),
          SizedBox(height: 20),
          RealDeviceChecksSection(),
          SizedBox(height: 20),
          EvidenceRulesSection(),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo.shade50,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.phone_android, size: 44, color: Colors.indigo),
            SizedBox(height: 12),
            Text(TeamDeviceHomePage.groupName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text(TeamDeviceHomePage.projectTitle, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(TeamDeviceHomePage.projectSlogan, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class MembersSection extends StatelessWidget {
  const MembersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('小组成员与 PR 分工', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        ...TeamDeviceHomePage.members.map((member) => MemberCard(member: member)),
      ],
    );
  }
}

class MemberCard extends StatelessWidget {
  const MemberCard({required this.member, super.key});

  final TeamMember member;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(member.role.characters.last)),
        title: Text('${member.role}：${member.name}'),
        subtitle: Text(member.task),
      ),
    );
  }
}

class RealDeviceChecksSection extends StatelessWidget {
  const RealDeviceChecksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Android 真机运行检查项', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...TeamDeviceHomePage.realDeviceChecks.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text('• $item'),
                )),
          ],
        ),
      ),
    );
  }
}

class EvidenceRulesSection extends StatelessWidget {
  const EvidenceRulesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('最终证据要求', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...TeamDeviceHomePage.evidenceRules.map((rule) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text('• $rule'),
                )),
          ],
        ),
      ),
    );
  }
}

class TeamMember {
  const TeamMember({required this.role, required this.name, required this.task});

  final String role;
  final String name;
  final String task;
}

