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

