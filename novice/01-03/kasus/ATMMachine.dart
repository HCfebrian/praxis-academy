import 'dart:io';

main() {
  int select = 0;
  int choice = 0;

  print("====================================================");
  print("\tWelcome to this simple ATM machine");
  print("====================================================");
  print("");

  do {
    try {
      do {
        print("\tPlease select ATM Transactions");
        print("\tPress [1] Deposit");
        print("\tPress [2] Withdraw");
        print("\tPress [3] Balance Inquiry");
        print("\tPress [4] Exit");

        stdout.write("\n\tWhat would you like to do? ");

        var select = int.parse(stdin.readLineSync());

        if (select > 4) {
          print("\n\tPlease select correct transaction.");
        } else {
          switch (select) {
            case 1:
              print("\n\tEnter the amount of money to deposit: ");
              stdout.write("\n\t");
              Deposit.deposit = double.parse(stdin.readLineSync());
              BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
              depositMoney();
              break;
            case 2:
              print(
                  "\n\tTo withdraw, make sure that you have sufficient balance in your account.");
              print("");
              print("\tEnter amount of money to withdraw: ");
              stdout.write("\n\t");
              Withdraw.withdraw = double.parse(stdin.readLineSync());
              withdrawMoney();
              break;
            case 3:
              checkBalance();
              break;
            default:
              print("\n\tTransaction exited.");
              break;
          }
        }
      } while (select > 4);
      do {
        try {
          print("\n\tWould you like to try another transaction?");
          print("\n\tPress [1] Yes \n\tPress [2] No");
          stdout.write("\tEnter your choice: ");

          choice = int.parse(stdin.readLineSync());
          if (choice > 2) {
            print("\n\tPlease select correct choice.");
          }
        } catch (e) {
          print("\tError Input! Please enter a number only.");
          stdout.write("\tEnter your choice:");
          choice = int.parse(stdin.readLineSync());
        }
      } while (choice > 2);
    } catch (e) {
      print("\tError Input! Please enter a number only.");
      stdout.write("\tEnter yout choice:");
      select = int.parse(stdin.readLineSync());
    }
  } while (choice <= 1);
  print("\n\tThank you for using this simple ATM Machine.");
}

void depositMoney() =>
    print("\tYou deposited the amount of + ${Deposit.getDeposit()}");

void checkBalance() =>
    print("\tYour current balance is ${BalanceInquiry.balance}");

void withdrawMoney() {
  if (BalanceInquiry.balance == 0) {
    print("\t Your current balance is zero");
    print("\t You Cannot withdraw!");
    print("\t You need to deposit money first");
  } else if (BalanceInquiry.balance <= 500) {
    print("\t You do not havve sufficient money to withdraw!");
    print("\t Chacked your balance to see your money in the bank");
  } else if (Withdraw.withdraw > BalanceInquiry.balance) {
    print("\tThe amount you withdraw is greater than to your balance");
    print("\tPlease check the amount you entered.");
  } else {
    BalanceInquiry.balance = BalanceInquiry.balance - Withdraw.withdraw;
    print("\n\tYou withdraw the amount of Php ${Withdraw.withdraw}");
  }
}

class BalanceInquiry {
  static double balance = 0;

  void setBalance(double b) => balance = b;

  static double getBalance() {
    return balance;
  }
}

class Withdraw {
  static double withdraw = 0;

  void setWithdraw(double w) => withdraw = w;

  static double getWithdraw() => withdraw;
}

class Deposit {
  static double deposit;

  void setDeposit(double d) => deposit = d;

  static double getDeposit() => deposit;
}
