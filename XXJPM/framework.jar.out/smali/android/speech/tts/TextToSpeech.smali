.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field public static final QUEUE_FLUSH:I

.field public static final SUCCESS:I


# instance fields
.field private mCachedParams:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITts:Landroid/speech/tts/ITts;

.field private mITtscallback:Landroid/speech/tts/ITtsCallback;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStartLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    .line 383
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    .line 384
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 385
    const-string v0, ""

    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 386
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 387
    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 406
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 407
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 408
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 410
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    .line 411
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, "rate"

    aput-object v1, v0, v2

    .line 412
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "language"

    aput-object v2, v0, v1

    .line 413
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "country"

    aput-object v2, v0, v1

    .line 414
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string/jumbo v2, "variant"

    aput-object v2, v0, v1

    .line 415
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string/jumbo v2, "streamType"

    aput-object v2, v0, v1

    .line 416
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string/jumbo v2, "utteranceId"

    aput-object v2, v0, v1

    .line 417
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "engine"

    aput-object v2, v0, v1

    .line 418
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "pitch"

    aput-object v2, v0, v1

    .line 423
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v3, v0, v1

    .line 424
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const-string v1, ""

    aput-object v3, v0, v4

    .line 425
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v3, v0, v1

    .line 426
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v3, v0, v1

    .line 427
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 429
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v3, v0, v1

    .line 430
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v3, v0, v1

    .line 431
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "100"

    aput-object v2, v0, v1

    .line 433
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 434
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    return-object p1
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-object p1
.end method

.method private initTts()V
    .locals 4

    .prologue
    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 441
    new-instance v1, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_TTS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.TTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 471
    return-void
.end method

.method private resetCachedParams()V
    .locals 3

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1276
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1277
    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "earcon"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 668
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    .line 670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 694
    :goto_0
    return v1

    .line 673
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 674
    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 675
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 677
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 679
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 680
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 694
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    .line 681
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 683
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 685
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 686
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .line 695
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 687
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 689
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 691
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 692
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addEarcon"

    .line 621
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    .line 623
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 647
    :goto_0
    return v1

    .line 626
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 627
    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 628
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 632
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 633
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    .line 634
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 636
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 638
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 639
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .line 648
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 640
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 642
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addEarcon"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 644
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 645
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 564
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    .line 566
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 590
    :goto_0
    return v1

    .line 569
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/speech/tts/ITts;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 570
    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 571
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 575
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 576
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 590
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    .line 577
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 579
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 581
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 582
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .line 591
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 583
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 585
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 587
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 588
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - addSpeech"

    .line 517
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 543
    :goto_0
    return v1

    .line 522
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/speech/tts/ITts;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 523
    :try_start_2
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 524
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 528
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 529
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 543
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v5

    goto :goto_0

    .line 530
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 532
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 534
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 535
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .line 544
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 536
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 538
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - addSpeech"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 540
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 541
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public areDefaultsEnforced()Z
    .locals 6

    .prologue
    const-string v3, "TextToSpeech.java - areDefaultsEnforced"

    .line 1416
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, defaultsEnforced:Z
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    .line 1419
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 1442
    .end local v0           #defaultsEnforced:Z
    .local v1, defaultsEnforced:I
    :goto_0
    return v1

    .line 1422
    .end local v1           #defaultsEnforced:I
    .restart local v0       #defaultsEnforced:Z
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->areDefaultsEnforced()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 1442
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_0

    .line 1423
    .end local v1           #defaultsEnforced:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1425
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1427
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1428
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1442
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2           #e:Landroid/os/RemoteException;
    :goto_1
    move v1, v0

    .restart local v1       #defaultsEnforced:I
    goto :goto_0

    .line 1429
    .end local v1           #defaultsEnforced:I
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 1431
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1433
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1434
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1442
    :try_start_6
    monitor-exit v3

    goto :goto_1

    .line 1444
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 1435
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 1437
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - areDefaultsEnforced"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1439
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1440
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1442
    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    .line 1377
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1378
    :try_start_0
    const-string v1, ""

    .line 1379
    .local v1, engineName:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    .line 1380
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 1403
    .end local v1           #engineName:Ljava/lang/String;
    .local v2, engineName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1383
    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4}, Landroid/speech/tts/ITts;->getDefaultEngine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 1403
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v2, v1

    .end local v1           #engineName:Ljava/lang/String;
    .restart local v2       #engineName:Ljava/lang/String;
    goto :goto_0

    .line 1384
    .end local v2           #engineName:Ljava/lang/String;
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1386
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1388
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1389
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1403
    :try_start_4
    monitor-exit v3

    goto :goto_1

    .line 1405
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #engineName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1390
    .restart local v1       #engineName:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1392
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1394
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1395
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1403
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1396
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 1398
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1400
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1401
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1403
    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x3

    const-string v2, "TextToSpeech.java - getLanguage"

    .line 1122
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1123
    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v3, :cond_0

    .line 1124
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v8

    .line 1159
    :goto_0
    return-object v2

    .line 1128
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_2

    .line 1129
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v3}, Landroid/speech/tts/ITts;->getLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, locStrings:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-ne v3, v5, :cond_1

    .line 1131
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 1133
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v8

    goto :goto_0

    .line 1136
    .end local v1           #locStrings:[Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/Locale;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 1140
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1142
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1144
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1145
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 1159
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v2

    move-object v2, v8

    goto :goto_0

    .line 1146
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1148
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1150
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1151
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .line 1160
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1152
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 1154
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v3, "TextToSpeech.java - getLanguage"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1156
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1157
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 9
    .parameter "loc"

    .prologue
    const-string v3, "TextToSpeech.java - isLanguageAvailable"

    .line 1174
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1175
    const/4 v1, -0x2

    .line 1176
    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    .line 1177
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .line 1201
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1180
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 1201
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 1182
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1184
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1186
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1187
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1201
    :try_start_4
    monitor-exit v3

    goto :goto_1

    .line 1203
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1188
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1190
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1192
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1193
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1201
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1194
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 1196
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - isLanguageAvailable"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1198
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1199
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1201
    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public isSpeaking()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "TextToSpeech.java - isSpeaking"

    .line 885
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v2, :cond_0

    .line 887
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 910
    :goto_0
    return v1

    .line 890
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v2}, Landroid/speech/tts/ITts;->isSpeaking()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :try_start_2
    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 891
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 895
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 896
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    .line 910
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 897
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 899
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 901
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 902
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V

    goto :goto_1

    .line 911
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 903
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 905
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "TextToSpeech.java - isSpeaking"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 907
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 908
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 8
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - playEarcon"

    .line 783
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 784
    const/4 v2, -0x1

    .line 785
    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    .line 786
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 820
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 789
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    if-eqz p3, :cond_2

    :try_start_1
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 790
    const-string/jumbo v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 791
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 792
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 794
    :cond_1
    const-string/jumbo v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 795
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 796
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 799
    .end local v1           #extra:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 819
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 800
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 802
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 804
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 805
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 819
    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4

    goto :goto_1

    .line 822
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 806
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 808
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 810
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 811
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 819
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 812
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 814
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v5, "TextToSpeech.java - playEarcon"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 816
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 817
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 819
    :try_start_8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4

    goto :goto_1

    .line 819
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 820
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .locals 11
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TextToSpeech.java - playSilence"

    .line 841
    iget-object v10, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v10

    .line 842
    const/4 v8, -0x1

    .line 843
    .local v8, result:I
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v0, :cond_0

    .line 844
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v8

    .line 873
    .end local v8           #result:I
    .local v9, result:I
    :goto_0
    return v9

    .line 847
    .end local v9           #result:I
    .restart local v8       #result:I
    :cond_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 849
    .local v7, extra:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 850
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v7, v0, v1

    .line 853
    .end local v7           #extra:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITts;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    .line 873
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v9, v8

    .end local v8           #result:I
    .restart local v9       #result:I
    goto :goto_0

    .line 854
    .end local v9           #result:I
    .restart local v8       #result:I
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 856
    .local v6, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 859
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 873
    :try_start_4
    monitor-exit v10

    goto :goto_1

    .line 875
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 860
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 862
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 865
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 873
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 866
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 868
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v0, "TextToSpeech.java - playSilence"

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 871
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 873
    :try_start_8
    monitor-exit v10

    goto :goto_1

    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 6
    .parameter "enginePackageName"

    .prologue
    const-string v3, "TextToSpeech.java - setEngineByPackageName"

    .line 1336
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1337
    const/4 v1, -0x1

    .line 1338
    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    .line 1339
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .line 1365
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1342
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    invoke-interface {v4, p1}, Landroid/speech/tts/ITts;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v1

    .line 1343
    if-nez v1, :cond_1

    .line 1344
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v5, 0xd

    aput-object p1, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1365
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 1346
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1348
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1350
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1351
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1365
    :try_start_4
    monitor-exit v3

    goto :goto_1

    .line 1367
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1352
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1354
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1356
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1357
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1365
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1358
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 1360
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - setEngineByPackageName"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1362
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1363
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1365
    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .locals 10
    .parameter "loc"

    .prologue
    const-string v6, ""

    const-string v6, "TextToSpeech.java - setLanguage"

    .line 1063
    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1064
    const/4 v3, -0x2

    .line 1065
    .local v3, result:I
    :try_start_0
    iget-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v7, :cond_0

    .line 1066
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .line 1109
    .end local v3           #result:I
    .local v4, result:I
    :goto_0
    return v4

    .line 1069
    .end local v4           #result:I
    .restart local v3       #result:I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 1076
    .local v5, variant:Ljava/lang/String;
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v8, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v7, v2, v0, v5, v8}, Landroid/speech/tts/ITts;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1077
    if-ltz v3, :cond_1

    .line 1078
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v2, v7, v8

    .line 1079
    const/4 v7, 0x1

    if-lt v3, v7, :cond_2

    .line 1080
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v0, v7, v8

    .line 1084
    :goto_1
    const/4 v7, 0x2

    if-lt v3, v7, :cond_3

    .line 1085
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    aput-object v5, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1109
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :goto_3
    move v4, v3

    .end local v3           #result:I
    .restart local v4       #result:I
    goto :goto_0

    .line 1082
    .end local v4           #result:I
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v3       #result:I
    .restart local v5       #variant:Ljava/lang/String;
    :cond_2
    :try_start_3
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1090
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1092
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1094
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1095
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1109
    :try_start_5
    monitor-exit v6

    goto :goto_3

    .line 1111
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 1087
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #language:Ljava/lang/String;
    .restart local v5       #variant:Ljava/lang/String;
    :cond_3
    :try_start_6
    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    aput-object v9, v7, v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1096
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v5           #variant:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 1098
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1100
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1101
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1109
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1102
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 1104
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_9
    const-string v7, "TextToSpeech.java - setLanguage"

    const-string v8, "IllegalStateException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1106
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1107
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1109
    :try_start_a
    monitor-exit v6

    goto :goto_3

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 7
    .parameter "listener"

    .prologue
    const-string v3, "TextToSpeech.java - registerCallback"

    .line 1289
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1290
    const/4 v1, -0x1

    .line 1291
    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    .line 1292
    monitor-exit v3

    move v2, v1

    .line 1322
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 1294
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    new-instance v4, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v4, p0, p1}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mITtscallback:Landroid/speech/tts/ITtsCallback;

    invoke-interface {v4, v5, v6}, Landroid/speech/tts/ITts;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 1322
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 1303
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1305
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1307
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1308
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1322
    :try_start_4
    monitor-exit v3

    goto :goto_1

    .line 1324
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1309
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1311
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1313
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1314
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1322
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1315
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 1317
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - registerCallback"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1319
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1320
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1322
    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public setPitch(F)I
    .locals 8
    .parameter "pitch"

    .prologue
    const-string v4, "TextToSpeech.java - setPitch"

    .line 1016
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1017
    const/4 v2, -0x1

    .line 1018
    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    .line 1019
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 1042
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 1024
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 1025
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 1026
    .local v1, p:I
    :try_start_1
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1027
    const/4 v2, 0x0

    .line 1042
    .end local v1           #p:I
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 1029
    .end local v3           #result:I
    .restart local v1       #p:I
    .restart local v2       #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1031
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1033
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1034
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1042
    :try_start_4
    monitor-exit v4

    goto :goto_1

    .line 1044
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #p:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1035
    .restart local v1       #p:I
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1037
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "TextToSpeech.java - setPitch"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1039
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1040
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1042
    :try_start_6
    monitor-exit v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public setSpeechRate(F)I
    .locals 9
    .parameter "speechRate"

    .prologue
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - setSpeechRate"

    .line 967
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 968
    const/4 v2, -0x1

    .line 969
    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    .line 970
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 997
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 973
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    cmpl-float v5, p1, v8

    if-lez v5, :cond_1

    .line 974
    const/high16 v5, 0x42c8

    mul-float/2addr v5, p1

    float-to-int v1, v5

    .line 975
    .local v1, rate:I
    :try_start_1
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 978
    cmpl-float v5, p1, v8

    if-lez v5, :cond_2

    .line 979
    const/4 v2, 0x0

    .line 997
    .end local v1           #rate:I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 981
    .end local v3           #result:I
    .restart local v1       #rate:I
    .restart local v2       #result:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 984
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 986
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 988
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 989
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 997
    :try_start_4
    monitor-exit v4

    goto :goto_2

    .line 999
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v1           #rate:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 990
    .restart local v1       #rate:I
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 992
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "TextToSpeech.java - setSpeechRate"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 994
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 995
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 997
    :try_start_6
    monitor-exit v4

    goto :goto_2

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 8
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "TextToSpeech.java - speak"

    .line 718
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 719
    const/4 v2, -0x1

    .line 720
    .local v2, result:I
    :try_start_0
    const-string v5, "TTS received: "

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    .line 722
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 760
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 725
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 726
    const-string/jumbo v5, "streamType"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 728
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v1, v5, v6

    .line 730
    :cond_1
    const-string/jumbo v5, "utteranceId"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 731
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 732
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 734
    :cond_2
    const-string v5, "engine"

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 735
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 736
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .line 739
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, p2, v7}, Landroid/speech/tts/ITts;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 759
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 740
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 744
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 745
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 759
    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4

    goto :goto_1

    .line 762
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 746
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 748
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 750
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 751
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 759
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 752
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 754
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v5, "TextToSpeech.java - speak"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 756
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 757
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 759
    :try_start_8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4

    goto :goto_1

    .line 759
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 760
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public stop()I
    .locals 6

    .prologue
    const-string v3, "TextToSpeech.java - stop"

    .line 922
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v3

    .line 923
    const/4 v1, -0x1

    .line 924
    .local v1, result:I
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v4, :cond_0

    .line 925
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .line 948
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 928
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/speech/tts/ITts;->stop(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 948
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v2, v1

    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 929
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 931
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 933
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 934
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 948
    :try_start_4
    monitor-exit v3

    goto :goto_1

    .line 950
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 935
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 937
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 939
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 940
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 948
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 941
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 943
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v4, "TextToSpeech.java - stop"

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 945
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 946
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 948
    :try_start_8
    monitor-exit v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 9
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v4, "TextToSpeech.java - synthesizeToFile"

    .line 1224
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1225
    const/4 v2, -0x1

    .line 1226
    .local v2, result:I
    :try_start_0
    iget-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    if-nez v5, :cond_0

    .line 1227
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 1263
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 1230
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1232
    const-string/jumbo v5, "utteranceId"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1233
    .local v1, extra:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1234
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v5, v6

    .line 1236
    :cond_1
    const-string v5, "engine"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #extra:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1237
    .restart local v1       #extra:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1238
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v1, v5, v6

    .line 1241
    .end local v1           #extra:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/speech/tts/TextToSpeech;->mCachedParams:[Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, p3}, Landroid/speech/tts/ITts;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_3

    move v2, v8

    .line 1262
    :goto_1
    :try_start_2
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move v3, v2

    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 1241
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_3
    const/4 v5, -0x1

    move v2, v5

    goto :goto_1

    .line 1243
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1245
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1247
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1248
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1262
    :try_start_4
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4

    goto :goto_2

    .line 1265
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1249
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 1251
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1253
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1254
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1262
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1255
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 1257
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v5, "TextToSpeech.java - synthesizeToFile"

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1259
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/speech/tts/TextToSpeech;->mStarted:Z

    .line 1260
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1262
    :try_start_8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4

    goto :goto_2

    .line 1262
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->resetCachedParams()V

    .line 1263
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method
