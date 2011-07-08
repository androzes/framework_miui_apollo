.class Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3461
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3462
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3463
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 3466
    const-string v0, "StatusBar"

    const-string v1, "mTtsObserver-onReceive"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 3470
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iput-object v2, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 3473
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 3474
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition()Z

    .line 3475
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 3476
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$TtsBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iput-object v2, v0, Lcom/android/server/status/StatusBarService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3486
    :cond_1
    return-void
.end method
