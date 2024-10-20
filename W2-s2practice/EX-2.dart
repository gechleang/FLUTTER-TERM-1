class BankAccount {
  double? _balances;
  int? _accountId;
  String? _bankName;
  String? _branchCode;
  String? _accountOwner;

  BankAccount(this._bankName, this._balances, this._accountOwner,
      this._accountId, );
  String get bankName => this._bankName!;
  int get accountId => this._accountId!;
  double get balances => this._balances!;
  String get accountOwner => this._accountOwner!;

  void updateBalance(double amount) {
    this._balances = amount;
  }


  void credit(double amount) {
    _balances = _balances! + amount;
  }

  @override
  String toString() {
    return "Bankname: ${_bankName} ,AccountId: ${_accountId} ,Owner: ${_accountOwner} ,Balances: \$${_balances} ,Branch-code: ${_branchCode}";
  }
  
  void withdraw(int i) {}
}

class Bank {
  List<BankAccount>? _accounts = [];
  String? _bankName;
  String? _location;
  String? get bankName => this._bankName;
  String get location => this._location!;
  List<BankAccount> get account => this._accounts!;

  Bank(this._bankName, this._location);

  BankAccount createAccount(
      int accountId, double balances, String accountOwner, String branchCode) {
    for (var account in _accounts!) {
      if (account.accountId == accountId) {
        throw Exception("Account ID ${accountId} is already exist");
      }
    }

    var newAccount =
        BankAccount(bankName, accountId as double?, accountOwner, balances as int?, );
    _accounts!.add(newAccount);
    return newAccount;
  }

  void listAccount() {
    _accounts?.forEach((account) {
      print(account);
    });
  }
}

void main() {
  Bank myBank = Bank("ABA", "Veng Sreng");

  BankAccount Gechleang =myBank.createAccount(819, 3000, "Gechleang"," ABA BAnk" "003395356");

  myBank.createAccount(819, 3000, "Gechleang", "003395356");
  print(Gechleang);

  Gechleang.credit(100);
  print('Balance ${Gechleang.accountOwner} after credit \$${Gechleang.balances}'); 
  Gechleang.withdraw(50);
  print('Balance after withdraw ${Gechleang.balances}');

  try {
   Gechleang.withdraw(2000); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }


}
