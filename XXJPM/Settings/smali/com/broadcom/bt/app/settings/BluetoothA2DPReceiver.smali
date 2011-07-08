.class public Lcom/broadcom/bt/app/settings/BluetoothA2DPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2DPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothA2DPReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const-string v10, "BluetoothA2DPReceiver"

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, action:Ljava/lang/String;
    const-string v6, "BluetoothA2DPReceiver"

    const-string v6, "BluetoothA2DPReceiver:: onReceive()"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 54
    .local v2, event:Landroid/view/KeyEvent;
    const-string v6, "BluetoothA2DPReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() KeyEvent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez v2, :cond_1

    .line 89
    .end local v2           #event:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v2       #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 60
    .local v4, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 61
    .local v3, keyaction:I
    const-string v6, "BluetoothA2DPReceiver"

    const-string v6, "onReceive() ACTION_MEDIA_BUTTON, keycode:%d, keyaction:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    if-ne v3, v11, :cond_2

    .line 67
    const-string v6, "BluetoothA2DPReceiver"

    const-string v6, "Playing phone and BT headset A2DP is connected, but ACTION_UP:: do nothing"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_2
    if-nez v3, :cond_0

    .line 70
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 72
    .local v5, pAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    const-string v6, "BluetoothA2DPReceiver"

    const-string v6, "Playing phone and BT headset A2DP is connected, so changed path to BT"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v5, v11}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothA2DPReceiver;->abortBroadcast()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method
