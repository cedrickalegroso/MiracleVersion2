
//Problem 2: Create a program that would calculate the tax of the user. ask the user for his/her net income and the number of dependents(no of children). The total tax is equal to 20% of the total income and deducted with 20,000 per dependents.


import java.io.*;
import java.util.Scanner;

class Main{
  public static void main (String[]args) {
  Scanner scan = new Scanner(System.in);

  System.out.print("Enter your net income: ");
  double income = scan.nextDouble();
  System.out.println("TEST = " + income);

  /*
   System.out.print("Enter the number of dependents: ");
  double dependents = scan.nextInt();

  scan.close();

  double tax = income * .20;
  System.out.println("DEBUG TAX = " + tax);
  double deduct = 20000 * dependents;
  System.out.println("DEBUG DEDUCT = " + deduct);
  double totaltax = tax - deduct;
  System.out.println("The total tax is: " + totaltax);

  */
 
  }
}

