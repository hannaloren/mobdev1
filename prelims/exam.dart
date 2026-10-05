void main(){
  List <int> rating = [90 , 85, 89, 95, 88];

  Set<String> departments = { "HR", "IT", "Finance" };
  
  Map<String, int> employee = {
    "Hanna" : 90,
    "Loren" : 85,
    "Mia" : 89,
    "Noah" : 95,
    "Emma" : 88
  };

  int total = 0;
   for (int score in rating ){
    total = total + score;
  }

  double average = total / rating.length;
  print("TOTAL PERFORMANCE RATING: $total");
  print("AVERAGE PERFORMANCE RATING: $average");

 
    if (average >= 90){
      print("PERFORMANCE: Excellent");
    } else if (average >= 80){
      print("PERFORMANCE: Very Good");
    } else if (average >= 75){
      print("PERFORMANCE: Good");
    } else {
      print("Need more efforts");
    }
  

  print("\nDEPARTMENTS:");
  for(String dept in departments){
    print(dept);
  }

  print("\nEMPLOYEE PERFORMANCE: ");
  for (String name in employee.keys){
    print("$name : ${employee[name]}");
    
    for(int score in rating){
      if (score >= 75){
      print(" -Meet the required performance standard");
      break;
    } else{
      print(" -Did not meet required performance standard");
      break;
    }
    }
  }

  int highest = rating[0];
  int lowest = rating[0];

  for (int score in rating){
    if (score > highest){
      highest = score;
    } 

    if(score < lowest){
      lowest = score;
    }
  }

  print("\nSCOREBOARD");
  print("Highest: $highest");
  print("Lowest: $lowest");

  int pass = 0;
  int failed = 0;

  for (int score in rating){
    if (score >= 75){
      pass++;
    } else{
      failed++;
    }
  }

  print("\nSUMMARY:");
  print("Passed: $pass");
  print("Failed: $failed");
}