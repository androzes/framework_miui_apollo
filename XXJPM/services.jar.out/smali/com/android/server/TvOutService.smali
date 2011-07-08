.class public Lcom/android/server/TvOutService;
.super Landroid/os/ITvOutService$Stub;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TvOutService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_TVSTATUS:I = 0x0

.field static final DEFAULT_TVSYSTEM:I = 0x2

.field public static final LOCALE_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.locale.changed"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvOut-Observer"

.field static final TVSTATUS_OFF:I = 0x0

.field static final TVSTATUS_ON:I = 0x1

.field static final TVSYSTEM_NTSC:I = 0x1

.field static final TVSYSTEM_PAL:I = 0x2

.field private static mIsScreenOff:Z

.field private static mIsTvWaitResume:Z

.field private static mTvCableConnected:Z

.field private static mTvSuspend:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetNotification:Landroid/app/Notification;

.field final mLock:Ljava/lang/Object;

.field private mPlaySounds:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvStatus:I

.field private mTvSystem:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private tvout:Landroid/hardware/TvOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput v0, Lcom/android/server/TvOutService;->sRotation:I

    .line 80
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 81
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 83
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 95
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "1"

    .line 158
    invoke-direct {p0}, Landroid/os/ITvOutService$Stub;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 689
    new-instance v0, Lcom/android/server/TvOutService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TvOutService$2;-><init>(Lcom/android/server/TvOutService;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iput-object p1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    .line 162
    const-string v0, "persist.service.mount.playsnd"

    const-string v1, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TvOutService;->mPlaySounds:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->init()V

    .line 167
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    .line 169
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/server/TvOutService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvOutService$1;-><init>(Lcom/android/server/TvOutService;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->sRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvsystem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvstatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return p0
.end method

.method public static onRotationChanged(I)V
    .locals 5
    .parameter "rotation"

    .prologue
    .line 648
    const-string v0, "OnRotationChanged"

    .line 651
    .local v0, CCS_TAG:Ljava/lang/String;
    const-string v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v2

    .line 654
    .local v2, tvoutService:Landroid/os/ITvOutService;
    if-nez v2, :cond_1

    .line 655
    const-string v3, "TvOut-Observer"

    const-string v4, " setTvoutOrientation TvOutService Not running"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    if-eq v3, p0, :cond_0

    .line 663
    sput p0, Lcom/android/server/TvOutService;->sRotation:I

    .line 666
    :try_start_0
    invoke-interface {v2, p0}, Landroid/os/ITvOutService;->SetOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 401
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private tvOutSetImageString()V
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const v2, 0x1040354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v0}, Landroid/hardware/TvOut;->TvOutSetImageString(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method private updatescreensize()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method private updatetvstatus()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "TvOut-Observer"

    .line 533
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-nez v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 546
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    const-string v2, "state"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 555
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 595
    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v2, v5, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v2, v5, :cond_0

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v0       #intent1:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 575
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .restart local v1       #intent2:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    const-string v2, "state"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 584
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_0
.end method

.method private updatetvsystem()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget v1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetTvSystem(I)V

    .line 530
    return-void
.end method


# virtual methods
.method public CableConnected(Z)V
    .locals 2
    .parameter "Connected"

    .prologue
    const/4 v1, 0x1

    .line 209
    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 211
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-nez v0, :cond_2

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v1, :cond_1

    .line 226
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_0
.end method

.method public DisableTvOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 341
    invoke-direct {p0, v1}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 342
    sput-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 343
    sput-boolean v1, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 344
    return-void
.end method

.method public DisableTvOutForce()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    const-string v8, "h2w"

    const-string v7, "TvOut-Observer"

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    invoke-static {v0, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 310
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    invoke-static {v1, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 319
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 322
    invoke-direct {p0, v4}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 323
    sput-boolean v4, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 324
    sput-boolean v4, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 325
    return-void
.end method

.method public EnableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    .line 262
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 263
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 267
    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 271
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 272
    return-void
.end method

.method public EnableTvOutForce()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "TvOut-Observer"

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 284
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    const-string v2, "state"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 293
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 296
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 297
    invoke-direct {p0, v5}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 298
    return-void
.end method

.method public SetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 452
    return-void
.end method

.method public TvOutResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 496
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-ne v0, v2, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 500
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvOutResume(I)V

    .line 501
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 502
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 505
    :cond_0
    return-void
.end method

.method public TvOutSetImage(I)V
    .locals 1
    .parameter "paddr"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :cond_0
    return-void
.end method

.method public TvOutSuspend()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 469
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    if-ne v0, v2, :cond_1

    .line 471
    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvOutSuspend(Landroid/content/Context;)V

    .line 475
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 476
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 479
    :cond_1
    return-void
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const-string v0, "android.intent.action.locale.changed"

    return-object v0
.end method

.method init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    new-instance v2, Landroid/hardware/TvOut;

    invoke-direct {v2}, Landroid/hardware/TvOut;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    .line 193
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    .line 194
    iput v4, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    .line 195
    new-instance v1, Lcom/android/server/TvOutService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/TvOutService$SettingsObserver;-><init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V

    .line 196
    .local v1, settingsObserver:Lcom/android/server/TvOutService$SettingsObserver;
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tv_out"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    invoke-virtual {v1}, Lcom/android/server/TvOutService$SettingsObserver;->observe()V

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.locale.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/TvOutService;->setWakeMode(Landroid/content/Context;I)V

    .line 205
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, washeld:Z
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const/4 v1, 0x1

    .line 364
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 366
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 370
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 371
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvOut-Observer"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 374
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    .line 379
    :cond_2
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 380
    if-eqz v1, :cond_3

    .line 381
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 383
    :cond_3
    return-void
.end method

.method updateTVoutOnScreenOnOff()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 604
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-ne v0, v1, :cond_1

    .line 607
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v1, :cond_0

    .line 620
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_0
.end method
