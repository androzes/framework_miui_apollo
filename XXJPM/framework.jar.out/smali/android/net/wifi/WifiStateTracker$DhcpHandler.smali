.class Landroid/net/wifi/WifiStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 2413
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2414
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2415
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 2417
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2418
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .locals 2

    .prologue
    .line 2511
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getState()I

    move-result v0

    .line 2512
    .local v0, state:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 2423
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2495
    :goto_0
    return-void

    .line 2426
    :pswitch_0
    const/4 v1, 0x0

    .line 2427
    .local v1, modifiedBluetoothCoexistenceMode:Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2444
    const/4 v1, 0x1

    .line 2447
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 2452
    :cond_0
    monitor-enter p0

    .line 2453
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2454
    const-string v2, "WifiStateTracker"

    const-string v3, "mWakeLock.acquired"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)Z

    .line 2456
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2459
    monitor-enter p0

    .line 2461
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2462
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2463
    const-string v2, "WifiStateTracker"

    const-string v2, "DhcpHandler: DHCP request started"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2465
    const/4 v0, 0x6

    .line 2466
    .local v0, event:I
    const-string v2, "WifiStateTracker"

    const-string v2, "DhcpHandler: DHCP request succeeded"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :goto_1
    monitor-enter p0

    .line 2474
    :try_start_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2475
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2476
    const-string v2, "WifiStateTracker"

    const-string v3, "mWakeLock.released"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)Z

    .line 2479
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2482
    if-eqz v1, :cond_2

    .line 2484
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 2488
    :cond_2
    monitor-enter p0

    .line 2489
    :try_start_3
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v2, :cond_3

    .line 2490
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2492
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2456
    .end local v0           #event:I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 2462
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 2468
    :cond_4
    const/4 v0, 0x7

    .line 2469
    .restart local v0       #event:I
    const-string v2, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2479
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 2423
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1
    .parameter "cancelCallback"

    .prologue
    .line 2498
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2499
    monitor-exit p0

    return-void

    .line 2498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
