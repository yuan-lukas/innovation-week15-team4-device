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
      title: '鍒涙柊瀹為獙鍥㈤槦鐪熸満楠屾敹',
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

  static const String groupName = '绗?缁?鍒涙柊瀹為獙鍥㈤槦';
  static const String projectTitle = 'Flutter Android 鐪熸満楠屾敹鐪嬫澘';
  static const String projectSlogan = '鐢?GitHub 鍗忎綔锛屾妸绗?5鍛ㄤ釜浜?Hello World 鍗囩骇鎴愬皬缁勭湡鏈鸿繍琛屾垚鏋?;

  static const List<TeamMember> members = [
    TeamMember(role: '缁勯暱', name: '鍒樺嚡', task: '鍒涘缓鍘熷浠撳簱銆佺淮鎶?main銆佸鏍?PR銆佺粍缁囩湡鏈鸿繍琛屼笌璇佹嵁鎻愪氦'),
    TeamMember(role: '缁勫憳 A', name: '璧垫澃', task: '淇敼 groupName銆乸rojectTitle銆乸rojectSlogan'),
    TeamMember(role: '缁勫憳 B', name: '闄堝缓娑?, task: '琛ュ叏 members 涓殑鎴愬憳濮撳悕涓庡垎宸?),
    TeamMember(role: '缁勫憳 C', name: '璧靛鍥?, task: '琛ュ厖 realDeviceChecks 涓殑鐪熸満杩愯妫€鏌ラ」'),
    TeamMember(role: '缁勫憳 D', name: '鍒樼娑?, task: '琛ュ厖 evidenceRules锛屽苟鎶婄湡鏈虹収鐗囧姞鍏?README'),
  ];

  static const List<String> realDeviceChecks = [
    '涓荤數鑴戣兘鎵ц flutter doctor锛屽苟璇嗗埆 Android toolchain',
    'Android 鎵嬫満宸叉墦寮€寮€鍙戣€呴€夐」鍜?USB 璋冭瘯',
    'adb devices 鏄剧ず璁惧鐘舵€佷负 device锛岃€屼笉鏄?unauthorized',
    'flutter devices 鑳界湅鍒扮湡瀹?Android 璁惧',
    'flutter run 鍚庢墜鏈哄睆骞曟樉绀烘湰灏忕粍淇敼鍚庣殑椤甸潰',
  ];

  // [缁勫憳D淇敼] 鏇存柊璇佹嵁瑙勫垯锛屽寘鍚湡鏈虹収鐗囪缁嗚姹傚拰 README 寮曠敤璇存槑
  static const List<String> evidenceRules = [
    '璇佹嵁鐓х墖蹇呴』鐢辩浜岄儴鎵嬫満鎷嶆憚锛屼笉鑳界敤鏈満鎴浘浠ｆ浛',
    '鐓х墖涓鐪嬪埌鎵嬫寔鐪熷疄 Android 鎵嬫満鍜屾湰搴旂敤椤甸潰',
    '涓嶈兘鏄?Web 鎴浘銆丄ndroid 妯℃嫙鍣ㄦ埅鍥炬垨鎵嬫満鏈満鎴浘',
    '鐓х墖鏂囦欢鍚嶄负 images/android-real-device.jpg锛屾斁鍏ラ」鐩?images/ 鐩綍',
    'README 涓紩鐢細![Android 鐪熸満杩愯鐓х墖](images/android-real-device.jpg)',
    '鎻愪氦鍓嶆鏌ョ収鐗囦笉鍖呭惈绉佷汉鑱婂ぉ銆佹墜鏈哄彿銆佸畾浣嶇瓑闅愮淇℃伅',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('鍒涙柊瀹為獙绗?5鍛?),
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
        const Text('灏忕粍鎴愬憳涓?PR 鍒嗗伐', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
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
        title: Text('${member.role}锛?{member.name}'),
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
            const Text('Android 鐪熸満杩愯妫€鏌ラ」', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...TeamDeviceHomePage.realDeviceChecks.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text('鈥?$item'),
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
            const Text('鏈€缁堣瘉鎹姹?, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...TeamDeviceHomePage.evidenceRules.map((rule) => Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text('鈥?$rule'),
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
