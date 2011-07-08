.class public final Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RILReceiver;,
        Lcom/android/internal/telephony/RIL$RILSender;
    }
.end annotation


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field public static final CELL_BROADCAST_ENABLE:Z = true

.field private static final DBG:Z = false

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x7530

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final NETTEXT_GSM_SMS_CBMI_LIST_SIZE_MAX:I = 0x64

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = false

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_NAME_RIL:Ljava/lang/String; = "rild"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialRadioStateChange:Z

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLastNITZTimeInfo:Ljava/lang/Object;

.field mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/internal/telephony/RIL$RILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 593
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 595
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 598
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 242
    iput-boolean v4, p0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    .line 271
    new-instance v3, Lcom/android/internal/telephony/RIL$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RIL$1;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 599
    iput p3, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    .line 600
    iput p2, p0, Lcom/android/internal/telephony/RIL;->mNetworkMode:I

    .line 602
    packed-switch p2, :pswitch_data_0

    .line 618
    iput v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 621
    :goto_0
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 622
    .local v2, pm:Landroid/os/PowerManager;
    const-string v3, "RILJ"

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 623
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 624
    const-string v3, "ro.ril.wake_lock_timeout"

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 626
    iput v6, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 628
    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    .line 630
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "RILSender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 631
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 633
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 634
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/RIL$RILSender;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/telephony/RIL$RILSender;-><init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    .line 636
    new-instance v3, Lcom/android/internal/telephony/RIL$RILReceiver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    .line 637
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    const-string v5, "RILReceiver"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    .line 638
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 640
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 641
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 644
    return-void

    .line 607
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #looper:Landroid/os/Looper;
    .end local v2           #pm:Landroid/os/PowerManager;
    :pswitch_0
    iput v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    goto :goto_0

    .line 612
    :pswitch_1
    iput v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    goto :goto_0

    .line 615
    :pswitch_2
    iput v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    goto :goto_0

    .line 602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/RIL;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/InputStream;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .prologue
    .line 2518
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2519
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2520
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 2522
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 2523
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2524
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2525
    monitor-exit v1

    .line 2526
    return-void

    .line 2525
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 5
    .parameter "serial"

    .prologue
    .line 2567
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2568
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2569
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 2571
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 2572
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2573
    monitor-exit v3

    move-object v3, v1

    .line 2578
    .end local v1           #rr:Lcom/android/internal/telephony/RILRequest;
    :goto_1
    return-object v3

    .line 2568
    .restart local v1       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2576
    .end local v1           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_1
    monitor-exit v3

    .line 2578
    const/4 v3, 0x0

    goto :goto_1

    .line 2576
    .end local v2           #s:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 5
    .parameter "infoRec"

    .prologue
    const/4 v4, 0x0

    .line 3980
    const/16 v0, 0x403

    .line 3981
    .local v0, response:I
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    if-eqz v1, :cond_1

    .line 3982
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3983
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3984
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4024
    :cond_0
    :goto_0
    return-void

    .line 3987
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v1, :cond_2

    .line 3988
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3989
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3990
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3993
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v1, :cond_3

    .line 3994
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 3995
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3996
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mNumberInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3999
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    if-eqz v1, :cond_4

    .line 4000
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4001
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4002
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRedirNumInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4005
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    if-eqz v1, :cond_5

    .line 4006
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4007
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4008
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mLineControlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4011
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v1, :cond_6

    .line 4012
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4013
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4014
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53ClirInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 4017
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    if-eqz v1, :cond_0

    .line 4018
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 4019
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 4020
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mT53AudCntrlInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 2555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2557
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 2563
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V

    .line 2564
    return-void

    .line 2559
    :cond_1
    if-nez v0, :cond_0

    .line 2560
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    const-string v11, "RILJ"

    const-string v10, "< "

    .line 2584
    const/4 v1, 0x0

    .line 2586
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2587
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2591
    .local v0, error:I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2593
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 2594
    const-string v6, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected solicited response! sn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :goto_0
    return-void

    .line 2599
    :cond_0
    const/4 v2, 0x0

    .line 2601
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 2603
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 2742
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2744
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 2747
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, possible invalid RIL response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2751
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 2752
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2753
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2755
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 2609
    .end local v5           #tr:Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 2760
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2761
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 2762
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 2610
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2611
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2612
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2613
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2614
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2615
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2616
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2617
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2618
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2621
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2623
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2624
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2625
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2626
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2627
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2628
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2629
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2630
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2631
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2632
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2633
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2634
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2635
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2636
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 2637
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2638
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2639
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2640
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2641
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2642
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2643
    :sswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2644
    :sswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2645
    :sswitch_21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2646
    :sswitch_22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2647
    :sswitch_23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2648
    :sswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2649
    :sswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2650
    :sswitch_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2651
    :sswitch_27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2652
    :sswitch_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2653
    :sswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2654
    :sswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2655
    :sswitch_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2656
    :sswitch_2c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2657
    :sswitch_2d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2658
    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2659
    :sswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2660
    :sswitch_30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2661
    :sswitch_31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2662
    :sswitch_32
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseNetworkInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2663
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2664
    :sswitch_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2665
    :sswitch_35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2666
    :sswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2667
    :sswitch_37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2668
    :sswitch_38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2669
    :sswitch_39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2670
    :sswitch_3a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2671
    :sswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2672
    :sswitch_3c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2673
    :sswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2674
    :sswitch_3e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2675
    :sswitch_3f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2676
    :sswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2677
    :sswitch_41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2679
    :sswitch_42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2680
    :sswitch_43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2682
    :sswitch_44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2683
    :sswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2684
    :sswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2685
    :sswitch_47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2686
    :sswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2687
    :sswitch_49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2688
    :sswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2689
    :sswitch_4b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2690
    :sswitch_4c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2691
    :sswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2692
    :sswitch_4e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2693
    :sswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2694
    :sswitch_50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2695
    :sswitch_51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2696
    :sswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2697
    :sswitch_53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2698
    :sswitch_54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2699
    :sswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2700
    :sswitch_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2701
    :sswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2702
    :sswitch_58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2703
    :sswitch_59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2704
    :sswitch_5a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2705
    :sswitch_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2710
    :sswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2711
    :sswitch_5d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCbSettings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2713
    :sswitch_5e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2714
    :sswitch_5f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2715
    :sswitch_60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2716
    :sswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2717
    :sswitch_62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2718
    :sswitch_63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2719
    :sswitch_64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2720
    :sswitch_65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2721
    :sswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2722
    :sswitch_67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2723
    :sswitch_68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2724
    :sswitch_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2726
    :sswitch_6a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2727
    :sswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSIM_PB(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2728
    :sswitch_6c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2731
    :sswitch_6d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2733
    :sswitch_6e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSIM_LockInfo(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2734
    :sswitch_6f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2736
    :sswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2738
    :sswitch_71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 2739
    :sswitch_72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 2766
    .end local v2           #ret:Ljava/lang/Object;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2769
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_5

    .line 2770
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2771
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2774
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 2603
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1d
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_20
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x21 -> :sswitch_23
        0x22 -> :sswitch_24
        0x23 -> :sswitch_25
        0x24 -> :sswitch_26
        0x25 -> :sswitch_27
        0x26 -> :sswitch_28
        0x27 -> :sswitch_29
        0x28 -> :sswitch_2a
        0x29 -> :sswitch_2b
        0x2a -> :sswitch_2c
        0x2b -> :sswitch_2d
        0x2c -> :sswitch_2e
        0x2d -> :sswitch_2f
        0x2e -> :sswitch_30
        0x2f -> :sswitch_31
        0x30 -> :sswitch_32
        0x31 -> :sswitch_33
        0x32 -> :sswitch_34
        0x33 -> :sswitch_35
        0x34 -> :sswitch_36
        0x35 -> :sswitch_37
        0x36 -> :sswitch_38
        0x37 -> :sswitch_39
        0x38 -> :sswitch_3a
        0x39 -> :sswitch_3b
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_3e
        0x3d -> :sswitch_3f
        0x3e -> :sswitch_40
        0x3f -> :sswitch_41
        0x40 -> :sswitch_44
        0x41 -> :sswitch_45
        0x42 -> :sswitch_46
        0x43 -> :sswitch_47
        0x44 -> :sswitch_48
        0x45 -> :sswitch_49
        0x46 -> :sswitch_4a
        0x47 -> :sswitch_4b
        0x48 -> :sswitch_4c
        0x49 -> :sswitch_4d
        0x4a -> :sswitch_4e
        0x4b -> :sswitch_4f
        0x4c -> :sswitch_50
        0x4d -> :sswitch_51
        0x4e -> :sswitch_52
        0x4f -> :sswitch_53
        0x50 -> :sswitch_54
        0x51 -> :sswitch_55
        0x52 -> :sswitch_56
        0x53 -> :sswitch_57
        0x54 -> :sswitch_58
        0x55 -> :sswitch_59
        0x56 -> :sswitch_61
        0x57 -> :sswitch_5a
        0x58 -> :sswitch_5b
        0x5c -> :sswitch_5e
        0x5d -> :sswitch_5f
        0x5e -> :sswitch_60
        0x5f -> :sswitch_62
        0x60 -> :sswitch_63
        0x61 -> :sswitch_64
        0x62 -> :sswitch_65
        0x63 -> :sswitch_68
        0x64 -> :sswitch_66
        0x65 -> :sswitch_67
        0x66 -> :sswitch_69
        0x2711 -> :sswitch_5c
        0x2712 -> :sswitch_5d
        0x2715 -> :sswitch_1f
        0x2717 -> :sswitch_6a
        0x2718 -> :sswitch_6b
        0x2719 -> :sswitch_6c
        0x271a -> :sswitch_a
        0x271b -> :sswitch_11
        0x271c -> :sswitch_42
        0x271d -> :sswitch_6d
        0x271e -> :sswitch_6e
        0x2720 -> :sswitch_6f
        0x2721 -> :sswitch_43
        0x2722 -> :sswitch_70
        0x2724 -> :sswitch_71
        0x2725 -> :sswitch_72
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 29
    .parameter "p"

    .prologue
    .line 2843
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2845
    .local v17, response:I
    sparse-switch v17, :sswitch_data_0

    .line 2907
    :try_start_0
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unrecognized unsol response: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    :catch_0
    move-exception v24

    move-object/from16 v23, v24

    .line 2910
    .local v23, tr:Ljava/lang/Throwable;
    const-string v24, "RILJ"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "processing unsol response: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    .end local v23           #tr:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 2852
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 2914
    :goto_1
    sparse-switch v17, :sswitch_data_1

    goto :goto_0

    .line 2917
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->setRadioStateFromRILInt(I)V

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    goto :goto_0

    .line 2853
    :sswitch_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .local v19, ret:Ljava/lang/Object;
    goto :goto_1

    .line 2854
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2855
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2856
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2857
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2858
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2859
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2860
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2861
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2862
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2863
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2864
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2865
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2866
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2867
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2868
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2869
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2870
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 2871
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2872
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2877
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_16
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCbMessage(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .line 2880
    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2882
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2883
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2884
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2885
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2886
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v19

    .local v19, ret:Ljava/util/ArrayList;
    goto/16 :goto_1

    .line 2887
    .end local v19           #ret:Ljava/util/ArrayList;
    :sswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .local v19, ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2888
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_1d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2889
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseSSReleaseCompleteNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2890
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2891
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_20
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2892
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2894
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_22
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2897
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2899
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2902
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_25
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2903
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2905
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    .restart local v19       #ret:Ljava/lang/Object;
    goto/16 :goto_1

    .line 2922
    .end local v19           #ret:Ljava/lang/Object;
    :sswitch_28
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2928
    :sswitch_29
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2934
    :sswitch_2a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 2937
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    .line 2939
    .local v5, a:[Ljava/lang/String;
    const/16 v24, 0x1

    check-cast v19, Ljava/lang/String;

    aput-object v19, v5, v24

    .line 2943
    invoke-static {v5}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v20

    .line 2944
    .local v20, sms:Landroid/telephony/SmsMessage;
    if-nez v20, :cond_1

    .line 2946
    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2950
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSMSRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSMSRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2957
    .end local v5           #a:[Ljava/lang/String;
    .end local v20           #sms:Landroid/telephony/SmsMessage;
    :sswitch_2b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2965
    :sswitch_2c
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2967
    check-cast v19, [I

    move-object/from16 v0, v19

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 2969
    .local v21, smsIndex:[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2975
    :cond_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " NEW_SMS_ON_SIM ERROR with wrong length "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2980
    .end local v21           #smsIndex:[I
    :sswitch_2d
    move-object/from16 v0, v19

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2982
    .local v16, resp:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 2983
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2984
    const/16 v24, 0x0

    check-cast v19, [Ljava/lang/String;

    check-cast v19, [Ljava/lang/String;

    const/16 v25, 0x0

    aget-object v25, v19, v25

    aput-object v25, v16, v24

    .line 2985
    const/16 v24, 0x1

    const/16 v25, 0x0

    aput-object v25, v16, v24

    .line 2987
    :cond_3
    const/16 v24, 0x0

    aget-object v24, v16, v24

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2994
    .end local v16           #resp:[Ljava/lang/String;
    :sswitch_2e
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 2998
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 3000
    .local v11, nitzReceiveTime:J
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 3002
    .local v18, result:[Ljava/lang/Object;
    const/16 v24, 0x0

    aput-object v19, v18, v24

    .line 3003
    const/16 v24, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v18, v24

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 3007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3011
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3020
    .end local v11           #nitzReceiveTime:J
    .end local v18           #result:[Ljava/lang/Object;
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3026
    :sswitch_30
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDataConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3032
    :sswitch_31
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3041
    :sswitch_32
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3050
    :sswitch_33
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3059
    :sswitch_34
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3068
    :sswitch_35
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkCallSetUpRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3077
    :sswitch_36
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkSendSmsResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkSendSmsResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3086
    :sswitch_37
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkCallControlResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mStkCallControlResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3099
    :sswitch_38
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3101
    move-object/from16 v0, v19

    check-cast v0, Landroid/telephony/gsm/CbMessage;

    move-object v7, v0

    .line 3103
    .local v7, cb1:Landroid/telephony/gsm/CbMessage;
    iget-object v13, v7, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    .line 3108
    .local v13, pdu:Ljava/lang/String;
    invoke-static {v13}, Landroid/telephony/gsm/CbMessage;->newCBMessage(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage;

    move-result-object v6

    .line 3111
    .local v6, cb:Landroid/telephony/gsm/CbMessage;
    move-object v0, v7

    iget v0, v0, Landroid/telephony/gsm/CbMessage;->cbType:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object v1, v6

    iput v0, v1, Landroid/telephony/gsm/CbMessage;->cbType:I

    .line 3112
    move-object v0, v7

    iget v0, v0, Landroid/telephony/gsm/CbMessage;->message_length:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object v1, v6

    iput v0, v1, Landroid/telephony/gsm/CbMessage;->message_length:I

    .line 3113
    move-object v0, v7

    iget-object v0, v0, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v6

    iput-object v0, v1, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    .line 3116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCBRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCBRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v6

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3126
    .end local v6           #cb:Landroid/telephony/gsm/CbMessage;
    .end local v7           #cb1:Landroid/telephony/gsm/CbMessage;
    .end local v13           #pdu:Ljava/lang/String;
    :sswitch_39
    const-string v24, "RILJ"

    const-string v25, "Received DEVICE READY NOTIFICATION"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDeviceReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mDeviceReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 3135
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsDeviceReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsDeviceReadyRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3141
    :sswitch_3a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mReleaseCompleteMessageRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mReleaseCompleteMessageRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3150
    :sswitch_3b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mO2HomeZoneInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mO2HomeZoneInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3161
    :sswitch_3c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3169
    :sswitch_3d
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3178
    :sswitch_3e
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3187
    :sswitch_3f
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3195
    :sswitch_40
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 3203
    :sswitch_41
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3205
    move-object/from16 v0, v19

    check-cast v0, Landroid/telephony/SmsMessage;

    move-object/from16 v20, v0

    .line 3207
    .restart local v20       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSMSRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSMSRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3214
    .end local v20           #sms:Landroid/telephony/SmsMessage;
    :sswitch_42
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3235
    :sswitch_43
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3243
    :sswitch_44
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 3251
    :sswitch_45
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3260
    :sswitch_46
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3272
    :sswitch_47
    :try_start_3
    move-object/from16 v0, v19

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3278
    .local v10, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 3279
    .local v15, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3280
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_2

    .line 3273
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v15           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :catch_1
    move-exception v8

    .line 3274
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v24, "RILJ"

    const-string v25, "Unexpected exception casting to listInfoRecs"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3285
    .end local v8           #e:Ljava/lang/ClassCastException;
    :sswitch_48
    move-object/from16 v0, v19

    check-cast v0, [B

    move-object/from16 v20, v0

    check-cast v20, [B

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mUnsolOemHookRawRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3292
    :sswitch_49
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3294
    check-cast v19, [I

    check-cast v19, [I

    const/16 v24, 0x0

    aget v24, v19, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const/16 v24, 0x1

    move/from16 v14, v24

    .line 3295
    .local v14, playtone:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3294
    .end local v14           #playtone:Z
    :cond_6
    const/16 v24, 0x0

    move/from16 v14, v24

    goto :goto_3

    .line 3301
    :sswitch_4a
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3303
    .local v22, str:Ljava/lang/String;
    const-string v24, "RILJ"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Executing Am "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3306
    .local v4, Args:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/Am;->main([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3312
    .end local v4           #Args:[Ljava/lang/String;
    .end local v22           #str:Ljava/lang/String;
    :sswitch_4b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsNetworkNoResponse:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSmsNetworkNoResponse:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3322
    :sswitch_4c
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsAvailableRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mIccSmsAvailableRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3333
    :sswitch_4d
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHsdpaStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mHsdpaStateRegistrant:Landroid/os/Registrant;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3342
    :sswitch_4e
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    new-instance v25, Landroid/os/AsyncResult;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2845
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_14
        0x3fc -> :sswitch_15
        0x3fe -> :sswitch_17
        0x3ff -> :sswitch_13
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_24
        0x2af8 -> :sswitch_16
        0x2af9 -> :sswitch_1e
        0x2afa -> :sswitch_1f
        0x2afb -> :sswitch_20
        0x2aff -> :sswitch_21
        0x2b00 -> :sswitch_23
        0x2b02 -> :sswitch_22
        0x2b06 -> :sswitch_25
        0x2b07 -> :sswitch_26
        0x2b08 -> :sswitch_27
    .end sparse-switch

    .line 2914
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_28
        0x3ea -> :sswitch_29
        0x3eb -> :sswitch_2a
        0x3ec -> :sswitch_2b
        0x3ed -> :sswitch_2c
        0x3ee -> :sswitch_2d
        0x3f0 -> :sswitch_2e
        0x3f1 -> :sswitch_2f
        0x3f2 -> :sswitch_30
        0x3f3 -> :sswitch_31
        0x3f4 -> :sswitch_32
        0x3f5 -> :sswitch_33
        0x3f6 -> :sswitch_34
        0x3f7 -> :sswitch_35
        0x3f8 -> :sswitch_3c
        0x3f9 -> :sswitch_3d
        0x3fa -> :sswitch_3e
        0x3fb -> :sswitch_40
        0x3fc -> :sswitch_41
        0x3fd -> :sswitch_42
        0x3fe -> :sswitch_43
        0x3ff -> :sswitch_3f
        0x400 -> :sswitch_44
        0x401 -> :sswitch_45
        0x402 -> :sswitch_46
        0x403 -> :sswitch_47
        0x404 -> :sswitch_48
        0x405 -> :sswitch_49
        0x406 -> :sswitch_4e
        0x2af8 -> :sswitch_38
        0x2af9 -> :sswitch_3a
        0x2afa -> :sswitch_36
        0x2afb -> :sswitch_37
        0x2aff -> :sswitch_3b
        0x2b00 -> :sswitch_39
        0x2b02 -> :sswitch_4a
        0x2b06 -> :sswitch_4b
        0x2b07 -> :sswitch_4c
        0x2b08 -> :sswitch_4d
    .end sparse-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .parameter "is"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const-string v7, "RILJ"

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, offset:I
    const/4 v3, 0x4

    .line 435
    .local v3, remaining:I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 437
    .local v0, countRead:I
    if-gez v0, :cond_1

    .line 438
    const-string v4, "RILJ"

    const-string v4, "Hit EOS reading message length"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 467
    :goto_0
    return v4

    .line 442
    :cond_1
    add-int/2addr v2, v0

    .line 443
    sub-int/2addr v3, v0

    .line 444
    if-gtz v3, :cond_0

    .line 446
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 452
    .local v1, messageLength:I
    const/4 v2, 0x0

    .line 453
    move v3, v1

    .line 455
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 457
    if-gez v0, :cond_3

    .line 458
    const-string v4, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hit EOS reading message.  messageLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 460
    goto :goto_0

    .line 463
    :cond_3
    add-int/2addr v2, v0

    .line 464
    sub-int/2addr v3, v0

    .line 465
    if-gtz v3, :cond_2

    move v4, v1

    .line 467
    goto :goto_0
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 2531
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2534
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2537
    :cond_0
    monitor-exit v0

    .line 2538
    return-void

    .line 2537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 4033
    sparse-switch p0, :sswitch_data_0

    .line 4167
    const-string v0, "<unknown request>"

    :goto_0
    return-object v0

    .line 4034
    :sswitch_0
    const-string v0, "GET_SIM_STATUS"

    goto :goto_0

    .line 4035
    :sswitch_1
    const-string v0, "ENTER_SIM_PIN"

    goto :goto_0

    .line 4036
    :sswitch_2
    const-string v0, "ENTER_SIM_PUK"

    goto :goto_0

    .line 4037
    :sswitch_3
    const-string v0, "ENTER_SIM_PIN2"

    goto :goto_0

    .line 4038
    :sswitch_4
    const-string v0, "ENTER_SIM_PUK2"

    goto :goto_0

    .line 4039
    :sswitch_5
    const-string v0, "CHANGE_SIM_PIN"

    goto :goto_0

    .line 4040
    :sswitch_6
    const-string v0, "CHANGE_SIM_PIN2"

    goto :goto_0

    .line 4041
    :sswitch_7
    const-string v0, "ENTER_NETWORK_DEPERSONALIZATION"

    goto :goto_0

    .line 4042
    :sswitch_8
    const-string v0, "GET_CURRENT_CALLS"

    goto :goto_0

    .line 4043
    :sswitch_9
    const-string v0, "DIAL"

    goto :goto_0

    .line 4046
    :sswitch_a
    const-string v0, "DIAL_VIDEO_CALL"

    goto :goto_0

    .line 4048
    :sswitch_b
    const-string v0, "GET_IMSI"

    goto :goto_0

    .line 4049
    :sswitch_c
    const-string v0, "HANGUP"

    goto :goto_0

    .line 4050
    :sswitch_d
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    goto :goto_0

    .line 4051
    :sswitch_e
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    goto :goto_0

    .line 4052
    :sswitch_f
    const-string v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    goto :goto_0

    .line 4053
    :sswitch_10
    const-string v0, "CONFERENCE"

    goto :goto_0

    .line 4054
    :sswitch_11
    const-string v0, "DEFLECT"

    goto :goto_0

    .line 4055
    :sswitch_12
    const-string v0, "UDUB"

    goto :goto_0

    .line 4056
    :sswitch_13
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    goto :goto_0

    .line 4057
    :sswitch_14
    const-string v0, "SIGNAL_STRENGTH"

    goto :goto_0

    .line 4058
    :sswitch_15
    const-string v0, "REGISTRATION_STATE"

    goto :goto_0

    .line 4059
    :sswitch_16
    const-string v0, "GPRS_REGISTRATION_STATE"

    goto :goto_0

    .line 4060
    :sswitch_17
    const-string v0, "OPERATOR"

    goto :goto_0

    .line 4061
    :sswitch_18
    const-string v0, "RADIO_POWER"

    goto :goto_0

    .line 4062
    :sswitch_19
    const-string v0, "DTMF"

    goto :goto_0

    .line 4063
    :sswitch_1a
    const-string v0, "SEND_SMS"

    goto :goto_0

    .line 4064
    :sswitch_1b
    const-string v0, "SEND_SMS_EXPECT_MORE"

    goto :goto_0

    .line 4065
    :sswitch_1c
    const-string v0, "SETUP_DATA_CALL"

    goto :goto_0

    .line 4066
    :sswitch_1d
    const-string v0, "SIM_IO"

    goto :goto_0

    .line 4067
    :sswitch_1e
    const-string v0, "SEND_USSD"

    goto :goto_0

    .line 4068
    :sswitch_1f
    const-string v0, "SEND_ENCODED_USSD"

    goto :goto_0

    .line 4069
    :sswitch_20
    const-string v0, "CANCEL_USSD"

    goto :goto_0

    .line 4070
    :sswitch_21
    const-string v0, "GET_CLIR"

    goto :goto_0

    .line 4071
    :sswitch_22
    const-string v0, "SET_CLIR"

    goto :goto_0

    .line 4072
    :sswitch_23
    const-string v0, "QUERY_CALL_FORWARD_STATUS"

    goto :goto_0

    .line 4073
    :sswitch_24
    const-string v0, "SET_CALL_FORWARD"

    goto :goto_0

    .line 4074
    :sswitch_25
    const-string v0, "QUERY_CALL_WAITING"

    goto :goto_0

    .line 4075
    :sswitch_26
    const-string v0, "SET_CALL_WAITING"

    goto :goto_0

    .line 4076
    :sswitch_27
    const-string v0, "SMS_ACKNOWLEDGE"

    goto :goto_0

    .line 4077
    :sswitch_28
    const-string v0, "GET_IMEI"

    goto :goto_0

    .line 4078
    :sswitch_29
    const-string v0, "GET_IMEISV"

    goto :goto_0

    .line 4079
    :sswitch_2a
    const-string v0, "ANSWER"

    goto/16 :goto_0

    .line 4080
    :sswitch_2b
    const-string v0, "DEACTIVATE_DATA_CALL"

    goto/16 :goto_0

    .line 4081
    :sswitch_2c
    const-string v0, "QUERY_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4082
    :sswitch_2d
    const-string v0, "SET_FACILITY_LOCK"

    goto/16 :goto_0

    .line 4083
    :sswitch_2e
    const-string v0, "CHANGE_BARRING_PASSWORD"

    goto/16 :goto_0

    .line 4084
    :sswitch_2f
    const-string v0, "QUERY_NETWORK_SELECTION_MODE"

    goto/16 :goto_0

    .line 4085
    :sswitch_30
    const-string v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    goto/16 :goto_0

    .line 4086
    :sswitch_31
    const-string v0, "SET_NETWORK_SELECTION_MANUAL"

    goto/16 :goto_0

    .line 4087
    :sswitch_32
    const-string v0, "QUERY_AVAILABLE_NETWORKS "

    goto/16 :goto_0

    .line 4088
    :sswitch_33
    const-string v0, "DTMF_START"

    goto/16 :goto_0

    .line 4089
    :sswitch_34
    const-string v0, "DTMF_STOP"

    goto/16 :goto_0

    .line 4090
    :sswitch_35
    const-string v0, "BASEBAND_VERSION"

    goto/16 :goto_0

    .line 4091
    :sswitch_36
    const-string v0, "SEPARATE_CONNECTION"

    goto/16 :goto_0

    .line 4092
    :sswitch_37
    const-string v0, "SET_MUTE"

    goto/16 :goto_0

    .line 4093
    :sswitch_38
    const-string v0, "GET_MUTE"

    goto/16 :goto_0

    .line 4094
    :sswitch_39
    const-string v0, "QUERY_CLIP"

    goto/16 :goto_0

    .line 4095
    :sswitch_3a
    const-string v0, "LAST_DATA_CALL_FAIL_CAUSE"

    goto/16 :goto_0

    .line 4096
    :sswitch_3b
    const-string v0, "DATA_CALL_LIST"

    goto/16 :goto_0

    .line 4097
    :sswitch_3c
    const-string v0, "RESET_RADIO"

    goto/16 :goto_0

    .line 4098
    :sswitch_3d
    const-string v0, "OEM_HOOK_RAW"

    goto/16 :goto_0

    .line 4099
    :sswitch_3e
    const-string v0, "OEM_HOOK_STRINGS"

    goto/16 :goto_0

    .line 4100
    :sswitch_3f
    const-string v0, "SCREEN_STATE"

    goto/16 :goto_0

    .line 4101
    :sswitch_40
    const-string v0, "SET_SUPP_SVC_NOTIFICATION"

    goto/16 :goto_0

    .line 4102
    :sswitch_41
    const-string v0, "WRITE_SMS_TO_SIM"

    goto/16 :goto_0

    .line 4104
    :sswitch_42
    const-string v0, "READ_SMS_FROM_SIM"

    goto/16 :goto_0

    .line 4105
    :sswitch_43
    const-string v0, "RIL_REQUEST_GET_STOREAD_MSG_COUNT"

    goto/16 :goto_0

    .line 4107
    :sswitch_44
    const-string v0, "DELETE_SMS_ON_SIM"

    goto/16 :goto_0

    .line 4108
    :sswitch_45
    const-string v0, "SET_BAND_MODE"

    goto/16 :goto_0

    .line 4109
    :sswitch_46
    const-string v0, "QUERY_AVAILABLE_BAND_MODE"

    goto/16 :goto_0

    .line 4110
    :sswitch_47
    const-string v0, "REQUEST_STK_GET_PROFILE"

    goto/16 :goto_0

    .line 4111
    :sswitch_48
    const-string v0, "REQUEST_STK_SET_PROFILE"

    goto/16 :goto_0

    .line 4112
    :sswitch_49
    const-string v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    goto/16 :goto_0

    .line 4113
    :sswitch_4a
    const-string v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    goto/16 :goto_0

    .line 4114
    :sswitch_4b
    const-string v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    goto/16 :goto_0

    .line 4115
    :sswitch_4c
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    goto/16 :goto_0

    .line 4116
    :sswitch_4d
    const-string v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4117
    :sswitch_4e
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    goto/16 :goto_0

    .line 4118
    :sswitch_4f
    const-string v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    goto/16 :goto_0

    .line 4119
    :sswitch_50
    const-string v0, "REQUEST_SET_LOCATION_UPDATES"

    goto/16 :goto_0

    .line 4120
    :sswitch_51
    const-string v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4121
    :sswitch_52
    const-string v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4122
    :sswitch_53
    const-string v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    goto/16 :goto_0

    .line 4123
    :sswitch_54
    const-string v0, "RIL_REQUEST_SET_TTY_MODE"

    goto/16 :goto_0

    .line 4124
    :sswitch_55
    const-string v0, "RIL_REQUEST_QUERY_TTY_MODE"

    goto/16 :goto_0

    .line 4125
    :sswitch_56
    const-string v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4126
    :sswitch_57
    const-string v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    goto/16 :goto_0

    .line 4127
    :sswitch_58
    const-string v0, "RIL_REQUEST_CDMA_FLASH"

    goto/16 :goto_0

    .line 4128
    :sswitch_59
    const-string v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    goto/16 :goto_0

    .line 4129
    :sswitch_5a
    const-string v0, "RIL_REQUEST_CDMA_SEND_SMS"

    goto/16 :goto_0

    .line 4130
    :sswitch_5b
    const-string v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    goto/16 :goto_0

    .line 4134
    :sswitch_5c
    const-string v0, "RIL_REQUEST_SET_CELL_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4135
    :sswitch_5d
    const-string v0, "RIL_REQUEST_GET_CELL_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4137
    :sswitch_5e
    const-string v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4138
    :sswitch_5f
    const-string v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    goto/16 :goto_0

    .line 4139
    :sswitch_60
    const-string v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4140
    :sswitch_61
    const-string v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    goto/16 :goto_0

    .line 4141
    :sswitch_62
    const-string v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    goto/16 :goto_0

    .line 4142
    :sswitch_63
    const-string v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    goto/16 :goto_0

    .line 4143
    :sswitch_64
    const-string v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    goto/16 :goto_0

    .line 4144
    :sswitch_65
    const-string v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    goto/16 :goto_0

    .line 4145
    :sswitch_66
    const-string v0, "RIL_REQUEST_DEVICE_IDENTITY"

    goto/16 :goto_0

    .line 4146
    :sswitch_67
    const-string v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4147
    :sswitch_68
    const-string v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    goto/16 :goto_0

    .line 4148
    :sswitch_69
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    goto/16 :goto_0

    .line 4149
    :sswitch_6a
    const-string v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    goto/16 :goto_0

    .line 4150
    :sswitch_6b
    const-string v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    goto/16 :goto_0

    .line 4153
    :sswitch_6c
    const-string v0, "GET_PHONEBOOK_STORAGE_INFO"

    goto/16 :goto_0

    .line 4154
    :sswitch_6d
    const-string v0, "GET_PHONEBOOK_ENTRY"

    goto/16 :goto_0

    .line 4155
    :sswitch_6e
    const-string v0, "ACCESS_PHONEBOOK_ENTRY"

    goto/16 :goto_0

    .line 4158
    :sswitch_6f
    const-string v0, "USIM_PB_CAPA"

    goto/16 :goto_0

    .line 4160
    :sswitch_70
    const-string v0, "LOCK_INFO"

    goto/16 :goto_0

    .line 4161
    :sswitch_71
    const-string v0, "RIL_REQUEST_DIAL_EMERGENCY_CALL"

    goto/16 :goto_0

    .line 4162
    :sswitch_72
    const-string v0, "RIL_REQUEST_STK_SIM_INIT_EVENT"

    goto/16 :goto_0

    .line 4164
    :sswitch_73
    const-string v0, "RIL_REQUEST_GET_LINE_ID"

    goto/16 :goto_0

    .line 4165
    :sswitch_74
    const-string v0, "RIL_REQUEST_SET_LINE_ID"

    goto/16 :goto_0

    .line 4033
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1d
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_20
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x21 -> :sswitch_23
        0x22 -> :sswitch_24
        0x23 -> :sswitch_25
        0x24 -> :sswitch_26
        0x25 -> :sswitch_27
        0x26 -> :sswitch_28
        0x27 -> :sswitch_29
        0x28 -> :sswitch_2a
        0x29 -> :sswitch_2b
        0x2a -> :sswitch_2c
        0x2b -> :sswitch_2d
        0x2c -> :sswitch_2e
        0x2d -> :sswitch_2f
        0x2e -> :sswitch_30
        0x2f -> :sswitch_31
        0x30 -> :sswitch_32
        0x31 -> :sswitch_33
        0x32 -> :sswitch_34
        0x33 -> :sswitch_35
        0x34 -> :sswitch_36
        0x35 -> :sswitch_37
        0x36 -> :sswitch_38
        0x37 -> :sswitch_39
        0x38 -> :sswitch_3a
        0x39 -> :sswitch_3b
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_3e
        0x3d -> :sswitch_3f
        0x3e -> :sswitch_40
        0x3f -> :sswitch_41
        0x40 -> :sswitch_44
        0x41 -> :sswitch_45
        0x42 -> :sswitch_46
        0x43 -> :sswitch_47
        0x44 -> :sswitch_48
        0x45 -> :sswitch_49
        0x46 -> :sswitch_4a
        0x47 -> :sswitch_4b
        0x48 -> :sswitch_4c
        0x49 -> :sswitch_4d
        0x4a -> :sswitch_4e
        0x4b -> :sswitch_4f
        0x4c -> :sswitch_50
        0x4d -> :sswitch_51
        0x4e -> :sswitch_52
        0x4f -> :sswitch_53
        0x50 -> :sswitch_54
        0x51 -> :sswitch_55
        0x52 -> :sswitch_56
        0x53 -> :sswitch_57
        0x54 -> :sswitch_58
        0x55 -> :sswitch_59
        0x56 -> :sswitch_61
        0x57 -> :sswitch_5a
        0x58 -> :sswitch_5b
        0x5b -> :sswitch_60
        0x5c -> :sswitch_5e
        0x5d -> :sswitch_5f
        0x5e -> :sswitch_62
        0x5f -> :sswitch_63
        0x60 -> :sswitch_64
        0x61 -> :sswitch_65
        0x62 -> :sswitch_66
        0x63 -> :sswitch_69
        0x64 -> :sswitch_67
        0x65 -> :sswitch_68
        0x66 -> :sswitch_6a
        0x67 -> :sswitch_6b
        0x2711 -> :sswitch_5c
        0x2712 -> :sswitch_5d
        0x2715 -> :sswitch_1f
        0x2717 -> :sswitch_6c
        0x2718 -> :sswitch_6d
        0x2719 -> :sswitch_6e
        0x271a -> :sswitch_a
        0x271b -> :sswitch_11
        0x271c -> :sswitch_42
        0x271d -> :sswitch_6f
        0x271e -> :sswitch_70
        0x2720 -> :sswitch_71
        0x2721 -> :sswitch_43
        0x2722 -> :sswitch_72
        0x2724 -> :sswitch_73
        0x2725 -> :sswitch_74
    .end sparse-switch
.end method

.method private responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 3379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3381
    .local v2, numInfos:I
    new-array v1, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 3383
    .local v1, infos:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3384
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v0

    .line 3386
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 3387
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 3388
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 3389
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 3390
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 3391
    aget-object v3, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 3383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3394
    :cond_0
    return-object v1
.end method

.method private responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .parameter "p"

    .prologue
    .line 3702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3703
    .local v3, num:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3705
    .local v4, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_7

    .line 3706
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 3708
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 3709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 3710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 3711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 3712
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 3713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 3714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3715
    .local v7, voiceSettings:I
    if-nez v7, :cond_2

    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 3719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 3721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 3722
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3724
    .local v2, np:I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 3725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 3726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 3727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3728
    .local v6, uusInfoPresent:I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    .line 3729
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 3730
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 3731
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 3732
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 3733
    .local v5, userData:[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 3734
    const-string v8, "RILJ"

    const-string v9, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incoming UUS : data (string)="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incoming UUS : data (hex): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v10}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    .end local v5           #userData:[B
    :goto_6
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v9, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3749
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3751
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_6

    .line 3752
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3753
    const-string v8, "RILJ"

    const-string v9, "InCall VoicePrivacy is enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3711
    .end local v2           #np:I
    .end local v6           #uusInfoPresent:I
    .end local v7           #voiceSettings:I
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3712
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3715
    .restart local v7       #voiceSettings:I
    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 3719
    :cond_3
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 3721
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 3743
    .restart local v2       #np:I
    .restart local v6       #uusInfoPresent:I
    :cond_5
    const-string v8, "RILJ"

    const-string v9, "Incoming UUS : NOT present!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3755
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3756
    const-string v8, "RILJ"

    const-string v9, "InCall VoicePrivacy is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3760
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v2           #np:I
    .end local v6           #uusInfoPresent:I
    .end local v7           #voiceSettings:I
    :cond_7
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3762
    return-object v4
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .parameter "p"

    .prologue
    .line 3968
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 3970
    .local v0, response:[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3971
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3972
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3973
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 3975
    return-object v0
.end method

.method private responseCbMessage(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const-string v3, "RILJ"

    .line 3492
    new-instance v0, Landroid/telephony/gsm/CbMessage;

    invoke-direct {v0}, Landroid/telephony/gsm/CbMessage;-><init>()V

    .line 3494
    .local v0, cbMsg:Landroid/telephony/gsm/CbMessage;
    const-string v1, "RILJ"

    const-string v1, "[RilJ] New CB Message Received"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/gsm/CbMessage;->cbType:I

    .line 3497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/gsm/CbMessage;->message_length:I

    .line 3498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    .line 3500
    const-string v1, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    return-object v0
.end method

.method private responseCbSettings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .parameter "P"

    .prologue
    const/16 v12, 0x64

    const/4 v10, 0x1

    const-string v11, "RILJ"

    .line 3413
    const/4 v2, 0x0

    .line 3414
    .local v2, Enabled:I
    const/4 v4, 0x0

    .line 3415
    .local v4, i:I
    const/4 v5, 0x0

    .line 3418
    .local v5, j:I
    const/4 v6, 0x0

    .line 3419
    .local v6, lsb:I
    const/4 v7, 0x0

    .line 3421
    .local v7, msb:I
    new-instance v3, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v3}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 3423
    .local v3, cb:Landroid/telephony/gsm/CbConfig;
    const-string v9, "RILJ"

    const-string v9, "Cb settings received"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3431
    if-ne v2, v10, :cond_3

    .line 3432
    iput-boolean v10, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 3436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v9, v9

    iput-char v9, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 3438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v9, v9

    iput-char v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 3440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 3442
    iget-char v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    if-lez v9, :cond_4

    .line 3443
    iget-char v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 3447
    .local v0, Cbmid_List:[B
    :goto_1
    iget v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-le v9, v12, :cond_1

    .line 3448
    const-string v9, "RILJ"

    const-string v9, "No of CBMID Exceeded "

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    :cond_1
    iget v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v8, v9, [S

    .line 3452
    .local v8, msgIDs:[S
    iput-object v8, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 3454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3456
    .local v1, Cbmid_Str:Ljava/lang/String;
    const-string v9, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENABLED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selectedId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-char v10, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msgIdCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msgIdMaxCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-char v10, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    if-nez v1, :cond_5

    .line 3461
    const-string v9, "RILJ"

    const-string v9, "MessageIDs String is NULL"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :cond_2
    return-object v3

    .line 3433
    .end local v0           #Cbmid_List:[B
    .end local v1           #Cbmid_Str:Ljava/lang/String;
    .end local v8           #msgIDs:[S
    :cond_3
    const/4 v9, 0x2

    if-ne v2, v9, :cond_0

    .line 3434
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    goto/16 :goto_0

    .line 3445
    :cond_4
    new-array v0, v12, [B

    .restart local v0       #Cbmid_List:[B
    goto :goto_1

    .line 3466
    .restart local v1       #Cbmid_Str:Ljava/lang/String;
    .restart local v8       #msgIDs:[S
    :cond_5
    const-string v9, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", MessageIDs:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3470
    const/4 v4, 0x0

    :goto_2
    iget v9, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v4, v9, :cond_2

    .line 3472
    aget-byte v9, v0, v5

    and-int/lit16 v6, v9, 0xff

    .line 3473
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v7, v9, 0xff

    .line 3477
    iget-object v9, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    shl-int/lit8 v10, v7, 0x8

    or-int/2addr v10, v6

    int-to-short v10, v10

    aput-short v10, v9, v4

    .line 3479
    add-int/lit8 v5, v5, 0x2

    .line 3470
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 3882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3884
    .local v2, numServiceCategories:I
    if-nez v2, :cond_0

    .line 3889
    const/16 v1, 0x5e

    .line 3890
    .local v1, numInts:I
    new-array v3, v1, [I

    .line 3893
    .local v3, response:[I
    const/16 v4, 0x1f

    aput v4, v3, v6

    .line 3897
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3898
    add-int/lit8 v4, v0, 0x0

    div-int/lit8 v5, v0, 0x3

    aput v5, v3, v4

    .line 3899
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 3900
    add-int/lit8 v4, v0, 0x2

    aput v6, v3, v4

    .line 3897
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 3904
    .end local v0           #i:I
    .end local v1           #numInts:I
    .end local v3           #response:[I
    :cond_0
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v1, v4, 0x1

    .line 3905
    .restart local v1       #numInts:I
    new-array v3, v1, [I

    .line 3907
    .restart local v3       #response:[I
    aput v2, v3, v6

    .line 3908
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 3909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 3908
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3913
    :cond_1
    return-object v3
.end method

.method private responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 3952
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 3954
    .local v0, notification:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 3955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 3956
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 3957
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 3958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 3959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 3960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 3961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 3963
    return-object v0
.end method

.method private responseCdmaInformationRecord(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3940
    .local v2, numberOfInfoRecs:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3942
    .local v3, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3943
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Landroid/os/Parcel;)V

    .line 3944
    .local v0, InfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3942
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3947
    .end local v0           #InfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_0
    return-object v3
.end method

.method private responseCdmaSms(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3509
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3511
    .local v0, sms:Landroid/telephony/SmsMessage;
    return-object v0
.end method

.method private responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .parameter "p"

    .prologue
    .line 3820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3821
    .local v3, num:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3824
    .local v6, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const-string v8, "gsm.network.type"

    const-string/jumbo v9, "unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3827
    .local v4, radioString:Ljava/lang/String;
    const-string v8, "GPRS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3828
    const/4 v5, 0x1

    .line 3844
    .local v5, radioType:I
    :goto_0
    if-eqz v5, :cond_6

    .line 3845
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 3846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3847
    .local v7, rssi:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3848
    .local v2, location:Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v7, v2, v5}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 3849
    .local v0, cell:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3845
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3829
    .end local v0           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v1           #i:I
    .end local v2           #location:Ljava/lang/String;
    .end local v5           #radioType:I
    .end local v7           #rssi:I
    :cond_0
    const-string v8, "EDGE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3830
    const/4 v5, 0x2

    .restart local v5       #radioType:I
    goto :goto_0

    .line 3831
    .end local v5           #radioType:I
    :cond_1
    const-string v8, "UMTS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3832
    const/4 v5, 0x3

    .restart local v5       #radioType:I
    goto :goto_0

    .line 3833
    .end local v5           #radioType:I
    :cond_2
    const-string v8, "HSDPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3834
    const/16 v5, 0x8

    .restart local v5       #radioType:I
    goto :goto_0

    .line 3835
    .end local v5           #radioType:I
    :cond_3
    const-string v8, "HSUPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3836
    const/16 v5, 0x9

    .restart local v5       #radioType:I
    goto :goto_0

    .line 3837
    .end local v5           #radioType:I
    :cond_4
    const-string v8, "HSPA"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3838
    const/16 v5, 0xa

    .restart local v5       #radioType:I
    goto :goto_0

    .line 3840
    .end local v5           #radioType:I
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #radioType:I
    goto :goto_0

    .line 3852
    :cond_6
    return-object v6
.end method

.method private responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 3770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3771
    .local v2, num:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3773
    .local v3, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3774
    new-instance v0, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v0}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 3776
    .local v0, dataCall:Lcom/android/internal/telephony/DataCallState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 3777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 3778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 3779
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/DataCallState;->apn:Ljava/lang/String;

    .line 3780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/DataCallState;->address:Ljava/lang/String;

    .line 3782
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3785
    .end local v0           #dataCall:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    return-object v3
.end method

.method private responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    .line 3860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3861
    .local v7, num:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3863
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 3864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3865
    .local v1, fromId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3866
    .local v2, toId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3867
    .local v3, fromScheme:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3868
    .local v4, toScheme:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_0

    move v5, v10

    .line 3870
    .local v5, selected:Z
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 3872
    .local v0, info:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3863
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3868
    .end local v0           #info:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5           #selected:Z
    :cond_0
    const/4 v9, 0x0

    move v5, v9

    goto :goto_1

    .line 3874
    .end local v1           #fromId:I
    .end local v2           #toId:I
    .end local v3           #fromScheme:I
    .end local v4           #toScheme:I
    :cond_1
    return-object v8
.end method

.method private responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .parameter "p"

    .prologue
    .line 3588
    const/4 v0, 0x0

    .line 3591
    .local v0, data:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3592
    .local v2, sw1:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3594
    .local v3, sw2:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3596
    .local v1, s:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< iccIO:  0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3601
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/internal/telephony/IccIoResult;-><init>(IILjava/lang/String;)V

    return-object v4
.end method

.method private responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 3667
    new-instance v3, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 3668
    .local v3, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 3669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 3670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 3671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 3672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3675
    .local v2, numApplications:I
    const/16 v4, 0x8

    if-le v2, v4, :cond_0

    .line 3676
    const/16 v2, 0x8

    .line 3678
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 3680
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3681
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 3682
    .local v0, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 3683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 3684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 3685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 3686
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 3687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 3688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:I

    .line 3689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:I

    .line 3690
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 3680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3692
    .end local v0           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    return-object v3
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 3357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3359
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 3361
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 3361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3365
    :cond_0
    return-object v2
.end method

.method private responseNetworkInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 3790
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 3793
    .local v3, strings:[Ljava/lang/String;
    array-length v4, v3

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 3794
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS: invalid response. Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " strings, expected multible of 4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3799
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v3

    div-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3801
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 3802
    new-instance v4, Lcom/android/internal/telephony/gsm/NetworkInfo;

    add-int/lit8 v5, v1, 0x0

    aget-object v5, v3, v5

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    add-int/lit8 v7, v1, 0x2

    aget-object v7, v3, v7

    add-int/lit8 v8, v1, 0x3

    aget-object v8, v3, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3801
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 3810
    :cond_1
    return-object v2
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3565
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 3567
    .local v0, response:[B
    return-object v0
.end method

.method private responseSIM_LockInfo(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .parameter "p"

    .prologue
    .line 3651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3652
    .local v2, num_lock_type:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3653
    .local v1, lock_type:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3654
    .local v0, lock_key:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3656
    .local v3, num_of_retry:I
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lock_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lock_key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " num_of_retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    new-instance v4, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/SimLockInfoResult;-><init>(IIII)V

    return-object v4
.end method

.method private responseSIM_PB(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .parameter "p"

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x4

    const/4 v0, 0x3

    const/4 v11, 0x0

    const-string v10, "RILJ"

    .line 3607
    new-array v1, v0, [I

    .line 3608
    .local v1, lengthAlphas:[I
    new-array v2, v0, [I

    .line 3609
    .local v2, dataTypeAlphas:[I
    new-array v3, v0, [Ljava/lang/String;

    .line 3611
    .local v3, alphaTags:[Ljava/lang/String;
    new-array v4, v9, [I

    .line 3612
    .local v4, lengthNumbers:[I
    new-array v5, v9, [I

    .line 3613
    .local v5, dataTypeNumbers:[I
    new-array v6, v9, [Ljava/lang/String;

    .line 3618
    .local v6, numbers:[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3619
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3621
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 3622
    const-string v0, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alphaTag is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v3, v11

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const-string v0, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SNE is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v3, v12

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    const-string v0, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "email is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3627
    const-string v0, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lengthNumber is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v9, v4, v11

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3631
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 3632
    const-string v0, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "number is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v6, v11

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    const-string v0, "RILJ"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANR is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v6, v12

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3636
    .local v7, recordIndex:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3638
    .local v8, nextIndex:I
    new-instance v0, Lcom/android/internal/telephony/SimPBEntryResult;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    return-object v0
.end method

.method private responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 3575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3576
    .local v2, messageRef:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3577
    .local v0, ackPDU:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3579
    .local v1, errorCode:I
    new-instance v3, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 3581
    .local v3, response:Lcom/android/internal/telephony/SmsResponse;
    return-object v3
.end method

.method private responseSSReleaseCompleteNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const-string v3, "RILJ"

    .line 3518
    new-instance v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;-><init>()V

    .line 3519
    .local v0, notification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    const-string v1, "RILJ"

    const-string v1, "responseSSReleaseCompleteNotification()"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->size:I

    .line 3522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    .line 3523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    .line 3524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->status:I

    .line 3525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    .line 3526
    const-string v1, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification.data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    return-object v0
.end method

.method private responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 3918
    const/4 v1, 0x7

    .line 3922
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 3923
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 3923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3927
    :cond_0
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3538
    .local v0, response:Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3546
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 3557
    .local v0, response:[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 3399
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 3401
    .local v0, notification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 3402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 3403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 3404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 3405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 3407
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 4179
    sparse-switch p0, :sswitch_data_0

    .line 4224
    const-string v0, "<unknown reponse>"

    :goto_0
    return-object v0

    .line 4180
    :sswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 4181
    :sswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 4182
    :sswitch_2
    const-string v0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 4183
    :sswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 4184
    :sswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 4185
    :sswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 4186
    :sswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 4187
    :sswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 4188
    :sswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 4189
    :sswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 4190
    :sswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 4191
    :sswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 4192
    :sswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 4193
    :sswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 4194
    :sswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 4195
    :sswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 4196
    :sswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4197
    :sswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 4198
    :sswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 4199
    :sswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 4200
    :sswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 4201
    :sswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 4202
    :sswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 4203
    :sswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 4204
    :sswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 4205
    :sswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 4206
    :sswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 4207
    :sswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 4208
    :sswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 4209
    :sswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONG"

    goto :goto_0

    .line 4210
    :sswitch_1e
    const-string v0, "UNSOL_RELEASE_COMPLETE_MESSAGE"

    goto :goto_0

    .line 4211
    :sswitch_1f
    const-string v0, "UNSOL_STK_SEND_SMS_RESULT"

    goto :goto_0

    .line 4212
    :sswitch_20
    const-string v0, "UNSOL_STK_CALL_CONTROL_RESULT"

    goto :goto_0

    .line 4213
    :sswitch_21
    const-string v0, "UNSOL_O2_HOME_ZONE_INFO"

    goto :goto_0

    .line 4215
    :sswitch_22
    const-string v0, "UNSOL_DEVICE_READY_NOTI"

    goto :goto_0

    .line 4216
    :sswitch_23
    const-string v0, "RIL_UNSOL_RESPONSE_NEW_CB_MSG"

    goto :goto_0

    .line 4218
    :sswitch_24
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 4220
    :sswitch_25
    const-string v0, "RIL_UNSOL_RESPONSE_NO_NETWORK_RESPONSE"

    goto :goto_0

    .line 4221
    :sswitch_26
    const-string v0, "RIL_UNSOL_SIM_SMS_STORAGE_AVAILALE"

    goto :goto_0

    .line 4223
    :sswitch_27
    const-string v0, "RIL_UNSOL_HSDPA_STATE_CHANGED"

    goto :goto_0

    .line 4179
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_24
        0x2af8 -> :sswitch_23
        0x2af9 -> :sswitch_1e
        0x2afa -> :sswitch_1f
        0x2afb -> :sswitch_20
        0x2aff -> :sswitch_21
        0x2b00 -> :sswitch_22
        0x2b06 -> :sswitch_25
        0x2b07 -> :sswitch_26
        0x2b08 -> :sswitch_27
    .end sparse-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 3371
    const/4 v0, 0x0

    return-object v0
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 16
    .parameter "req"
    .parameter "ret"

    .prologue
    .line 2779
    if-nez p2, :cond_0

    const-string v14, ""

    .line 2835
    .end local p2
    :goto_0
    return-object v14

    .line 2780
    .restart local p2
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2791
    move-object/from16 v0, p2

    instance-of v0, v0, [I

    move v14, v0

    if-eqz v14, :cond_2

    .line 2792
    check-cast p2, [I

    .end local p2
    move-object/from16 v0, p2

    check-cast v0, [I

    move-object v9, v0

    .line 2793
    .local v9, intArray:[I
    array-length v10, v9

    .line 2794
    .local v10, length:I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "{"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2795
    .local v12, sb:Ljava/lang/StringBuilder;
    if-lez v10, :cond_1

    .line 2796
    const/4 v6, 0x0

    .line 2797
    .local v6, i:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    aget v14, v9, v6

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2798
    :goto_1
    if-ge v7, v10, :cond_1

    .line 2799
    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aget v15, v9, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .line 2785
    .end local v7           #i:I
    .end local v9           #intArray:[I
    .end local v10           #length:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .restart local p2
    :sswitch_0
    const-string v14, ""

    goto :goto_0

    .line 2802
    .end local p2
    .restart local v9       #intArray:[I
    .restart local v10       #length:I
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v14, "}"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v9           #intArray:[I
    .end local v10           #length:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .local v11, s:Ljava/lang/String;
    :goto_2
    move-object v14, v11

    .line 2835
    goto :goto_0

    .line 2804
    .end local v11           #s:Ljava/lang/String;
    .restart local p2
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, [Ljava/lang/String;

    move v14, v0

    if-eqz v14, :cond_4

    .line 2805
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 2806
    .local v13, strings:[Ljava/lang/String;
    array-length v10, v13

    .line 2807
    .restart local v10       #length:I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "{"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2808
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    if-lez v10, :cond_3

    .line 2809
    const/4 v6, 0x0

    .line 2810
    .restart local v6       #i:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .restart local v7       #i:I
    aget-object v14, v13, v6

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    :goto_3
    if-ge v7, v10, :cond_3

    .line 2812
    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_3

    .line 2815
    .end local v7           #i:I
    :cond_3
    const-string/jumbo v14, "}"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2817
    .restart local v11       #s:Ljava/lang/String;
    goto :goto_2

    .end local v10           #length:I
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    .end local v13           #strings:[Ljava/lang/String;
    .restart local p2
    :cond_4
    const/16 v14, 0x9

    move/from16 v0, p1

    move v1, v14

    if-ne v0, v1, :cond_6

    .line 2818
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 2819
    .local v2, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2820
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DriverCall;

    .line 2821
    .local v5, dc:Lcom/android/internal/telephony/DriverCall;
    const-string v14, "["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2823
    .end local v5           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2824
    .restart local v11       #s:Ljava/lang/String;
    goto :goto_2

    .end local v2           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :cond_6
    const/16 v14, 0x4b

    move/from16 v0, p1

    move v1, v14

    if-ne v0, v1, :cond_8

    .line 2826
    move-object/from16 v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 2827
    .local v4, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2828
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    .line 2829
    .local v3, cell:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2831
    .end local v3           #cell:Landroid/telephony/NeighboringCellInfo;
    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2832
    .restart local v11       #s:Ljava/lang/String;
    goto/16 :goto_2

    .line 2833
    .end local v4           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #s:Ljava/lang/String;
    goto/16 :goto_2

    .line 2780
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4229
    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4233
    const-string v0, "RILJ"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    return-void
.end method

.method private send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3
    .parameter "rr"

    .prologue
    .line 2544
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2546
    .local v0, msg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2549
    return-void
.end method

.method private sendScreenState(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x1

    .line 2446
    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2447
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2448
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2453
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2454
    return-void

    .line 2448
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 2470
    packed-switch p1, :pswitch_data_0

    .line 2483
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2471
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 2487
    .local v0, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    if-eqz v1, :cond_1

    .line 2488
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2495
    const-string v1, "RILJ"

    const-string v2, "Radio ON @ init; reset to OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 2501
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    .line 2505
    :goto_2
    return-void

    .line 2472
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2473
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2474
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2475
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2476
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2477
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2478
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2479
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2480
    .end local v0           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .restart local v0       #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 2499
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_1

    .line 2503
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_2

    .line 2470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private translateStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 1551
    and-int/lit8 v0, p1, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1563
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1553
    goto :goto_0

    .line 1555
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1557
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1559
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unsljLog(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4238
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "more"

    .prologue
    .line 4241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4242
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 4245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4246
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 4249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 4250
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1177
    const/16 v1, 0x28

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1180
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1183
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 16
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 846
    const/16 v14, 0x2719

    move v0, v14

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v13

    .line 848
    .local v13, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v14, 0x0

    new-array v4, v14, [B

    .line 849
    .local v4, byteArrayName:[B
    const/4 v14, 0x0

    new-array v6, v14, [B

    .line 850
    .local v6, byteArrayNameTemp:[B
    const/4 v14, 0x0

    new-array v2, v14, [B

    .line 851
    .local v2, byteArrayEmail:[B
    const/4 v14, 0x0

    new-array v3, v14, [B

    .line 853
    .local v3, byteArrayEmailTemp:[B
    const/4 v10, 0x0

    .line 854
    .local v10, isEncodable:Z
    const/4 v11, 0x0

    .line 857
    .local v11, isUCS2Only:Z
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    move-object v0, v14

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p4

    move v1, v14

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    const/4 v10, 0x1

    .line 869
    :goto_0
    const/4 v11, 0x1

    .line 871
    if-eqz v11, :cond_1

    .line 872
    const/4 v10, 0x0

    .line 873
    const-string v14, "isUCS2Only"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 879
    :goto_1
    if-eqz v10, :cond_2

    .line 880
    const/4 v5, 0x2

    .line 881
    .local v5, byteArrayNameDCS:I
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v4

    .line 895
    :cond_0
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "name = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 898
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    array-length v14, v4

    if-ge v9, v14, :cond_3

    .line 899
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "name["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-byte v15, v4, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 898
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 864
    .end local v5           #byteArrayNameDCS:I
    .end local v9           #i:I
    :catch_0
    move-exception v7

    .line 865
    .local v7, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v10, 0x0

    goto :goto_0

    .line 876
    .end local v7           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_1
    const-string v14, "Ssupport DCS type"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_1

    .line 883
    :cond_2
    const/4 v5, 0x3

    .line 885
    .restart local v5       #byteArrayNameDCS:I
    :try_start_1
    const-string v14, "ISO-10646-UCS-2"

    move-object/from16 v0, p4

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 886
    array-length v14, v6

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    new-array v4, v14, [B

    .line 887
    const/4 v9, 0x0

    .line 888
    .restart local v9       #i:I
    :goto_4
    array-length v14, v6

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v9, v14, :cond_0

    .line 889
    add-int/lit8 v14, v9, 0x2

    aget-byte v14, v6, v14

    aput-byte v14, v4, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 888
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 901
    :cond_3
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 902
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    array-length v15, v4

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    move-object v0, v14

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    if-eqz v11, :cond_5

    .line 908
    const-string v14, "isUCS2Only"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 910
    :try_start_2
    const-string v14, "ISO-10646-UCS-2"

    move-object/from16 v0, p6

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 911
    array-length v14, v3

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    new-array v2, v14, [B

    .line 913
    const/4 v12, 0x0

    .local v12, j:I
    :goto_5
    array-length v14, v3

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v12, v14, :cond_4

    .line 914
    add-int/lit8 v14, v12, 0x2

    aget-byte v14, v3, v14

    aput-byte v14, v2, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 913
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 916
    .end local v12           #j:I
    :catch_1
    move-exception v14

    .line 920
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "email = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 922
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 923
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    array-length v15, v2

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    :goto_6
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    move-object v0, v14

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 933
    return-void

    .line 926
    :cond_5
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 927
    .local v8, gsm8bitEmail:[B
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 928
    iget-object v14, v13, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    array-length v15, v8

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 891
    .end local v8           #gsm8bitEmail:[B
    .end local v9           #i:I
    :catch_2
    move-exception v14

    goto/16 :goto_2
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    const-string v3, " "

    .line 1763
    const/16 v1, 0x58

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1766
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1773
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1774
    return-void

    .line 1766
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    const-string v3, " "

    .line 1748
    const/16 v1, 0x25

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1751
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1758
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1759
    return-void

    .line 1752
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2035
    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2038
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2041
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2042
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 762
    const/16 v1, 0x2c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 764
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 766
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 772
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 778
    const/16 v1, 0x2c

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 780
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 782
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 785
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 788
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 789
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 734
    const/4 v1, 0x6

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 736
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 738
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 743
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 749
    const/4 v1, 0x7

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 751
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 753
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 758
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1123
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1126
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1128
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1129
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1623
    const/16 v1, 0x29

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1626
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1632
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1633
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1590
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(ILandroid/os/Message;)V

    .line 1591
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1134
    const/16 v1, 0x271b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1137
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1139
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1142
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1442
    const/16 v1, 0x61

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1445
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1454
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1455
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1426
    const/16 v1, 0x40

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1429
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1439
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 987
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 991
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 993
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 994
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    if-nez p3, :cond_0

    .line 997
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1007
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1008
    return-void

    .line 999
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1031
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1033
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1034
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1039
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1040
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1015
    const/16 v1, 0x271a

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1017
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1018
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1023
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1024
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4392
    const/16 v1, 0x63

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4394
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4396
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4397
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1197
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1200
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1203
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1896
    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1900
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1902
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1903
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1957
    const/16 v1, 0x33

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1960
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1962
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1963
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4265
    const/16 v1, 0x5f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4267
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4269
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4270
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1805
    const/16 v1, 0x1f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1808
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1810
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1811
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2356
    const/16 v1, 0x2712

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2358
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2360
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2361
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4359
    const/16 v1, 0x5c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4361
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4362
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 963
    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 965
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 968
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 977
    const/16 v1, 0x39

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 979
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 981
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 982
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4256
    const/16 v1, 0x62

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4258
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4260
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4261
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1282
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1285
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1288
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2394
    const/16 v1, 0x59

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2396
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2398
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2399
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1057
    const/16 v1, 0x26

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1059
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1062
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1066
    const/16 v1, 0x27

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1068
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1071
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v3, 0xb

    .line 1045
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1047
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1053
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 665
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 667
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 670
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1207
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1210
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1213
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1228
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1231
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1234
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getLastDataCallFailCause(Landroid/os/Message;)V

    .line 1221
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1252
    const/16 v1, 0x36

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1255
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1258
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2201
    const/16 v1, 0x4b

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2204
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2206
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2207
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1885
    const/16 v1, 0x2d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1889
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1891
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1892
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1292
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1295
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1297
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1298
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getDataCallList(Landroid/os/Message;)V

    .line 973
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 821
    const/16 v5, 0x2718

    invoke-static {v5, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 824
    .local v4, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v3, 0x0

    .line 826
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 827
    .local v1, p2:I
    const/4 v2, 0x0

    .line 829
    .local v2, p3:I
    const/4 v0, 0x0

    .line 831
    .local v0, data:Ljava/lang/String;
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 838
    iget-object v5, v4, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 841
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "response"

    .prologue
    .line 807
    const/16 v1, 0x2717

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 809
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 812
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 816
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2189
    const/16 v1, 0x4a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2192
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2194
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2195
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1156
    const/16 v1, 0x53

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1158
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1159
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1272
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1275
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1277
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1278
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 3
    .parameter "num_lock_type"
    .parameter "lock_type"
    .parameter "result"

    .prologue
    .line 949
    const/16 v1, 0x271e

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 952
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 954
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 958
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1262
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1265
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1267
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1268
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2227
    const/16 v1, 0x64

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2229
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2231
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2232
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1475
    const/16 v1, 0x2721

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1478
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1485
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1486
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 939
    const/16 v1, 0x271d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 941
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 944
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 6
    .parameter "accept"
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2146
    const/16 v2, 0x47

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2150
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2152
    new-array v0, v5, [I

    .line 2153
    .local v0, param:[I
    if-eqz p1, :cond_0

    move v2, v5

    :goto_0
    aput v2, v0, v4

    .line 2154
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2155
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2156
    return-void

    :cond_0
    move v2, v4

    .line 2153
    goto :goto_0
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupConnection: gsmIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1078
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1080
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1083
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1087
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1101
    const/16 v1, 0xe

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1105
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1107
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1108
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1091
    const/16 v1, 0xd

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1094
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1096
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1097
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    const-string v4, " 0x"

    const-string v3, ","

    .line 1782
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1785
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1788
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1791
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1792
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1800
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1801
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 2055
    const/16 v1, 0x3b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2058
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2061
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2063
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2065
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 2068
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2071
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2073
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2075
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2076
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 1

    .prologue
    .line 2463
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V

    .line 2464
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2105
    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2109
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2111
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2112
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1946
    const/16 v1, 0x37

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1949
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1951
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1952
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    const-string v3, " "

    .line 1928
    const/16 v1, 0x21

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1931
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1933
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1936
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1942
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1831
    const/16 v1, 0x23

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1834
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1840
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1841
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4280
    const/16 v1, 0x4f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4283
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4285
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4286
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1968
    const/16 v1, 0x2a

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1970
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1973
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1976
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1978
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1980
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1981
    return-void
.end method

.method public queryLineId(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 4401
    const/16 v1, 0x2724

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4404
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4406
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4407
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4324
    const/16 v1, 0x51

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4327
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4328
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1459
    const/16 v1, 0x271c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1462
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1471
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1472
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1187
    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1190
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1193
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 3
    .parameter "available"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 2252
    const/16 v1, 0x66

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2253
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2254
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2259
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2260
    return-void

    .line 2254
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2266
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2268
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2270
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2271
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2046
    const/16 v1, 0x3a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2049
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2051
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2052
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 3
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1336
    const/16 v1, 0x55

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1338
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1340
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1341
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1346
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1347
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 4348
    const/16 v1, 0x54

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4350
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4355
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4356
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 10
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1383
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1384
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1386
    .local v3, dis:Ljava/io/DataInputStream;
    const/16 v8, 0x57

    invoke-static {v8, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    .line 1390
    .local v6, rr:Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1392
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v0, v8

    .line 1398
    .local v0, address_nbr_of_digits:I
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    int-to-byte v9, v0

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1399
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 1400
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1399
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1404
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    int-to-byte v7, v8

    .line 1405
    .local v7, subaddr_nbr_of_digits:I
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    int-to-byte v9, v7

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1406
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    .line 1407
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 1406
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1410
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1411
    .local v2, bearerDataLength:I
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    .line 1413
    iget-object v8, v6, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1415
    .end local v0           #address_nbr_of_digits:I
    .end local v2           #bearerDataLength:I
    .end local v5           #i:I
    .end local v7           #subaddr_nbr_of_digits:I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1416
    .local v4, ex:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1420
    .end local v4           #ex:Ljava/io/IOException;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1422
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1423
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1302
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1305
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1307
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1310
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 3
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 2021
    const/16 v1, 0x2715

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2024
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DCS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2027
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2028
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2029
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2031
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2131
    const/16 v1, 0x45

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2134
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2136
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2137
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2138
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1365
    const/16 v1, 0x271f

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1368
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1370
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1375
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1351
    const/16 v1, 0x19

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1354
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1356
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1360
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1361
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2118
    const/16 v1, 0x46

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2121
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2123
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2124
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2125
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 2007
    const/16 v1, 0x1d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2010
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2013
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2015
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2016
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1163
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1166
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1169
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1173
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 3
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 2085
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2088
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2089
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2094
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2095
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1815
    const/16 v1, 0x20

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1819
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1821
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1826
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1827
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    const-string v3, " "

    .line 1908
    const/16 v1, 0x22

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1911
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1916
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1922
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1923
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1845
    const/16 v1, 0x24

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1848
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1855
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1856
    return-void

    .line 1849
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .locals 10
    .parameter "cb"
    .parameter "response"

    .prologue
    const/4 v9, 0x1

    const-string v8, "RILJ"

    .line 2278
    const/4 v3, 0x0

    .line 2279
    .local v3, i:I
    const/4 v4, 0x0

    .line 2282
    .local v4, j:I
    const-string v6, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RilJ-CB] bCBEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selectedId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-char v7, p1, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgIdMaxCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-char v7, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgIdCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v2, 0x0

    .local v2, a:I
    :goto_0
    iget-object v6, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v6, v6

    if-ge v2, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2292
    :cond_0
    const/16 v6, 0x2711

    invoke-static {v6, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 2300
    .local v5, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v6, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-ne v6, v9, :cond_3

    .line 2301
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    :cond_1
    :goto_1
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-char v7, p1, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2310
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget-char v7, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    iget-char v6, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iget v7, p1, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v6, v7, :cond_2

    .line 2313
    const-string v6, "RILJ"

    const-string v6, "MsgIdcount is bigger than msgIdmaxCount"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget v6, p1, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    int-to-char v6, v6

    iput-char v6, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2320
    :cond_2
    iget-char v6, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    if-lez v6, :cond_4

    .line 2321
    iget-char v6, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    mul-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 2325
    .local v0, Cbmid_List:[B
    :goto_2
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v7, p1, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    const/4 v3, 0x0

    :goto_3
    iget v6, p1, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v3, v6, :cond_5

    .line 2336
    add-int/lit8 v6, v4, 0x1

    iget-object v7, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 2337
    iget-object v6, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v6, v6, v3

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 2339
    add-int/lit8 v4, v4, 0x2

    .line 2327
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2303
    .end local v0           #Cbmid_List:[B
    :cond_3
    iget-boolean v6, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-nez v6, :cond_1

    .line 2304
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2323
    :cond_4
    const/16 v6, 0x64

    new-array v0, v6, [B

    .restart local v0       #Cbmid_List:[B
    goto :goto_2

    .line 2343
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 2345
    .local v1, Cbmid_str:Ljava/lang/String;
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2347
    const-string v6, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CbMid_STR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2351
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .parameter "activate"
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    .line 4378
    const/16 v1, 0x5e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4380
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4381
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4385
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4386
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 4
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 4366
    const/16 v2, 0x5d

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4368
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4369
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4372
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4374
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4375
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 4292
    const/16 v1, 0x4e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4295
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4296
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4301
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4302
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 3
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 4308
    const/16 v1, 0x4d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4311
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4312
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4317
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4318
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1987
    const/16 v2, 0x2b

    invoke-static {v2, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1990
    .local v1, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1993
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1996
    if-eqz p2, :cond_0

    const-string v2, "1"

    move-object v0, v2

    .line 1997
    .local v0, lockString:Ljava/lang/String;
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1998
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1999
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2001
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2003
    return-void

    .line 1996
    .end local v0           #lockString:Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    move-object v0, v2

    goto :goto_0
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 3
    .parameter "activate"
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    .line 2433
    const/16 v1, 0x5b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2435
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2436
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2440
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2441
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 5
    .parameter "config"
    .parameter "response"

    .prologue
    .line 2405
    const/16 v3, 0x5a

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 2407
    .local v2, rr:Lcom/android/internal/telephony/RILRequest;
    array-length v1, p1

    .line 2408
    .local v1, numOfConfig:I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2411
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2412
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2414
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2415
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2415
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 2419
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "configs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2421
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2422
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2421
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2426
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2427
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 4410
    const/16 v1, 0x2725

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4413
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4414
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4419
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4420
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    .line 2213
    const/16 v1, 0x4c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2214
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2220
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2221
    return-void

    .line 2215
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .locals 7
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const-string v6, "> "

    .line 1689
    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    if-eqz v2, :cond_1

    .line 1690
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1691
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1708
    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1710
    .local v1, rrCs:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1714
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1716
    .end local v1           #rrCs:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    :cond_1
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1721
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1727
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1729
    return-void

    .line 1716
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1722
    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enableMute"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 1238
    const/16 v1, 0x35

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1241
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1244
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1248
    return-void

    .line 1245
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1860
    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1864
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1866
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1867
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 1871
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1875
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1878
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1881
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 650
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 657
    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    .line 659
    :cond_0
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 4273
    iput p1, p0, Lcom/android/internal/telephony/RIL;->mPhoneType:I

    .line 4274
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 2173
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2176
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2183
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 1146
    const/16 v1, 0x52

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1149
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1153
    return-void

    .line 1150
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 8
    .parameter "on"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "> "

    .line 1638
    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mInitialRadioStateChange:Z

    if-eqz v2, :cond_1

    .line 1639
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 1640
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1657
    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 1659
    .local v1, rrCs:Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1663
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1665
    .end local v1           #rrCs:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    :cond_1
    const/16 v2, 0x17

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1671
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_2

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1681
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1682
    return-void

    .line 1665
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_2
    move v3, v5

    .line 1672
    goto :goto_0
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 2160
    const/16 v1, 0x2722

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2164
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2166
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2167
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 2238
    const/16 v1, 0x65

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2240
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2246
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 1734
    const/16 v1, 0x3e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1737
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1743
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1744
    return-void

    .line 1738
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 3
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 4334
    const/16 v1, 0x50

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4337
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4338
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4340
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4341
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    const-string v3, " "

    .line 1601
    const/16 v1, 0x1b

    invoke-static {v1, p7}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1604
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1607
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1608
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1609
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1610
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1618
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1619
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 1573
    const-string v2, ""

    .line 1575
    .local v2, profile:Ljava/lang/String;
    const/4 v9, 0x1

    .line 1577
    .local v9, radioTechnology:I
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    move v8, v0

    .line 1580
    .local v8, authType:I
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/RIL;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1583
    return-void

    .line 1577
    .end local v8           #authType:I
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0
.end method

.method public simIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    const-string v4, ","

    const-string v3, " 0x"

    .line 2368
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2371
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2372
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2374
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2375
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2378
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> simIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2385
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2386
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1314
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1317
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1319
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1321
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1322
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1326
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1329
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1332
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 676
    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 678
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 680
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 684
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 705
    const/4 v1, 0x4

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 707
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 709
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 713
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 690
    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 692
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 694
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 696
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 699
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 719
    const/4 v1, 0x5

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 721
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 723
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 728
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 793
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 795
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 797
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 801
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1112
    const/16 v1, 0xf

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1116
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1118
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1119
    return-void
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1509
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p2

    .line 1511
    const/16 v1, 0x3f

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1514
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1516
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1517
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1525
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1526
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1531
    const/16 v1, 0x60

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1534
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1543
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1544
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1489
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->translateStatus(I)I

    move-result p1

    .line 1491
    const/16 v1, 0x3f

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 1494
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1496
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1505
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 1506
    return-void
.end method
