.class Lcom/android/server/status/StatusBarService$1;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$1;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    const-string v2, "StatusBar"

    .line 382
    const-string v0, "StatusBar"

    const-string v0, "mBluetoothHeadsetServiceListener-onServiceConnected"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$1;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/status/StatusBarService$1;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 386
    const-string v0, "StatusBar"

    const-string v0, "mBluetoothHeadsetServiceListener-TTS Start"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$1;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition()Z

    .line 390
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 393
    const-string v0, "StatusBar"

    const-string v1, "mBluetoothHeadsetServiceListener-onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method
