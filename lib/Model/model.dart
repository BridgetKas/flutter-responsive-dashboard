const menuIcons = [
  'assets/dashboard/home-1-svgrepo-com.svg',
  'assets/dashboard/invoice-svgrepo-com.svg',
  'assets/dashboard/trophy-svgrepo-com.svg',
  'assets/dashboard/pie-chart-2-svgrepo-com.svg',
  'assets/dashboard/credit-card-alt-svgrepo-com.svg',
  'assets/dashboard/clipboard-svgrepo-com.svg'

];


class InfoCardModel {
   final String icon;
   final String label;
   final String amount;

   InfoCardModel({required this.icon, required this.label, required this.amount});
}

final List<InfoCardModel> infoCardData = [
  InfoCardModel(
    icon: 'assets/dashboard/credit-card-alt-svgrepo-com.svg', 
    label: 'Transfer via \nCard number', 
    amount: '\$1200'
  ),
    InfoCardModel(
    icon: 'assets/dashboard/transfer-horizontal-svgrepo-com.svg', 
    // icon: 'assets/dashboard/credit-card-alt-svgrepo-com.svg', 
    label: 'Transfer via \nOnline Banks', 
    amount: '\$150'
  ),
     InfoCardModel(
    icon: 'assets/dashboard/bank-svgrepo-com.svg', 
    label: 'Transfer via \nSame Bank', 
    amount: '\$150'
  ),
     InfoCardModel(
    icon: 'assets/dashboard/bank-svgrepo-com (1).svg', 
    label: 'Transfer via \nOther Bank', 
    amount: '\$150'
  ),
];

class History {
  final String label;
  final String time;
  final double amount;
  final String status;
  final String avatar;

  History({required this.label, required this.time, required this.amount, required this.status, required this.avatar});
}

final List <History> transactionHistory = [
  History(
    label: 'Bridget', 
    time: '4h:00', 
    amount: 500, 
    status: 'Active', 
    avatar: 'assets/users/person1.jpg'),
  History(
    label: 'Carol', 
    time: '6h:00', 
    amount: 1000, 
    status: 'Pending', 
    avatar: 'assets/users/person2.jpg'),
  History(
    label: 'Gina',
     time: '4h:12', 
     amount: 800, 
     status: 'Completed',
      avatar: 'assets/users/person3.jpg'),
];

class RecentActivity {
  final String icon;
  final String label;
  final String amount;
  final String status;


  RecentActivity({required this.icon, required this.label, required this.amount, required this.status});

}

final List<RecentActivity> recentActivities = [
  RecentActivity(
    icon:'assets/dashboard/cash-dispenser-dollar-svgrepo-com.svg' , 
    label: 'Cash', 
    amount: '\$150', 
    status: 'Received'
),
  RecentActivity(
    icon: 'assets/dashboard/current-global-international-svgrepo-com.svg', 
    label: 'Electric Bill', 
    amount: '\$200', 
    status: 'Successfully'
  ),
  RecentActivity(
    icon: 'assets/dashboard/wifi-svgrepo-com.svg', 
    label: 'Internet Bill', 
    amount: '\$100', 
    status: 'Sucessfully'
  ),
    RecentActivity(
    icon: 'assets/dashboard/health-svgrepo-com.svg', 
    label: 'Health Bill', 
    amount: '\$400', 
    status: 'Pending'
  ),
];