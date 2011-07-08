.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothEventLoop$1;,
        Landroid/server/BluetoothEventLoop$EventLoopHandler;,
        Landroid/server/BluetoothEventLoop$EventLooperThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_AGENT_CANCEL:I = 0x4

.field private static final EVENT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x1

.field private static final EVENT_ON_DEVICE_CREATED:I = 0x67

.field private static final EVENT_ON_DEVICE_FOUND:I = 0x64

.field private static final EVENT_ON_DEVICE_PROPERTY_CHANGED:I = 0x66

.field private static final EVENT_ON_DEVICE_REMOVED:I = 0x68

.field private static final EVENT_ON_PROPERTY_CHANGED:I = 0x65

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x3

.field private static final EVENT_RESTART_BLUETOOTH:I = 0x2

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizeAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

.field private mInterrupted:Z

.field private mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 158
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 164
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    .line 169
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 170
    new-instance v0, Landroid/server/BluetoothEventLoop$EventLooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothEventLoop$EventLooperThread;-><init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

    .line 171
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop$EventLooperThread;->start()V

    .line 172
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 173
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$EventLoopHandler;)Landroid/server/BluetoothEventLoop$EventLoopHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    return-object p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processPropertyChangedEvent([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceCreatedEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceRemovedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 213
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1, p2}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "RSSI"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, rssi:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Class"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, classValue:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Name"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-short v4, v5

    .line 225
    .local v4, rssiValue:S
    :goto_0
    if-eqz v0, :cond_1

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const-string v5, "android.bluetooth.device.extra.CLASS"

    new-instance v6, Landroid/bluetooth/BluetoothClass;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 231
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 237
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 223
    .end local v4           #rssiValue:S
    :cond_0
    const/16 v4, -0x8000

    .restart local v4       #rssiValue:S
    goto :goto_0

    .line 235
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for remote device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v3, 0x0

    .line 598
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 600
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 619
    :goto_0
    return-object v1

    .line 604
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 605
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 609
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-object v1, v3

    .line 610
    goto :goto_0

    .line 617
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 618
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V

    :cond_2
    move-object v1, v0

    .line 619
    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 905
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    .line 766
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 768
    const-string v7, "BluetoothEventLoop"

    const-string v8, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v7, 0x0

    .line 837
    :goto_0
    return v7

    .line 772
    :cond_0
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 773
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as BT is not enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 775
    const/4 v7, 0x0

    goto :goto_0

    .line 779
    :cond_1
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    .line 780
    .local v6, uuid:Landroid/os/ParcelUuid;
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 784
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAudioSink(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    invoke-virtual {p0, v1}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 787
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 788
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    move v2, v7

    .line 789
    .local v2, authorized:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 790
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Allowing incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :goto_2
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v2, v8}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 797
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAgentAuthorize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for A2dp service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 788
    .end local v2           #authorized:Z
    :cond_3
    const/4 v7, 0x0

    move v2, v7

    goto :goto_1

    .line 792
    .restart local v2       #authorized:Z
    :cond_4
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 802
    .end local v2           #authorized:Z
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const/4 v2, 0x1

    .line 803
    .restart local v2       #authorized:Z
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 804
    const-string v5, "service_pbap"

    .line 822
    .local v5, service:Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_d

    .line 823
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAgentAuthorize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = true for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.intent.DEVICE"

    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 829
    const-string v7, "android.bluetooth.intent.SERVICE"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v4           #intent:Landroid/content/Intent;
    :goto_4
    move v7, v2

    .line 837
    goto/16 :goto_0

    .line 805
    .end local v5           #service:Ljava/lang/String;
    :cond_6
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isOpp(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 806
    const-string v5, "service_opp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_3

    .line 807
    .end local v5           #service:Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isFtp(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 808
    const-string v5, "service_ftp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_3

    .line 809
    .end local v5           #service:Ljava/lang/String;
    :cond_8
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isHid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 810
    const-string v5, "service_hid"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_3

    .line 811
    .end local v5           #service:Ljava/lang/String;
    :cond_9
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSerialPort(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 812
    const-string v5, "service_spp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_3

    .line 813
    .end local v5           #service:Ljava/lang/String;
    :cond_a
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isDUN(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 814
    const-string v5, "service_dun"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_3

    .line 815
    .end local v5           #service:Ljava/lang/String;
    :cond_b
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSAP(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 816
    const-string v5, "service_sap"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_3

    .line 818
    .end local v5           #service:Ljava/lang/String;
    :cond_c
    const-string v5, ""

    .line 819
    .restart local v5       #service:Ljava/lang/String;
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 833
    :cond_d
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for unknown service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    goto :goto_4
.end method

.method private onAgentCancel()V
    .locals 5

    .prologue
    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 858
    return-void
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of onCreateDeviceResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 878
    packed-switch p2, :pswitch_data_0

    .line 894
    :goto_0
    :pswitch_0
    return-void

    .line 880
    :pswitch_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 882
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 885
    :cond_0
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we dont have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .end local v0           #path:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 276
    if-nez p2, :cond_1

    .line 277
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V

    .line 278
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 287
    :cond_2
    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 289
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 293
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, p2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 299
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 337
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 338
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 340
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 341
    const-string v2, "BluetoothEventLoop"

    const-string v3, "onDeviceCreated() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    return-void
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 264
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 266
    const-string v2, "BluetoothEventLoop"

    const-string v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 271
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .parameter "properties"

    .prologue
    const-string v4, "BluetoothEventLoop"

    .line 240
    if-nez p2, :cond_1

    .line 241
    const-string v2, "BluetoothEventLoop"

    const-string v2, "ERROR: Remote device properties are null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 251
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 252
    const-string v2, "BluetoothEventLoop"

    const-string v2, "onDeviceFound() unable to post message to handler!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 472
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 475
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 476
    const-string v2, "BluetoothEventLoop"

    const-string v3, "onDevicePropertyChanged(): unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    return-void
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 359
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 360
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 362
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 363
    const-string v2, "BluetoothEventLoop"

    const-string v3, "onDeviceRemoved() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .locals 0
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 873
    return-void
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 720
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 723
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 725
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .locals 6
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v5, 0x3

    .line 623
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 633
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v3, v5}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 634
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 639
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 641
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 663
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 666
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 668
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 648
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 653
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 655
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .locals 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, pendingOutgoingAddress:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 683
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 687
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 688
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, pin:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 693
    .end local v4           #pin:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 696
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 712
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 714
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #btClass:Landroid/bluetooth/BluetoothClass;
    :sswitch_0
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService$BondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService$BondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 706
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    .line 707
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "0000"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto/16 :goto_0

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x418 -> :sswitch_0
        0x41c -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
        0x580 -> :sswitch_0
    .end sparse-switch
.end method

.method private onRestartRequired()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const-string v0, "BluetoothEventLoop"

    const-string v1, "*** A serious error occured (did bluetoothd crash?) - restarting Bluetooth ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendEmptyMessage(I)Z

    .line 902
    :cond_0
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .locals 10
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 313
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 316
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 317
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1, v7, p2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 333
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 323
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 326
    .local v2, postResult:Z
    if-nez v2, :cond_1

    .line 327
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1, v7, p2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDeviceCreatedEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceObjectPath"

    .prologue
    .line 346
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    .line 354
    .end local v1           #properties:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 481
    const/4 v9, 0x0

    aget-object v6, p2, v9

    .line 482
    .local v6, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 484
    const-string v9, "BluetoothEventLoop"

    const-string v10, "processDevicePropertyChangedEvent: Address of the remote device in null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device property changed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " property:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 490
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 491
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "Name"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 492
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 494
    const-string v9, "android.bluetooth.device.extra.NAME"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    const-string v9, "Class"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 506
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    const-string v9, "Connected"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 517
    const/4 v4, 0x0

    .line 518
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 519
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 523
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0x1f40

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 537
    :cond_4
    :goto_1
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 538
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_5
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 542
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    const-string v9, "Disconnected"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 543
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 546
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    :goto_2
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "false"

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    :cond_7
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 554
    .end local v4           #intent:Landroid/content/Intent;
    :cond_8
    const-string v9, "UUIDs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 555
    const/4 v8, 0x0

    .line 556
    .local v8, uuid:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 557
    .local v5, len:I
    if-lez v5, :cond_a

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_3
    array-length v9, p2

    if-ge v3, v9, :cond_9

    .line 560
    aget-object v9, p2, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 563
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 565
    .end local v3           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_a
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v6, v8}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 570
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    .end local v5           #len:I
    .end local v8           #uuid:Ljava/lang/String;
    :cond_b
    const-string v9, "Paired"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 572
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 573
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 575
    :cond_c
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V

    .line 577
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->removeBond(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 580
    :cond_d
    const-string v9, "Trusted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 582
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set trust state succeded, value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 583
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 585
    :cond_e
    const-string v9, "PairingFailed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 587
    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v9

    const/16 v10, 0xa

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Landroid/server/BluetoothPairingFailedResult;->getPairingErrorCodeToDisplayMessage(I)I

    move-result v11

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_4
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 589
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "BluetoothEventLoop"

    const-string v10, "Invalid pairing failure code received from JNI"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method private processDeviceRemovedEvent(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceObjectPath"

    .prologue
    .line 368
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBondState()Landroid/server/BluetoothService$BondState;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 372
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method private processPropertyChangedEvent([Ljava/lang/String;)V
    .locals 12
    .parameter "propValues"

    .prologue
    .line 387
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->isAdapterPropertiesEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 390
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 392
    :cond_0
    const/4 v10, 0x0

    aget-object v5, p1, v10

    .line 393
    .local v5, name:Ljava/lang/String;
    const-string v10, "Name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 394
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 468
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    const-string v10, "Pairable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "Discoverable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 405
    :cond_3
    const-string v10, "Pairable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    aget-object v10, p1, v10

    move-object v6, v10

    .line 407
    .local v6, pairable:Ljava/lang/String;
    :goto_1
    const-string v10, "Discoverable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    aget-object v10, p1, v10

    move-object v0, v10

    .line 411
    .local v0, discoverable:Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 414
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v7

    .line 415
    .local v7, prevMode:I
    const-string/jumbo v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v10, v11}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    .line 419
    .local v4, mode:I
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    if-ltz v4, :cond_1

    .line 422
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string v10, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    invoke-virtual {v2, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v0           #discoverable:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mode:I
    .end local v6           #pairable:Ljava/lang/String;
    .end local v7           #prevMode:I
    :cond_4
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v11, "Pairable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_1

    .line 407
    .restart local v6       #pairable:Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v11, "Discoverable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_2

    .line 431
    .end local v6           #pairable:Ljava/lang/String;
    :cond_6
    const-string v10, "Discovering"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 433
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 434
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 435
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_3
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 439
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 440
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 450
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    const-string v10, "Devices"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 451
    const/4 v9, 0x0

    .line 452
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 453
    .local v3, len:I
    if-lez v3, :cond_a

    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v8, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_4
    array-length v10, p1

    if-ge v1, v10, :cond_9

    .line 456
    aget-object v10, p1, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 459
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 461
    .end local v1           #i:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_a
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10, v5, v9}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    .end local v3           #len:I
    .end local v9           #value:Ljava/lang/String;
    :cond_b
    const-string v10, "Powered"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 465
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 466
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->onRestartRequired()V

    goto/16 :goto_0
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizeAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEventLoopRunning()Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 842
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 843
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getNonDisconnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 844
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 848
    :goto_0
    return v4

    .line 845
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 846
    .local v1, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .end local v1           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    move v4, v5

    .line 848
    goto :goto_0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .locals 4
    .parameter "propValues"

    .prologue
    .line 378
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 381
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 382
    const-string v2, "BluetoothEventLoop"

    const-string v3, "onPropertyChanged() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "Starting Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 199
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "Stopping Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 206
    :cond_0
    return-void
.end method
