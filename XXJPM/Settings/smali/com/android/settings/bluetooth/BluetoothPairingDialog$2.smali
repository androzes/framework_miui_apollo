.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 247
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 248
    return-void
.end method
