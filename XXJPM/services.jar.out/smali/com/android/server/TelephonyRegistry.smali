.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private mActiveDataConnectionState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCellLocation:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionApnTypes:[Ljava/lang/String;

.field private mDataConnectionInterfaceName:Ljava/lang/String;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mMessageWaiting:Z

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const-string v3, ""

    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 72
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 74
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 76
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 78
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 80
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 84
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 86
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 89
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataConnectionState:I

    .line 92
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 94
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 96
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApnTypes:[Ljava/lang/String;

    .line 100
    const-string v1, ""

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 121
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 125
    .local v0, location:Landroid/telephony/CellLocation;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 130
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 581
    .local v0, ident:J
    if-nez p1, :cond_1

    .line 582
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 596
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 599
    return-void

    .line 584
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v3

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 634
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"

    .prologue
    .line 607
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    if-nez p2, :cond_0

    .line 611
    const-string v3, "networkUnvailable"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    :cond_0
    if-eqz p3, :cond_1

    .line 614
    const-string v3, "reason"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    :cond_1
    const-string v3, "apn"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 618
    .local v2, types:Ljava/lang/String;
    array-length v3, p5

    if-lez v3, :cond_2

    .line 619
    const/4 v3, 0x0

    aget-object v2, p5, v3

    .line 620
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, p5

    if-ge v0, v3, :cond_2

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    .end local v0           #i:I
    :cond_2
    const-string v3, "apnType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v3, "iface"

    invoke-virtual {v1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 627
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 545
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 556
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 557
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 558
    return-void

    .line 549
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 546
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 563
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 573
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 574
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 575
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 576
    return-void

    .line 567
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 564
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 648
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_0
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_1
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 639
    const/4 v1, 0x1

    .line 644
    :goto_0
    return v1

    .line 641
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 229
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    monitor-exit v3

    .line 236
    :goto_1
    return-void

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    .locals 3
    .parameter "r"
    .parameter "cellLocation"

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "r"
    .parameter "signalStrength"

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 500
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private toStringDgb(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    .line 436
    const-string v0, "UNKNOWN STATE"

    :goto_0
    return-object v0

    .line 428
    :pswitch_0
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 430
    :pswitch_1
    const-string v0, "CONNECTED"

    goto :goto_0

    .line 432
    :pswitch_2
    const-string v0, "SUSPENDED"

    goto :goto_0

    .line 434
    :pswitch_3
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 513
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 514
    .local v2, recordCount:I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mActiveDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataConnectionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionInterfaceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 532
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 533
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #i:I
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 12
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 136
    if-eqz p3, :cond_c

    .line 138
    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 140
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 142
    const/4 v5, 0x0

    .line 144
    .local v5, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 145
    .local v1, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 146
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    move-object v6, v5

    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v4, v0, :cond_a

    .line 147
    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v9, :cond_9

    .line 158
    :goto_1
    iget v9, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int/2addr v9, p3

    and-int v7, p3, v9

    .line 159
    .local v7, send:I
    iput p3, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 160
    if-eqz p4, :cond_8

    .line 161
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    .line 162
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v5, v9}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :cond_0
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_1

    .line 166
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 167
    .local v3, gsmSignalStrength:I
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v10, 0x63

    if-ne v3, v10, :cond_b

    const/4 v10, -0x1

    :goto_2
    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 173
    .end local v3           #gsmSignalStrength:I
    :cond_1
    :goto_3
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_2

    .line 175
    :try_start_4
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 180
    :cond_2
    :goto_4
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_3

    .line 182
    :try_start_5
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 187
    :cond_3
    :goto_5
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_4

    .line 188
    :try_start_6
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {p0, v5, v9}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    :cond_4
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_5

    .line 192
    :try_start_7
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 197
    :cond_5
    :goto_6
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_6

    .line 199
    :try_start_8
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 205
    :cond_6
    :goto_7
    and-int/lit16 v9, p3, 0x80

    if-eqz v9, :cond_7

    .line 207
    :try_start_9
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 212
    :cond_7
    :goto_8
    and-int/lit16 v9, p3, 0x100

    if-eqz v9, :cond_8

    .line 214
    :try_start_a
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 220
    :cond_8
    :goto_9
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 224
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v4           #i:I
    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v7           #send:I
    :goto_a
    return-void

    .line 146
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 152
    :cond_a
    :try_start_c
    new-instance v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 153
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_d
    iput-object v1, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 154
    iput-object p2, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 155
    iput-object p1, v5, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 156
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 220
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v4           #i:I
    :catchall_0
    move-exception v9

    :goto_b
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v9

    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #gsmSignalStrength:I
    .restart local v4       #i:I
    .restart local v7       #send:I
    :cond_b
    move v10, v3

    .line 167
    goto :goto_2

    .line 169
    .end local v3           #gsmSignalStrength:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 170
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_e
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 176
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 177
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_4

    .line 183
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 184
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_5

    .line 193
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v9

    move-object v2, v9

    .line 194
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_6

    .line 201
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_4
    move-exception v9

    move-object v2, v9

    .line 202
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_7

    .line 208
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v9

    move-object v2, v9

    .line 209
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_8

    .line 215
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_6
    move-exception v9

    move-object v2, v9

    .line 216
    .restart local v2       #ex:Landroid/os/RemoteException;
    iget-object v9, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_9

    .line 222
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v4           #i:I
    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v7           #send:I
    :cond_c
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_a

    .line 220
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_b
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 6
    .parameter "cfi"

    .prologue
    .line 320
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 324
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 325
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 326
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 327
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 329
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 330
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 331
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 335
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 239
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 243
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 244
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 245
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 246
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 247
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1

    .line 249
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 250
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 251
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 255
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 5
    .parameter "cellLocation"

    .prologue
    .line 463
    const-string v2, "notifyCellLocation()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 467
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 468
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 469
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 470
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 471
    invoke-direct {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    .line 468
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 474
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 339
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 343
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 344
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 345
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 346
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 348
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 349
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 350
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 354
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "networkType"

    .prologue
    .line 359
    const-string v3, "notifyDataConnection()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 363
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 364
    iput-boolean p2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 365
    iput-object p3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 366
    iput-object p4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 367
    iput-object p5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApnTypes:[Ljava/lang/String;

    .line 368
    iput-object p6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 369
    iput p7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 370
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 371
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 372
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    .line 374
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, p7}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 375
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 376
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 380
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    invoke-direct/range {p0 .. p6}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataConnectionEx(IIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "state"
    .parameter "activeState"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnTypes"
    .parameter "interfaceName"
    .parameter "networkType"

    .prologue
    .line 388
    const-string v3, "notifyDataConnection()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 393
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 394
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mActiveDataConnectionState:I

    .line 395
    move/from16 v0, p3

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 396
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 397
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 398
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionApnTypes:[Ljava/lang/String;

    .line 399
    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionInterfaceName:Ljava/lang/String;

    .line 400
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 402
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 403
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GsmMultiDCT] notify to callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->toStringDgb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v11, v4, v5

    .local v11, i:I
    :goto_1
    if-ltz v11, :cond_4

    .line 406
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/TelephonyRegistry$Record;

    .line 407
    .local v12, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v12, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_3

    .line 409
    :try_start_1
    iget-object v4, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object v0, v4

    move v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 410
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 411
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 415
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i:I
    .end local v12           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v11       #i:I
    :cond_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    if-eqz p4, :cond_5

    const-string v3, "networkTypeChanged"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    :cond_5
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GsmMultiDCT] broadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/android/server/TelephonyRegistry;->toStringDgb(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 419
    invoke-direct/range {v3 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 442
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 6
    .parameter "mwi"

    .prologue
    .line 301
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 305
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 306
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 307
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 308
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 310
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 311
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 312
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 316
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 260
    const-string v2, "notifyServiceState()"

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 264
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 265
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 266
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 267
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 268
    invoke-virtual {p0, v1, p1}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    .line 265
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 271
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 271
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 7
    .parameter "signalStrength"

    .prologue
    .line 276
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 280
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 281
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 282
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 283
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_1

    .line 284
    invoke-direct {p0, v3, p1}, Lcom/android/server/TelephonyRegistry;->sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V

    .line 286
    :cond_1
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 288
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 289
    .local v1, gsmSignalStrength:I
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v1           #gsmSignalStrength:I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .restart local v1       #gsmSignalStrength:I
    :cond_3
    move v6, v1

    .line 289
    goto :goto_2

    .line 291
    .end local v1           #gsmSignalStrength:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 292
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 296
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2       #i:I
    :cond_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "r"
    .parameter "state"

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method
