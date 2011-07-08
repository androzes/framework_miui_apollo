.class public Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$3;,
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;,
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;,
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTEXT_ITEM_CONNECT:I = 0x2

.field private static final CONTEXT_ITEM_CONNECT_ADVANCED:I = 0x5

.field private static final CONTEXT_ITEM_DISCONNECT:I = 0x3

.field private static final CONTEXT_ITEM_GET_SERVICES:I = 0x6

.field private static final CONTEXT_ITEM_UNPAIR:I = 0x4

.field private static final D:Z = true

.field private static final DEBUG:Z = true

.field private static final MAX_UUID_DELAY_FOR_AUTO_CONNECT:J = 0x1388L

.field private static final MAX_WAIT_TIME_FOR_FRAMEWORK:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "CachedBluetoothDevice"

.field private static final V:Z = true

.field private static workQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mA2dpConnectFristBDAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private mBtClassDrawable:I

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAttempted:J

.field private mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mInitiatedPairing:Z

.field private mIsConnectingErrorPossible:Z

.field private mIsPairingProcess:Z

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:S

.field private mUnPairingInProgress:Z

.field private mUpdateBtClassDrawable:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    .line 91
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairingProcess:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "00:1A:0E"

    aput-object v2, v1, v4

    const-string v2, "00:0B:24"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "00:03:89"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mA2dpConnectFristBDAddress:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 418
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 421
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use CachedBluetoothDevice without Bluetooth hardware"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 428
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    .line 429
    const v0, 0x7f020027

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 430
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 432
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 433
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 7
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v6, 0x0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    .line 91
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    .line 102
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairingProcess:Z

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "00:1A:0E"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "00:0B:24"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "00:03:89"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mA2dpConnectFristBDAddress:Ljava/util/ArrayList;

    .line 167
    new-instance v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 437
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    .line 438
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot use CachedBluetoothDevice without Bluetooth hardware"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 444
    iget-object v2, p2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 445
    iget-object v2, p2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 446
    iget-object v2, p2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    iput-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 448
    iget v2, p2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    iput v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 449
    iget-boolean v2, p2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 451
    iget-object v2, p2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 452
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 456
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairingProcess:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairingProcess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 408
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 411
    :cond_0
    return-void
.end method

.method private connectAllProfiles()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 617
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 619
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 622
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectAllProfiles :: Profile -----> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 627
    .local v2, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 628
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 629
    new-instance v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-direct {v3, v4, p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    goto :goto_0

    .line 632
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_1
    return-void
.end method

.method private connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 6
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    const/4 v4, 0x0

    const-string v5, "CachedBluetoothDevice"

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    move v2, v4

    .line 673
    :goto_0
    return v2

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 664
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 665
    .local v1, status:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 666
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    const/4 v2, 0x1

    goto :goto_0

    .line 669
    :cond_1
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v4

    .line 673
    goto :goto_0

    .line 671
    :cond_2
    const-string v2, "CachedBluetoothDevice"

    const-string v2, "Already connected"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private connectWithoutResettingTimer()V
    .locals 7

    .prologue
    const-string v6, "CachedBluetoothDevice"

    .line 578
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_2

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    move-result v4

    if-nez v4, :cond_2

    .line 582
    const-string v4, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1
    :goto_0
    return-void

    .line 588
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, preferredProfiles:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 594
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    const-string v4, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectWithoutResettingTimer :: Profile -----> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 596
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 598
    .local v3, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 599
    add-int/lit8 v1, v1, 0x1

    .line 603
    new-instance v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v5, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-direct {v4, v5, p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    goto :goto_1

    .line 608
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v3           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_4
    const-string v4, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of Preferred profiles = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-nez v1, :cond_1

    .line 611
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectAllProfiles()V

    goto :goto_0
.end method

.method private disconnectConnected(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 8
    .parameter "profile"

    .prologue
    .line 643
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v6, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    .line 645
    .local v5, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 646
    .local v1, cachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectedDevices()Ljava/util/Set;

    move-result-object v3

    .line 647
    .local v3, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v3, :cond_1

    .line 654
    :cond_0
    return-void

    .line 648
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 649
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 650
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_2

    .line 651
    new-instance v6, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v7, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-direct {v6, v7, v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    goto :goto_0
.end method

.method private disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 3
    .parameter "cachedDevice"
    .parameter "profile"

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 501
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 502
    .local v1, status:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 510
    :goto_0
    return v2

    .line 507
    :cond_0
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_0

    .line 510
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 1387
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 1388
    .local v0, callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 1390
    .end local v0           #callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    return-void
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 917
    return-void
.end method

.method private fetchName()V
    .locals 3

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 764
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default to address. Device has no name (yet) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 727
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 728
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 732
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 733
    return-void
.end method

.method private getOneOffSummary()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 1147
    const/4 v0, 0x0

    .local v0, isA2dpConnected:Z
    const/4 v4, 0x0

    .local v4, isHeadsetConnected:Z
    const/4 v5, 0x0

    .local v5, isHidConnected:Z
    const/4 v1, 0x0

    .local v1, isConnecting:Z
    const/4 v6, 0x0

    .local v6, isSAPConnected:Z
    const/4 v3, 0x0

    .local v3, isFTPConnected:Z
    const/4 v2, 0x0

    .line 1149
    .local v2, isDUNConnected:Z
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->SAP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1150
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->SAP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    .line 1152
    .local v7, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 1155
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1156
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    .line 1158
    .restart local v7       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 1161
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->FTP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1162
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->FTP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    .line 1164
    .restart local v7       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 1167
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1168
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    .line 1170
    .restart local v7       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v11, :cond_6

    move v1, v12

    .line 1172
    :goto_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 1175
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1176
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    .line 1178
    .restart local v7       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v11, :cond_7

    move v8, v12

    :goto_1
    or-int/2addr v1, v8

    .line 1180
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 1183
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_4
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1184
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    .line 1186
    .restart local v7       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v11, :cond_8

    move v8, v12

    :goto_2
    or-int/2addr v1, v8

    .line 1188
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 1192
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_5
    if-eqz v1, :cond_9

    .line 1194
    invoke-static {v11}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v8

    .line 1200
    :goto_3
    return v8

    .restart local v7       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_6
    move v1, v10

    .line 1170
    goto :goto_0

    :cond_7
    move v8, v10

    .line 1178
    goto :goto_1

    :cond_8
    move v8, v10

    .line 1186
    goto :goto_2

    .line 1196
    .end local v7           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_9
    if-nez v0, :cond_a

    if-nez v4, :cond_a

    if-nez v6, :cond_a

    if-nez v3, :cond_a

    if-eqz v2, :cond_b

    .line 1197
    :cond_a
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v8

    goto :goto_3

    :cond_b
    move v8, v10

    .line 1200
    goto :goto_3
.end method

.method private isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .locals 1
    .parameter "profile"

    .prologue
    .line 1252
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)Z
    .locals 7
    .parameter "job"

    .prologue
    const-string v6, "CachedBluetoothDevice"

    .line 268
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCommand : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, successful:Z
    iget-wide v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    .line 273
    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice$3;->$SwitchMap$com$android$settings$bluetooth$CachedBluetoothDevice$BluetoothCommand:[I

    iget-object v3, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 290
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command sent successfully:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_1
    return v1

    .line 275
    :pswitch_0
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v3, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v1

    .line 276
    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v3, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectInt(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v1

    .line 279
    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 282
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v1

    goto :goto_0

    .line 293
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framework rejected command immediately:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    :cond_2
    const-string v2, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job already has a sent time. Skip. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processCommands()V
    .locals 5

    .prologue
    .line 385
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCommands : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 388
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    .line 390
    .local v1, job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->processCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    .end local v1           #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    :cond_0
    return-void

    .line 400
    .restart local v1       #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private pruneQueue(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)Z
    .locals 12
    .parameter "job"

    .prologue
    const-wide/16 v9, 0x0

    const-string v11, "CachedBluetoothDevice"

    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, removedStaleItems:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    .local v2, now:J
    sget-object v5, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    .line 238
    .local v0, existingJob:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    sget-object v6, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    if-ne v5, v6, :cond_1

    .line 239
    iget-wide v5, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    sget-object v6, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v5, v5, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v6, v6, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    iget-object v6, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-ne v5, v6, :cond_1

    .line 244
    const-string v5, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of a pending disconnect. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 254
    :cond_1
    iget-wide v5, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->timeSent:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x61a8

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 256
    const-string v5, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout. Removing Job:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 258
    const/4 v4, 0x1

    .line 259
    goto :goto_0

    .line 262
    .end local v0           #existingJob:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    :cond_2
    return v4
.end method

.method private queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V
    .locals 5
    .parameter "job"

    .prologue
    const-string v1, "CachedBluetoothDevice"

    .line 210
    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 212
    :try_start_0
    const-string v2, "CachedBluetoothDevice"

    sget-object v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pruneQueue(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)Z

    move-result v0

    .line 217
    .local v0, processNow:Z
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queueCommand : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->processCommands()V

    .line 227
    :cond_1
    monitor-exit v1

    .line 228
    return-void

    .line 227
    .end local v0           #processNow:Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateProfiles()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v10, "CachedBluetoothDevice"

    .line 920
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 921
    .local v6, uuids:[Landroid/os/ParcelUuid;
    if-nez v6, :cond_0

    move v7, v9

    .line 991
    :goto_0
    return v7

    .line 924
    :cond_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v8, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->SAP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 925
    .local v5, sap_add:Z
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v8, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->FTP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 926
    .local v2, ftp_add:Z
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v8, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 930
    .local v1, dun_add:Z
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isA2dpConnectFirstPatch(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 931
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateProfilesForA2dpFirstPatch([Landroid/os/ParcelUuid;Ljava/util/List;)V

    .line 939
    :goto_1
    iput-boolean v11, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 943
    if-ne v5, v11, :cond_1

    .line 944
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "updateProfiles: add SAP."

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v8, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->SAP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_1
    if-ne v2, v11, :cond_2

    .line 948
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "updateProfiles: add FTP."

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v8, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->FTP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_2
    if-ne v1, v11, :cond_3

    .line 952
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "updateProfiles: add DUN."

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v8, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_3
    const-string v7, "CachedBluetoothDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating profiles for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v4, 0x0

    .line 961
    .local v4, printUuids:Z
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 963
    .local v0, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_6

    .line 964
    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eq v7, v8, :cond_4

    .line 966
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "headset classbits != uuid"

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v4, 0x1

    .line 970
    :cond_4
    invoke-virtual {v0, v11}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eq v7, v8, :cond_5

    .line 972
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "a2dp classbits != uuid"

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v4, 0x1

    .line 976
    :cond_5
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eq v7, v8, :cond_6

    .line 978
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "opp classbits != uuid"

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v4, 0x1

    .line 983
    :cond_6
    if-eqz v4, :cond_9

    .line 984
    if-eqz v0, :cond_7

    const-string v7, "CachedBluetoothDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_7
    const-string v7, "CachedBluetoothDevice"

    const-string v7, "UUID:"

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_9

    .line 987
    const-string v7, "CachedBluetoothDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 935
    .end local v0           #bluetoothClass:Landroid/bluetooth/BluetoothClass;
    .end local v3           #i:I
    .end local v4           #printUuids:Z
    :cond_8
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;Ljava/util/List;)V

    goto/16 :goto_1

    .restart local v0       #bluetoothClass:Landroid/bluetooth/BluetoothClass;
    .restart local v4       #printUuids:Z
    :cond_9
    move v7, v11

    .line 991
    goto/16 :goto_0
.end method


# virtual methods
.method public askDisconnect()V
    .locals 8

    .prologue
    .line 514
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 515
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 549
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 527
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    const v5, 0x7f0904f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 531
    :cond_2
    const v5, 0x7f0904ed

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$2;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 543
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1416
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    sub-int v0, v1, v2

    .line 1417
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 1433
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 1416
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1420
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v4

    :goto_4
    sub-int v0, v1, v2

    .line 1422
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 1420
    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    .line 1425
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_5
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_6
    sub-int v0, v1, v2

    .line 1426
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 1425
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 1429
    :cond_8
    iget-short v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 1430
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 1433
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 553
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "connect ---------->"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 557
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    .line 558
    return-void
.end method

.method public connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 638
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectConnected(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    .line 639
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    .line 640
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 488
    const-string v2, "CachedBluetoothDevice"

    const-string v3, "disconnect ---------->"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 490
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_0

    .line 492
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_0
    return-void
.end method

.method public disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 495
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    .line 496
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1400
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 1401
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClassDrawable()I
    .locals 8

    .prologue
    const v7, 0x7f020029

    const v6, 0x7f020028

    const v5, 0x7f020027

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 828
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    if-nez v1, :cond_0

    .line 829
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 906
    :goto_0
    return v1

    .line 832
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 835
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_3

    .line 836
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    .line 837
    .local v0, majorClass:I
    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 838
    const v1, 0x7f02002c

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 839
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_0

    .line 841
    :cond_1
    const/16 v1, 0x200

    if-ne v0, v1, :cond_2

    .line 842
    const v1, 0x7f020026

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 843
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_0

    .line 845
    :cond_2
    const/16 v1, 0x600

    if-ne v0, v1, :cond_4

    .line 846
    const v1, 0x7f02002e

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 847
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_0

    .line 851
    .end local v0           #majorClass:I
    :cond_3
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "mBtClass is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 856
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->PRINTER:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 857
    const v1, 0x7f02002e

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 858
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_0

    .line 860
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 861
    iput v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 862
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_0

    .line 864
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 865
    iput v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 866
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_0

    .line 870
    :cond_7
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "Device profile number = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_8
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_b

    .line 875
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 876
    iput v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 877
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 879
    :cond_9
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 880
    iput v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 881
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 884
    :cond_a
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x500

    if-ne v1, v2, :cond_b

    .line 885
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 896
    iput v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 899
    :goto_1
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 887
    :sswitch_0
    const v1, 0x7f02002a

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_1

    .line 890
    :sswitch_1
    const v1, 0x7f02002d

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_1

    .line 893
    :sswitch_2
    const v1, 0x7f02002b

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto :goto_1

    .line 904
    :cond_b
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 905
    iput v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    .line 906
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    goto/16 :goto_0

    .line 885
    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_2
    .end sparse-switch
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v0, connectableProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;>;"
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1244
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1248
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_1
    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()I
    .locals 6

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getOneOffSummary()I

    move-result v2

    .line 1121
    .local v2, oneOffSummary:I
    if-eqz v2, :cond_0

    move v5, v2

    .line 1137
    :goto_0
    return v5

    .line 1125
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1126
    .local v3, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v5, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 1128
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1130
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    .line 1133
    :cond_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    goto :goto_0

    .line 1137
    .end local v0           #connectionStatus:I
    .end local v3           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getPairingStatusSummary(I)I

    move-result v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isA2dpConnectFirstPatch(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mA2dpConnectFristBDAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    .local v0, A2dpConnectFristBDAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    const/4 v2, 0x1

    .line 572
    .end local v0           #A2dpConnectFristBDAddress:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 812
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 813
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 815
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusBusy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 824
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_0
    return v3

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    move v3, v5

    .line 821
    goto :goto_0

    .line 824
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    .line 800
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 801
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 803
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    const/4 v3, 0x1

    .line 808
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isHid()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidMouse()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClassDrawable:I

    const v1, 0x7f02002d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 564
    return-void
.end method

.method public onBondingStateChanged(I)V
    .locals 5
    .parameter "bondState"

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string v4, "CachedBluetoothDevice"

    .line 1032
    if-ne p1, v2, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1060
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 1063
    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 1064
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    .line 1065
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    if-eqz v1, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    const-string v1, "CachedBluetoothDevice"

    const-string v1, "SDP does not finished... so do not change the mInitiatedPairing."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1073
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    .line 1106
    :cond_2
    :goto_0
    return-void

    .line 1079
    :cond_3
    if-ne p1, v2, :cond_2

    .line 1080
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    .line 1083
    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    .line 1084
    .local v0, job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    if-eqz v0, :cond_2

    .line 1087
    iget-object v1, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->REMOVE_BOND:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    if-ne v1, v2, :cond_4

    .line 1090
    sget-object v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1091
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->processCommands()V

    .line 1094
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    if-nez v1, :cond_5

    .line 1097
    const-string v1, "CachedBluetoothDevice"

    const-string v1, "onBondingStateChanged unpairing was not in progress so unpair"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->REMOVE_BOND:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    goto :goto_0

    .line 1101
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    .line 1102
    const-string v1, "CachedBluetoothDevice"

    const-string v1, "onBondingStateChanged unPairing in progress was set"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClicked()V
    .locals 6

    .prologue
    .line 459
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "############  onClicked: mName = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->askDisconnect()V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 467
    .local v1, bondState:I
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 468
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 471
    :cond_2
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 473
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 478
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsPairingProcess:Z

    goto :goto_0

    .line 481
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/high16 v3, 0x1000

    .line 1313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1371
    :goto_0
    return-void

    .line 1315
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    .line 1325
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1326
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 1327
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    goto :goto_0

    .line 1330
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    .line 1335
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1336
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    goto :goto_0

    .line 1340
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1341
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1343
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1344
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_3

    .line 1346
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1347
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1349
    :cond_3
    const-class v2, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1350
    const-string v2, "device"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1351
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1356
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1357
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1358
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1359
    .restart local v0       #context:Landroid/content/Context;
    if-nez v0, :cond_4

    .line 1361
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1362
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1364
    :cond_4
    const-class v2, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1365
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1366
    const-string v2, "android.bluetooth.device.extra.NAME"

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1313
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1257
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 1264
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1266
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 1267
    const v3, 0x7f090519

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1270
    :cond_2
    const/4 v0, 0x0

    .line 1272
    .local v0, hasConnectableProfiles:Z
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 1273
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnectableProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1274
    const/4 v0, 0x1

    .line 1279
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1280
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1281
    const/4 v3, 0x3

    const v4, 0x7f090518

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1284
    :cond_5
    const v3, 0x7f09051b

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1294
    :goto_1
    if-eqz v0, :cond_0

    .line 1295
    const/4 v3, 0x5

    const v4, 0x7f09051c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1287
    :cond_6
    if-eqz v0, :cond_7

    .line 1288
    const v3, 0x7f090517

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1290
    :cond_7
    const v3, 0x7f09051a

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V
    .locals 9
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const-string v3, "CachedBluetoothDevice"

    .line 304
    sget-object v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 306
    :try_start_0
    const-string v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileStateChanged:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->convertState(I)I

    move-result v2

    .line 312
    .local v2, newState:I
    if-ne v2, v8, :cond_0

    .line 313
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    const-string v4, "CachedBluetoothDevice"

    const-string v5, "Henry : Profile Add"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 320
    :cond_0
    const-string v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Henry : new State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eq v2, v8, :cond_1

    if-ne v2, v7, :cond_8

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    if-eqz v4, :cond_2

    .line 327
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    .line 328
    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 335
    :cond_2
    sget-object v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    .line 336
    .local v1, job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    if-nez v1, :cond_3

    .line 337
    const-string v4, "CachedBluetoothDevice"

    const-string v5, "Henry : Job is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit v3

    .line 375
    .end local v1           #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    :goto_0
    return-void

    .line 339
    .restart local v1       #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    :cond_3
    iget-object v4, v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v4, v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 344
    const-string v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != head:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pruneQueue(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 349
    const-string v4, "CachedBluetoothDevice"

    const-string v5, "Henry : pruneQueue"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v3

    goto :goto_0

    .line 374
    .end local v1           #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    .end local v2           #newState:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 355
    .restart local v1       #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    .restart local v2       #newState:I
    :cond_4
    :try_start_1
    const-string v4, "CachedBluetoothDevice"

    const-string v5, "Henry : workQueue.poll()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 359
    :cond_5
    if-ne v2, v7, :cond_7

    .line 360
    const-string v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " disconnected. Remove all the pending connect commands."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 362
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;>;"
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    check-cast v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    .line 364
    .restart local v1       #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    iget-object v4, v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    sget-object v5, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    if-ne v4, v5, :cond_6

    iget-object v4, v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v4, v4, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 366
    const-string v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove connect command for profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 372
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;>;"
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->processCommands()V

    .line 374
    .end local v1           #job:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onUuidChanged()V
    .locals 6

    .prologue
    const-string v5, "CachedBluetoothDevice"

    .line 1007
    const-string v0, "CachedBluetoothDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUuidChanged: Time since last connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". mInitiatedPairing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 1014
    const-string v0, "CachedBluetoothDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUuidChanged: Time since last connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mInitiatedPairing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    if-eqz v0, :cond_1

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer()V

    .line 1027
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    .line 1028
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1029
    return-void
.end method

.method public pair()V
    .locals 4

    .prologue
    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    .line 699
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mInitiatedPairing:Z

    .line 707
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const v2, 0x7f090510

    const v3, 0x7f090511

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 770
    return-void
.end method

.method public refreshBtClass()V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 1000
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1001
    return-void
.end method

.method public refreshName()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 756
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 757
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1375
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    monitor-exit v0

    .line 1377
    return-void

    .line 1376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 1109
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 1110
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUpdateBtClassDrawable:Z

    .line 1114
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1116
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 750
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 752
    :cond_0
    return-void

    .line 748
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 788
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 789
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 790
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 792
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 778
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 779
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 781
    :cond_0
    return-void
.end method

.method public showConnectingError()V
    .locals 4

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 678
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 680
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const v2, 0x7f090510

    const v3, 0x7f090515

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 4

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 712
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mUnPairingInProgress:Z

    .line 714
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 716
    .local v0, state:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 720
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 721
    new-instance v1, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;

    sget-object v2, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;->REMOVE_BOND:Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/CachedBluetoothDevice$BluetoothJob;)V

    .line 723
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1381
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1382
    monitor-exit v0

    .line 1383
    return-void

    .line 1382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
