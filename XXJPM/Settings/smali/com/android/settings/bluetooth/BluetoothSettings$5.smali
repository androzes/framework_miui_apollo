.class Lcom/android/settings/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$302(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$1000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$700(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/content/Intent;)V

    .line 261
    return-void
.end method
