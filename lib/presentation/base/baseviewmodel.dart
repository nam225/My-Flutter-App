abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs{
  //shared variable and functions that will be used through any VM
}

abstract class BaseViewModelInputs {
  void start(); // will be called while init. of VM
  void dispose(); // will be called when VM dies
}

mixin BaseViewModelOutputs {
}
