.class public abstract Lcom/android/server/KeyInputQueue;
.super Ljava/lang/Object;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KeyInputQueue$VirtualKey;,
        Lcom/android/server/KeyInputQueue$QueuedEvent;,
        Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;,
        Lcom/android/server/KeyInputQueue$FilterCallback;
    }
.end annotation


# static fields
.field static BAD_TOUCH_HACK:Z = false

.field static final DEBUG:Z = true

.field static final DEBUG_MOUSE:Z = false

.field static final DEBUG_POINTERS:Z = false

.field static final DEBUG_VIRTUAL_KEYS:Z = false

.field static final DOWNKEY_KEYWORD:I = 0x14

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field public static final FILTER_ABORT:I = -0x1

.field public static final FILTER_KEEP:I = 0x1

.field public static final FILTER_REMOVE:I = 0x0

.field static JUMPY_TOUCH_HACK:Z = false

.field static final KEY_180_MAP:[I = null

.field static final KEY_270_MAP:[I = null

.field static final KEY_90_MAP:[I = null

.field static final LEFTKEY_KEYWORD:I = 0x15

.field private static final MEASURE_LATENCY:Z = false

.field private static final MSG_SCREEN_CAPTURED_START:I = 0x12c

.field static final RIGHTKEY_KEYWORD:I = 0x16

.field static final SCREEN_CAPTURE_DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "KeyInputQueue"

.field static final UPKEY_KEYWORD:I = 0x13

.field static mUseFingerID:Z


# instance fields
.field private lt:Landroid/os/LatencyTimer;

.field mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mCacheCount:I

.field private mContext:Landroid/content/Context;

.field mCx:I

.field mCy:I

.field final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:I

.field mDisplayWidth:I

.field final mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mGlobalMetaState:I

.field private mHandler:Landroid/os/Handler;

.field final mHapticFeedbackCallback:Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;

.field mHaveGlobalMetaState:Z

.field final mIgnoredDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field mKeyRotationMap:[I

.field final mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mMouseCount:I

.field mOrientation:I

.field private mPowerManager:Landroid/os/PowerManager;

.field mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

.field mThread:Ljava/lang/Thread;

.field final mVirtualKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/KeyInputQueue$VirtualKey;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/android/server/KeyInputQueue;->BAD_TOUCH_HACK:Z

    .line 80
    sput-boolean v0, Lcom/android/server/KeyInputQueue;->JUMPY_TOUCH_HACK:Z

    .line 82
    sput-boolean v0, Lcom/android/server/KeyInputQueue;->mUseFingerID:Z

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/KeyInputQueue;->KEY_90_MAP:[I

    .line 120
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/KeyInputQueue;->KEY_180_MAP:[I

    .line 127
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/KeyInputQueue;->KEY_270_MAP:[I

    return-void

    .line 113
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 120
    :array_1
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 127
    :array_2
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;)V
    .locals 5
    .parameter "context"
    .parameter "hapticFeedbackCallback"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    .line 87
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mVirtualKeys:Ljava/util/ArrayList;

    .line 91
    iput v4, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    .line 92
    iput-boolean v4, p0, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    .line 99
    iput-object v2, p0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    .line 105
    iput v4, p0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    .line 106
    iput v4, p0, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    .line 107
    iput-object v2, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    .line 109
    iput-object v2, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 559
    new-instance v1, Lcom/android/server/KeyInputQueue$2;

    const-string v2, "InputDeviceReader"

    invoke-direct {v1, p0, v2}, Lcom/android/server/KeyInputQueue$2;-><init>(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mThread:Ljava/lang/Thread;

    .line 317
    iput-object p1, p0, Lcom/android/server/KeyInputQueue;->mContext:Landroid/content/Context;

    .line 319
    new-instance v1, Lcom/android/server/KeyInputQueue$1;

    invoke-direct {v1, p0}, Lcom/android/server/KeyInputQueue$1;-><init>(Lcom/android/server/KeyInputQueue;)V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mHandler:Landroid/os/Handler;

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x10d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/KeyInputQueue;->BAD_TOUCH_HACK:Z

    .line 342
    const v1, 0x10d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/KeyInputQueue;->JUMPY_TOUCH_HACK:Z

    .line 346
    const-string v1, "keyinputqueue.use_finger_id"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/KeyInputQueue;->mUseFingerID:Z

    .line 348
    iput-object p2, p0, Lcom/android/server/KeyInputQueue;->mHapticFeedbackCallback:Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;

    .line 350
    invoke-direct {p0}, Lcom/android/server/KeyInputQueue;->readExcludedDevices()V

    .line 352
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mPowerManager:Landroid/os/PowerManager;

    .line 354
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "KeyInputQueue"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 356
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 358
    new-instance v1, Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-direct {v1}, Lcom/android/server/KeyInputQueue$QueuedEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 359
    new-instance v1, Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-direct {v1}, Lcom/android/server/KeyInputQueue$QueuedEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 360
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v2, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 361
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v2, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 363
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KeyInputQueue;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/RawInputEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/server/KeyInputQueue;->readEvent(Landroid/view/RawInputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/android/server/KeyInputQueue;->monitorVirtualKey(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/android/server/KeyInputQueue;->generateVirtualKeyDown(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/KeyInputQueue;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/KeyInputQueue;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/KeyInputQueue;I)Lcom/android/server/InputDevice;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->newInputDevice(I)Lcom/android/server/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->readVirtualKeys(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(IZI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Lcom/android/server/KeyInputQueue;->makeMetaState(IZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/android/server/KeyInputQueue;->addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/KeyInputQueue;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->rotateKeyCodeLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/KeyInputQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/KeyInputQueue;->computeGlobalMetaStateLocked()V

    return-void
.end method

.method public static native addExcludedDevice(Ljava/lang/String;)V
.end method

.method private addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V
    .locals 8
    .parameter "device"
    .parameter "whenNano"
    .parameter "flags"
    .parameter "classType"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 1576
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v3, v3, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-ne v3, v4, :cond_0

    move v2, v7

    .line 1578
    .local v2, poke:Z
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/KeyInputQueue;->obtainLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)Lcom/android/server/KeyInputQueue$QueuedEvent;

    move-result-object v0

    .line 1579
    .local v0, ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v1, v3, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1580
    .local v1, p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_1
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eq v1, v3, :cond_1

    iget-wide v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->whenNano:J

    iget-wide v5, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->whenNano:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1581
    iget-object v1, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_1

    .line 1576
    .end local v0           #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .end local v1           #p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .end local v2           #poke:Z
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 1584
    .restart local v0       #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .restart local v1       #p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .restart local v2       #poke:Z
    :cond_1
    iget-object v3, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1585
    iput-object v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1586
    iput-object v0, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1587
    iget-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v0, v3, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1588
    iput-boolean v7, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 1590
    if-eqz v2, :cond_2

    .line 1595
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1596
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1601
    :cond_2
    return-void
.end method

.method private computeGlobalMetaStateLocked()V
    .locals 3

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1387
    .local v0, i:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    .line 1388
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1389
    iget v2, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    iget v1, v1, Lcom/android/server/InputDevice;->mMetaKeysState:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    goto :goto_0

    .line 1391
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    .line 1392
    return-void
.end method

.method private findVirtualKey(Lcom/android/server/InputDevice;)Lcom/android/server/KeyInputQueue$VirtualKey;
    .locals 8
    .parameter "dev"

    .prologue
    const/4 v7, 0x0

    .line 1234
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mVirtualKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1235
    .local v0, N:I
    if-gtz v0, :cond_0

    move-object v4, v7

    .line 1256
    :goto_0
    return-object v4

    .line 1239
    :cond_0
    iget-object v1, p1, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .line 1240
    .local v1, absm:Lcom/android/server/InputDevice$MotionState;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1241
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mVirtualKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 1242
    .local v3, sb:Lcom/android/server/KeyInputQueue$VirtualKey;
    iget v4, p0, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/KeyInputQueue$VirtualKey;->computeHitRect(Lcom/android/server/InputDevice;II)V

    .line 1249
    iget-object v4, v1, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, v1, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/KeyInputQueue$VirtualKey;->checkHit(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 1252
    goto :goto_0

    .line 1240
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #sb:Lcom/android/server/KeyInputQueue$VirtualKey;
    :cond_2
    move-object v4, v7

    .line 1256
    goto :goto_0
.end method

.method private generateVirtualKeyDown(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z
    .locals 12
    .parameter "di"
    .parameter "ev"
    .parameter "curTime"
    .parameter "curTimeNano"

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->isInsideDisplay(Lcom/android/server/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    const/4 v0, 0x0

    .line 1307
    :goto_0
    return v0

    .line 1267
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->findVirtualKey(Lcom/android/server/InputDevice;)Lcom/android/server/KeyInputQueue$VirtualKey;

    move-result-object v11

    .line 1268
    .local v11, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    if-eqz v11, :cond_1

    .line 1269
    iget-object v10, p1, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .line 1270
    .local v10, ms:Lcom/android/server/InputDevice$MotionState;
    iput-object v11, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 1271
    iget v0, p1, Lcom/android/server/InputDevice;->id:I

    iget v1, v11, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    invoke-static {v0, v1}, Lcom/android/server/KeyInputQueue;->scancodeToKeycode(II)I

    move-result v0

    iput v0, v11, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    .line 1272
    iget v0, v10, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    iput v0, v10, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 1273
    iput-wide p3, p1, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 1277
    iget-wide v1, p1, Lcom/android/server/InputDevice;->mKeyDownTime:J

    const/4 v5, 0x1

    iget v6, v11, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    const/4 v7, 0x0

    iget v8, v11, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    const/16 v9, 0x40

    move-object v0, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v9}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v6

    .line 1280
    .local v6, event:Landroid/view/KeyEvent;
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mHapticFeedbackCallback:Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;

    invoke-interface {v0, v6}, Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;->virtualKeyFeedback(Landroid/view/KeyEvent;)V

    .line 1281
    iget v4, p2, Landroid/view/RawInputEvent;->flags:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/KeyInputQueue;->addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1307
    .end local v6           #event:Landroid/view/KeyEvent;
    .end local v10           #ms:Lcom/android/server/InputDevice$MotionState;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static native getAbsoluteInfo(IILcom/android/server/InputDevice$AbsoluteInfo;)Z
.end method

.method public static native getDeviceClasses(I)I
.end method

.method public static native getDeviceName(I)Ljava/lang/String;
.end method

.method private getInputDeviceLocked(I)Lcom/android/server/InputDevice;
    .locals 1
    .parameter "deviceId"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/InputDevice;

    return-object p0
.end method

.method public static native getSwitchState(I)I
.end method

.method public static native getSwitchState(II)I
.end method

.method public static native hasKeys([I[Z)Z
.end method

.method private isInsideDisplay(Lcom/android/server/InputDevice;)Z
    .locals 7
    .parameter "dev"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1212
    iget-object v1, p1, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 1213
    .local v1, absx:Lcom/android/server/InputDevice$AbsoluteInfo;
    iget-object v2, p1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    .line 1214
    .local v2, absy:Lcom/android/server/InputDevice$AbsoluteInfo;
    iget-object v0, p1, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .line 1215
    .local v0, absm:Lcom/android/server/InputDevice$MotionState;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v3, v5

    .line 1230
    :goto_0
    return v3

    .line 1219
    :cond_1
    iget-object v3, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    aget v3, v3, v6

    iget v4, v1, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    aget v3, v3, v6

    iget v4, v1, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    if-gt v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    aget v3, v3, v5

    iget v4, v2, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    aget v3, v3, v5

    iget v4, v2, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    if-gt v3, v4, :cond_2

    move v3, v5

    .line 1227
    goto :goto_0

    :cond_2
    move v3, v6

    .line 1230
    goto :goto_0
.end method

.method private loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;
    .locals 5
    .parameter "id"
    .parameter "channel"
    .parameter "name"

    .prologue
    const-string v4, "KeyInputQueue"

    const-string v3, "  "

    .line 1640
    new-instance v0, Lcom/android/server/InputDevice$AbsoluteInfo;

    invoke-direct {v0}, Lcom/android/server/InputDevice$AbsoluteInfo;-><init>()V

    .line 1641
    .local v0, info:Lcom/android/server/InputDevice$AbsoluteInfo;
    invoke-static {p1, p2, v0}, Lcom/android/server/KeyInputQueue;->getAbsoluteInfo(IILcom/android/server/InputDevice$AbsoluteInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    if-eq v1, v2, :cond_0

    .line 1643
    const-string v1, "KeyInputQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->flat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fuzz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->fuzz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget v1, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move-object v1, v0

    .line 1651
    :goto_0
    return-object v1

    .line 1650
    :cond_0
    const-string v1, "KeyInputQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unknown values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final makeMetaState(IZI)I
    .locals 3
    .parameter "keycode"
    .parameter "down"
    .parameter "old"

    .prologue
    .line 1355
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v2, p2

    .line 1382
    :goto_0
    return v2

    .line 1357
    :pswitch_1
    const/16 v0, 0x10

    .line 1374
    .local v0, mask:I
    :goto_1
    if-eqz p1, :cond_2

    or-int v2, p2, v0

    :goto_2
    and-int/lit8 v1, v2, -0x4

    .line 1376
    .local v1, result:I
    and-int/lit8 v2, v1, 0x30

    if-eqz v2, :cond_0

    .line 1377
    or-int/lit8 v1, v1, 0x2

    .line 1379
    :cond_0
    and-int/lit16 v2, v1, 0xc0

    if-eqz v2, :cond_1

    .line 1380
    or-int/lit8 v1, v1, 0x1

    :cond_1
    move v2, v1

    .line 1382
    goto :goto_0

    .line 1360
    .end local v0           #mask:I
    .end local v1           #result:I
    :pswitch_2
    const/16 v0, 0x20

    .line 1361
    .restart local v0       #mask:I
    goto :goto_1

    .line 1363
    .end local v0           #mask:I
    :pswitch_3
    const/16 v0, 0x40

    .line 1364
    .restart local v0       #mask:I
    goto :goto_1

    .line 1366
    .end local v0           #mask:I
    :pswitch_4
    const/16 v0, 0x80

    .line 1367
    .restart local v0       #mask:I
    goto :goto_1

    .line 1369
    .end local v0           #mask:I
    :pswitch_5
    const/4 v0, 0x4

    .line 1370
    .restart local v0       #mask:I
    goto :goto_1

    .line 1374
    :cond_2
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v2, p2

    goto :goto_2

    .line 1355
    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private monitorVirtualKey(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z
    .locals 21
    .parameter "di"
    .parameter "ev"
    .parameter "curTime"
    .parameter "curTimeNano"

    .prologue
    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    move-object/from16 v20, v0

    .line 1313
    .local v20, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    if-nez v20, :cond_0

    .line 1314
    const/4 v2, 0x0

    .line 1347
    :goto_0
    return v2

    .line 1317
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v19, v0

    .line 1318
    .local v19, ms:Lcom/android/server/InputDevice$MotionState;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v2, v0

    if-gtz v2, :cond_1

    .line 1319
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 1320
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 1322
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    move-wide v3, v0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    move v10, v0

    const/16 v11, 0x40

    move-object/from16 v2, p1

    move-wide/from16 v5, p3

    invoke-static/range {v2 .. v11}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v8

    .line 1325
    .local v8, event:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mHapticFeedbackCallback:Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;

    move-object v2, v0

    invoke-interface {v2, v8}, Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;->virtualKeyFeedback(Landroid/view/KeyEvent;)V

    .line 1326
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/KeyInputQueue;->addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1328
    const/4 v2, 0x1

    goto :goto_0

    .line 1330
    .end local v8           #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/KeyInputQueue;->isInsideDisplay(Lcom/android/server/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1335
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 1337
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    move-wide v10, v0

    const/4 v14, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    move v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    move/from16 v17, v0

    const/16 v18, 0x60

    move-object/from16 v9, p1

    move-wide/from16 v12, p3

    invoke-static/range {v9 .. v18}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v8

    .line 1340
    .restart local v8       #event:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mHapticFeedbackCallback:Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;

    move-object v2, v0

    invoke-interface {v2, v8}, Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;->virtualKeyFeedback(Landroid/view/KeyEvent;)V

    .line 1341
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/KeyInputQueue;->addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1343
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 1344
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1347
    .end local v8           #event:Landroid/view/KeyEvent;
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static native nativeGetKeycodeState(I)I
.end method

.method public static native nativeGetKeycodeState(II)I
.end method

.method public static native nativeGetScancodeState(I)I
.end method

.method public static native nativeGetScancodeState(II)I
.end method

.method private newInputDevice(I)Lcom/android/server/InputDevice;
    .locals 13
    .parameter "deviceId"

    .prologue
    const-string v12, "Y"

    const-string v11, "X"

    const-string v10, "Size"

    const-string v9, "Pressure"

    .line 1604
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getDeviceClasses(I)I

    move-result v2

    .line 1605
    .local v2, classes:I
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1606
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1607
    .local v4, absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v5, 0x0

    .line 1608
    .local v5, absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v6, 0x0

    .line 1609
    .local v6, absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v7, 0x0

    .line 1610
    .local v7, absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    if-eqz v2, :cond_0

    .line 1611
    const-string v0, "KeyInputQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device added: id=0x"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", name="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", classes="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_1

    .line 1615
    const/16 v0, 0x35

    const-string v1, "X"

    invoke-direct {p0, p1, v0, v11}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v4

    .line 1617
    const/16 v0, 0x36

    const-string v1, "Y"

    invoke-direct {p0, p1, v0, v12}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v5

    .line 1619
    const/16 v0, 0x30

    const-string v1, "Pressure"

    invoke-direct {p0, p1, v0, v9}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v6

    .line 1621
    const/16 v0, 0x32

    const-string v1, "Size"

    invoke-direct {p0, p1, v0, v10}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v7

    .line 1635
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/InputDevice;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/InputDevice;-><init>(IILjava/lang/String;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;)V

    return-object v0

    .line 1623
    :cond_1
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_0

    .line 1624
    const/4 v0, 0x0

    const-string v1, "X"

    invoke-direct {p0, p1, v0, v11}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v4

    .line 1626
    const/4 v0, 0x1

    const-string v1, "Y"

    invoke-direct {p0, p1, v0, v12}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v5

    .line 1628
    const/16 v0, 0x18

    const-string v1, "Pressure"

    invoke-direct {p0, p1, v0, v9}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v6

    .line 1630
    const/16 v0, 0x1c

    const-string v1, "Size"

    invoke-direct {p0, p1, v0, v10}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v7

    goto :goto_0
.end method

.method public static newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;
    .locals 13
    .parameter "device"
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "down"
    .parameter "keycode"
    .parameter "repeatCount"
    .parameter "scancode"
    .parameter "flags"

    .prologue
    .line 550
    new-instance v1, Landroid/view/KeyEvent;

    if-eqz p5, :cond_0

    const/16 p5, 0x0

    move/from16 v6, p5

    .end local p5
    :goto_0
    if-eqz p0, :cond_1

    move-object v0, p0

    iget v0, v0, Lcom/android/server/InputDevice;->mMetaKeysState:I

    move/from16 p5, v0

    move/from16 v9, p5

    :goto_1
    if-eqz p0, :cond_2

    iget p0, p0, Lcom/android/server/InputDevice;->id:I

    .end local p0
    move v10, p0

    :goto_2
    or-int/lit8 v12, p9, 0x8

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1

    .restart local p0
    .restart local p5
    :cond_0
    const/16 p5, 0x1

    move/from16 v6, p5

    goto :goto_0

    .end local p5
    :cond_1
    const/16 p5, 0x0

    move/from16 v9, p5

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    move v10, p0

    goto :goto_2
.end method

.method private obtainLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)Lcom/android/server/KeyInputQueue$QueuedEvent;
    .locals 3
    .parameter "device"
    .parameter "whenNano"
    .parameter "flags"
    .parameter "classType"
    .parameter "event"

    .prologue
    .line 1546
    iget v1, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    if-nez v1, :cond_0

    .line 1547
    new-instance v0, Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-direct {v0}, Lcom/android/server/KeyInputQueue$QueuedEvent;-><init>()V

    .line 1554
    .local v0, ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_0
    iput-object p1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    .line 1555
    iput-wide p2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->whenNano:J

    .line 1556
    iput p4, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    .line 1557
    iput p5, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    .line 1558
    iput-object p6, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    .line 1559
    return-object v0

    .line 1549
    .end local v0           #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1550
    .restart local v0       #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 1551
    iget-object v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1552
    iget v1, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    goto :goto_0
.end method

.method private static native readEvent(Landroid/view/RawInputEvent;)Z
.end method

.method private readExcludedDevices()V
    .locals 9

    .prologue
    const-string v6, "KeyInputQueue"

    .line 284
    const/4 v5, 0x0

    .line 286
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v0, confFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 289
    .local v1, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 290
    .end local v1           #confreader:Ljava/io/FileReader;
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 291
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 292
    const-string v6, "devices"

    invoke-static {v5, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 296
    const-string v6, "device"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v6

    if-nez v6, :cond_3

    .line 310
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    move-object v1, v2

    .line 312
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    :cond_2
    :goto_2
    return-void

    .line 299
    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :cond_3
    const/4 v6, 0x0

    :try_start_3
    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 301
    const-string v6, "KeyInputQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addExcludedDevice "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v4}, Lcom/android/server/KeyInputQueue;->addExcludedDevice(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 305
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 310
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2

    .line 307
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 308
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v6, "KeyInputQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while parsing \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 310
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_6
    throw v6

    :catch_3
    move-exception v7

    goto :goto_6

    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :catch_4
    move-exception v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    goto :goto_5

    .line 307
    .end local v1           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :catch_5
    move-exception v6

    move-object v3, v6

    move-object v1, v2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v1       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 305
    :catch_6
    move-exception v6

    goto :goto_3
.end method

.method private readVirtualKeys(Ljava/lang/String;)V
    .locals 13
    .parameter "deviceName"

    .prologue
    const-string v12, "KeyInputQueue"

    .line 241
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/board_properties/virtualkeys."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 244
    .local v5, isr:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v9, 0x800

    invoke-direct {v1, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 245
    .local v1, br:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, str:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 247
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, it:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x6

    sub-int v0, v9, v10

    .line 250
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-gt v4, v0, :cond_1

    .line 251
    const-string v9, "0x01"

    aget-object v10, v6, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 252
    const-string v9, "KeyInputQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown virtual key type at elem #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 250
    :goto_1
    add-int/lit8 v4, v4, 0x6

    goto :goto_0

    .line 257
    :cond_0
    :try_start_1
    new-instance v7, Lcom/android/server/KeyInputQueue$VirtualKey;

    invoke-direct {v7}, Lcom/android/server/KeyInputQueue$VirtualKey;-><init>()V

    .line 258
    .local v7, sb:Lcom/android/server/KeyInputQueue$VirtualKey;
    add-int/lit8 v9, v4, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    .line 259
    add-int/lit8 v9, v4, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/server/KeyInputQueue$VirtualKey;->centerx:I

    .line 260
    add-int/lit8 v9, v4, 0x3

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/server/KeyInputQueue$VirtualKey;->centery:I

    .line 261
    add-int/lit8 v9, v4, 0x4

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/server/KeyInputQueue$VirtualKey;->width:I

    .line 262
    add-int/lit8 v9, v4, 0x5

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/server/KeyInputQueue$VirtualKey;->height:I

    .line 267
    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mVirtualKeys:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 268
    .end local v7           #sb:Lcom/android/server/KeyInputQueue$VirtualKey;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 269
    .local v2, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v9, "KeyInputQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad number at region "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 275
    .end local v0           #N:I
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #i:I
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v6           #it:[Ljava/lang/String;
    .end local v8           #str:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 276
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v9, "KeyInputQueue"

    const-string v9, "No virtual keys found"

    invoke-static {v12, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 274
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #isr:Ljava/io/InputStreamReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 277
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #isr:Ljava/io/InputStreamReader;
    .end local v8           #str:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 278
    .local v2, e:Ljava/io/IOException;
    const-string v9, "KeyInputQueue"

    const-string v9, "Error reading virtual keys"

    invoke-static {v12, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private recycleLocked(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 1563
    iget-boolean v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    if-eqz v0, :cond_0

    .line 1564
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Event already in queue!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1566
    :cond_0
    iget v0, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1567
    iget v0, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    .line 1568
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1569
    iput-object p1, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 1572
    :cond_1
    return-void
.end method

.method private rotateKeyCodeLocked(I)I
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 1438
    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    .line 1439
    .local v2, map:[I
    if-eqz v2, :cond_1

    .line 1440
    array-length v0, v2

    .line 1441
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1442
    aget v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 1443
    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    .line 1447
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_1
    return v3

    .line 1441
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    move v3, p1

    .line 1447
    goto :goto_1
.end method

.method public static native scancodeToKeycode(II)I
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const-string v3, " (classes=0x"

    const-string v3, "    "

    const-string v3, ""

    const-string v3, " "

    .line 1656
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3

    .line 1657
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1658
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputDevice;

    .line 1659
    .local v0, dev:Lcom/android/server/InputDevice;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Device #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1660
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    iget-object v4, v0, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (classes=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    iget v4, v0, Lcom/android/server/InputDevice;->classes:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    const-string v4, "):"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mKeyDownTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    iget-wide v4, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v4, " mMetaKeysState="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    iget v4, v0, Lcom/android/server/InputDevice;->mMetaKeysState:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1667
    iget-object v4, v0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    if-eqz v4, :cond_0

    .line 1668
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  absX: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    invoke-virtual {v4, p1}, Lcom/android/server/InputDevice$AbsoluteInfo;->dump(Ljava/io/PrintWriter;)V

    .line 1669
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    :cond_0
    iget-object v4, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    if-eqz v4, :cond_1

    .line 1672
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  absY: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    invoke-virtual {v4, p1}, Lcom/android/server/InputDevice$AbsoluteInfo;->dump(Ljava/io/PrintWriter;)V

    .line 1673
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    :cond_1
    iget-object v4, v0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    if-eqz v4, :cond_2

    .line 1676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  absPressure: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1677
    iget-object v4, v0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    invoke-virtual {v4, p1}, Lcom/android/server/InputDevice$AbsoluteInfo;->dump(Ljava/io/PrintWriter;)V

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    :cond_2
    iget-object v4, v0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    if-eqz v4, :cond_3

    .line 1680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  absSize: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    iget-object v4, v0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    invoke-virtual {v4, p1}, Lcom/android/server/InputDevice$AbsoluteInfo;->dump(Ljava/io/PrintWriter;)V

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    :cond_3
    iget-object v4, v0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-boolean v4, v4, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    if-eqz v4, :cond_4

    .line 1684
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mAbs:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    iget-object v4, v0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/server/InputDevice$MotionState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1687
    :cond_4
    iget-object v4, v0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-boolean v4, v4, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    if-eqz v4, :cond_5

    .line 1688
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mRel:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    iget-object v4, v0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/server/InputDevice$MotionState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1657
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1692
    .end local v0           #dev:Lcom/android/server/InputDevice;
    :cond_6
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1694
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputDevice;

    .line 1695
    .restart local v0       #dev:Lcom/android/server/InputDevice;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Ignored Device #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1697
    iget-object v4, v0, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (classes=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    iget v4, v0, Lcom/android/server/InputDevice;->classes:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1701
    .end local v0           #dev:Lcom/android/server/InputDevice;
    :cond_7
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mVirtualKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 1703
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mVirtualKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 1704
    .local v2, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Virtual Key #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  scancode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1707
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  centerx="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->centerx:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1708
    const-string v4, " centery="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->centery:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1709
    const-string v4, " width="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->width:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1710
    const-string v4, " height="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->height:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  hitLeft="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->hitLeft:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1712
    const-string v4, " hitTop="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->hitTop:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1713
    const-string v4, " hitRight="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->hitRight:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1714
    const-string v4, " hitBottom="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->hitBottom:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1715
    iget-object v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->lastDevice:Lcom/android/server/InputDevice;

    if-eqz v4, :cond_8

    .line 1716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  lastDevice=#"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1717
    iget-object v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->lastDevice:Lcom/android/server/InputDevice;

    iget v4, v4, Lcom/android/server/InputDevice;->id:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1719
    :cond_8
    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    if-eqz v4, :cond_9

    .line 1720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  lastKeycode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    iget v4, v2, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1702
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1724
    .end local v2           #vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    :cond_a
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Default keyboard: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    const-string v4, "hw.keyboards.0.devname"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mGlobalMetaState="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    iget v4, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mHaveGlobalMetaState="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1729
    iget-boolean v4, p0, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1730
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mDisplayWidth="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1731
    iget v4, p0, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mDisplayHeight="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    iget v4, p0, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1733
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    iget v4, p0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1735
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    if-eqz v4, :cond_b

    .line 1736
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mPressedVirtualKey.scancode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1737
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    iget v4, v4, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1739
    :cond_b
    monitor-exit v3

    .line 1740
    return-void

    .line 1739
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method filterQueue(Lcom/android/server/KeyInputQueue$FilterCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v1

    .line 1528
    :try_start_0
    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v0, v2, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1529
    .local v0, cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_0
    iget-object v2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v2, :cond_0

    .line 1530
    invoke-interface {p1, v0}, Lcom/android/server/KeyInputQueue$FilterCallback;->filterEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1538
    :goto_1
    iget-object v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_0

    .line 1532
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v3, v2, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1533
    iget-object v2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v3, v2, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_1

    .line 1540
    .end local v0           #cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1536
    .restart local v0       #cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :pswitch_1
    :try_start_1
    monitor-exit v1

    .line 1541
    :goto_2
    return-void

    .line 1540
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1530
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDPadKeycodeState(I)I
    .locals 6
    .parameter "code"

    .prologue
    .line 512
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v4

    .line 513
    :try_start_0
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 514
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 515
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    .line 516
    .local v1, dev:Lcom/android/server/InputDevice;
    iget v5, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_0

    .line 517
    iget v5, v1, Lcom/android/server/InputDevice;->id:I

    invoke-static {v5, p1}, Lcom/android/server/KeyInputQueue;->nativeGetKeycodeState(II)I

    move-result v3

    .line 518
    .local v3, res:I
    if-lez v3, :cond_0

    .line 519
    monitor-exit v4

    move v4, v3

    .line 525
    .end local v1           #dev:Lcom/android/server/InputDevice;
    .end local v3           #res:I
    :goto_1
    return v4

    .line 514
    .restart local v1       #dev:Lcom/android/server/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v1           #dev:Lcom/android/server/InputDevice;
    :cond_1
    monitor-exit v4

    .line 525
    const/4 v4, 0x0

    goto :goto_1

    .line 523
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getDPadScancodeState(I)I
    .locals 6
    .parameter "code"

    .prologue
    .line 454
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v4

    .line 455
    :try_start_0
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 456
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 457
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    .line 458
    .local v1, dev:Lcom/android/server/InputDevice;
    iget v5, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_0

    .line 459
    iget v5, v1, Lcom/android/server/InputDevice;->id:I

    invoke-static {v5, p1}, Lcom/android/server/KeyInputQueue;->nativeGetScancodeState(II)I

    move-result v3

    .line 460
    .local v3, res:I
    if-lez v3, :cond_0

    .line 461
    monitor-exit v4

    move v4, v3

    .line 467
    .end local v1           #dev:Lcom/android/server/InputDevice;
    .end local v3           #res:I
    :goto_1
    return v4

    .line 456
    .restart local v1       #dev:Lcom/android/server/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v1           #dev:Lcom/android/server/InputDevice;
    :cond_1
    monitor-exit v4

    .line 467
    const/4 v4, 0x0

    goto :goto_1

    .line 465
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getEvent(J)Lcom/android/server/KeyInputQueue$QueuedEvent;
    .locals 11
    .parameter "timeoutMS"

    .prologue
    .line 1460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1461
    .local v0, begin:J
    add-long v2, v0, p1

    .line 1462
    .local v2, end:J
    move-wide v4, v0

    .line 1463
    .local v4, now:J
    iget-object v7, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v7

    .line 1464
    :cond_0
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v8, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v9, :cond_1

    cmp-long v8, v2, v4

    if-lez v8, :cond_1

    .line 1466
    :try_start_1
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1467
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    sub-long v9, v2, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1471
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1472
    cmp-long v8, v0, v4

    if-lez v8, :cond_0

    .line 1473
    move-wide v0, v4

    goto :goto_0

    .line 1476
    :cond_1
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v8, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-ne v8, v9, :cond_2

    .line 1477
    const/4 v8, 0x0

    monitor-exit v7

    move-object v7, v8

    .line 1483
    :goto_2
    return-object v7

    .line 1479
    :cond_2
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v6, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1480
    .local v6, p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, v6, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v9, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1481
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v8, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v9, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1482
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 1483
    monitor-exit v7

    move-object v7, v6

    goto :goto_2

    .line 1484
    .end local v6           #p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1469
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 379
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3

    .line 380
    const/4 v4, 0x1

    :try_start_0
    iput v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 381
    const/4 v4, 0x1

    iput v4, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 382
    const/4 v4, 0x1

    iput v4, p1, Landroid/content/res/Configuration;->navigation:I

    .line 384
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 385
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 386
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    .line 387
    .local v1, d:Lcom/android/server/InputDevice;
    if-eqz v1, :cond_2

    .line 388
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 389
    const/4 v4, 0x3

    iput v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 393
    :cond_0
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 394
    const/4 v4, 0x2

    iput v4, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 398
    :cond_1
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 399
    const/4 v4, 0x3

    iput v4, p1, Landroid/content/res/Configuration;->navigation:I

    .line 385
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_3
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 403
    const/4 v4, 0x2

    iput v4, p1, Landroid/content/res/Configuration;->navigation:I

    goto :goto_1

    .line 409
    .end local v0           #N:I
    .end local v1           #d:Lcom/android/server/InputDevice;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    return-void
.end method

.method getInputDevice(I)Lcom/android/server/InputDevice;
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 1403
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->getInputDeviceLocked(I)Lcom/android/server/InputDevice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeycodeState(I)I
    .locals 3
    .parameter "code"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 473
    .local v0, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    if-eqz v0, :cond_0

    .line 474
    iget v2, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    if-ne v2, p1, :cond_0

    .line 475
    const/4 v2, 0x2

    monitor-exit v1

    move v1, v2

    .line 478
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->nativeGetKeycodeState(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 479
    .end local v0           #vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getKeycodeState(II)I
    .locals 3
    .parameter "deviceId"
    .parameter "code"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 485
    .local v0, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    if-eqz v0, :cond_0

    .line 486
    iget v2, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->lastKeycode:I

    if-ne v2, p2, :cond_0

    .line 487
    const/4 v2, 0x2

    monitor-exit v1

    move v1, v2

    .line 490
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->nativeGetKeycodeState(II)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 491
    .end local v0           #vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getScancodeState(I)I
    .locals 3
    .parameter "code"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 415
    .local v0, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    if-eqz v0, :cond_0

    .line 416
    iget v2, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    if-ne v2, p1, :cond_0

    .line 417
    const/4 v2, 0x2

    monitor-exit v1

    move v1, v2

    .line 420
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->nativeGetScancodeState(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 421
    .end local v0           #vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getScancodeState(II)I
    .locals 3
    .parameter "deviceId"
    .parameter "code"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mPressedVirtualKey:Lcom/android/server/KeyInputQueue$VirtualKey;

    .line 427
    .local v0, vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    if-eqz v0, :cond_0

    .line 428
    iget v2, v0, Lcom/android/server/KeyInputQueue$VirtualKey;->scancode:I

    if-ne v2, p2, :cond_0

    .line 429
    const/4 v2, 0x2

    monitor-exit v1

    move v1, v2

    .line 432
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->nativeGetScancodeState(II)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 433
    .end local v0           #vk:Lcom/android/server/KeyInputQueue$VirtualKey;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackballKeycodeState(I)I
    .locals 6
    .parameter "code"

    .prologue
    .line 495
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v4

    .line 496
    :try_start_0
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 497
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 498
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    .line 499
    .local v1, dev:Lcom/android/server/InputDevice;
    iget v5, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    .line 500
    iget v5, v1, Lcom/android/server/InputDevice;->id:I

    invoke-static {v5, p1}, Lcom/android/server/KeyInputQueue;->nativeGetKeycodeState(II)I

    move-result v3

    .line 501
    .local v3, res:I
    if-lez v3, :cond_0

    .line 502
    monitor-exit v4

    move v4, v3

    .line 508
    .end local v1           #dev:Lcom/android/server/InputDevice;
    .end local v3           #res:I
    :goto_1
    return v4

    .line 497
    .restart local v1       #dev:Lcom/android/server/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 506
    .end local v1           #dev:Lcom/android/server/InputDevice;
    :cond_1
    monitor-exit v4

    .line 508
    const/4 v4, 0x0

    goto :goto_1

    .line 506
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getTrackballScancodeState(I)I
    .locals 6
    .parameter "code"

    .prologue
    .line 437
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v4

    .line 438
    :try_start_0
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 439
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 440
    iget-object v5, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    .line 441
    .local v1, dev:Lcom/android/server/InputDevice;
    iget v5, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    .line 442
    iget v5, v1, Lcom/android/server/InputDevice;->id:I

    invoke-static {v5, p1}, Lcom/android/server/KeyInputQueue;->nativeGetScancodeState(II)I

    move-result v3

    .line 443
    .local v3, res:I
    if-lez v3, :cond_0

    .line 444
    monitor-exit v4

    move v4, v3

    .line 450
    .end local v1           #dev:Lcom/android/server/InputDevice;
    .end local v3           #res:I
    :goto_1
    return v4

    .line 439
    .restart local v1       #dev:Lcom/android/server/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v1           #dev:Lcom/android/server/InputDevice;
    :cond_1
    monitor-exit v4

    .line 450
    const/4 v4, 0x0

    goto :goto_1

    .line 448
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method hasEvents()Z
    .locals 3

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 1452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v1, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasKeyUpEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "origEvent"

    .prologue
    const/4 v5, 0x1

    .line 1492
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3

    .line 1493
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1494
    .local v2, keyCode:I
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v0, v4, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 1495
    .local v0, cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_0
    iget-object v4, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v4, :cond_1

    .line 1496
    iget v4, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    if-ne v4, v5, :cond_0

    .line 1497
    iget-object v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    .line 1498
    .local v1, ke:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1500
    monitor-exit v3

    move v3, v5

    .line 1507
    .end local v1           #ke:Landroid/view/KeyEvent;
    :goto_1
    return v3

    .line 1503
    :cond_0
    iget-object v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_0

    .line 1505
    :cond_1
    monitor-exit v3

    .line 1507
    const/4 v3, 0x0

    goto :goto_1

    .line 1505
    .end local v0           #cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .end local v2           #keyCode:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected onAllMiceDisconnectedEvent()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method abstract preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z
.end method

.method recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 1513
    :try_start_0
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v2, v2, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v2, v2, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    if-ne v1, v2, :cond_0

    .line 1514
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 1516
    :cond_0
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v2, v2, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v2, v2, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    if-ne v1, v2, :cond_1

    .line 1518
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 1519
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v1, v1, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1520
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v1, v1, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1522
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->recycleLocked(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 1523
    monitor-exit v0

    .line 1524
    return-void

    .line 1523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rotateKeyCode(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 1433
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->rotateKeyCodeLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDisplay(Landroid/view/Display;)V
    .locals 1
    .parameter "display"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    .line 372
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    .line 373
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    .line 374
    iget v0, p0, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/KeyInputQueue;->mCx:I

    .line 375
    iget v0, p0, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/KeyInputQueue;->mCy:I

    .line 376
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 1413
    :try_start_0
    iput p1, p0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    .line 1414
    packed-switch p1, :pswitch_data_0

    .line 1425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    .line 1428
    :goto_0
    monitor-exit v0

    .line 1429
    return-void

    .line 1416
    :pswitch_0
    sget-object v1, Lcom/android/server/KeyInputQueue;->KEY_90_MAP:[I

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    goto :goto_0

    .line 1428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1419
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/android/server/KeyInputQueue;->KEY_180_MAP:[I

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    goto :goto_0

    .line 1422
    :pswitch_2
    sget-object v1, Lcom/android/server/KeyInputQueue;->KEY_270_MAP:[I

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
