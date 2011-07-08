package com.android.launcher2.gadget; class Player {/*

.class public Lcom/android/launcher2/gadget/Player;
.super Landroid/widget/FrameLayout;
.source "Player.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Player$MusicUtils;,
        Lcom/android/launcher2/gadget/Player$FadeAnimation;,
        Lcom/android/launcher2/gadget/Player$AlbumHelper;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
    }
.end annotation


# instance fields
.field private mAlbumBg:Landroid/widget/ImageView;

.field private mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

.field private mAlbumImage:Landroid/widget/ImageView;

.field private mAlbumLyricWraper:Landroid/widget/FrameLayout;

.field private mArtistName:Landroid/widget/TextView;

.field private mArtistNameStr:Ljava/lang/String;

.field private mCurrentPos:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDefaultAlbumBg:Landroid/widget/ImageView;

.field private mDuration:J

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFavoriteSong:Z

.field private mIsInitGadget:Z

.field private mIsPlaying:Z

.field private mIsResume:Z

.field private mIsUpdateLyricAndTime:Z

.field private mLastDownY:F

.field private mLastUpdateTime:J

.field private mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

.field private mLyricWraper:Landroid/widget/ScrollView;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mProgressBg:Landroid/widget/FrameLayout;

.field private mProgressCurrent:Landroid/widget/ImageView;

.field private mProgressLoading:Landroid/widget/ImageView;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSv:Landroid/widget/SpectrumVisualizer;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:F

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackNameStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 78
    #v3=(Null);
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 438
    #p0=(Reference);
    new-instance v1, Lcom/android/launcher2/gadget/Player$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$1;-><init>(Lcom/android/launcher2/gadget/Player;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    .line 449
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    .line 495
    new-instance v1, Lcom/android/launcher2/gadget/Player$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/gadget/Player$2;-><init>(Lcom/android/launcher2/gadget/Player;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->setupViews()V

    .line 81
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->initReceiver()V

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 84
    .local v0, configuration:Landroid/view/ViewConfiguration;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    #v1=(Integer);
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    #v1=(Float);
    iput v1, p0, Lcom/android/launcher2/gadget/Player;->mTouchSlop:F

    .line 86
    new-instance v1, Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/gadget/Player$AlbumHelper;-><init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    .line 87
    new-instance v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;-><init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    .line 88
    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateLyricAndTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->checkException(Landroid/content/Intent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateTrack(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$AlbumHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/launcher2/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/launcher2/gadget/Player;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/gadget/Player;->mTouchSlop:F

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$4200(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumLyricWraper:Landroid/widget/FrameLayout;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    return-void
.end method

.method private checkException(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x0

    .line 348
    #v5=(LongLo);v6=(LongHi);
    const/4 v0, 0x0

    .line 349
    .local v0, errorState:Ljava/lang/String;
    #v0=(Null);
    const-string v3, "track"

    #v3=(Reference);
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, trackName:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, status:Ljava/lang/String;
    #v1=(Reference);
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    const-string v3, "unmounted"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 352
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v3=(Reference);
    const v4, 0x7f0c0063

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_1
    :goto_0
    #v0=(Reference);v3=(Conflicted);v4=(Conflicted);
    if-eqz v0, :cond_4

    .line 359
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mArtistName:Landroid/widget/TextView;

    const-string v4, ""

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->reset()V

    .line 363
    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 364
    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(J)V

    .line 365
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$900(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    .line 366
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$1000(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 367
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 368
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 369
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    .line 370
    const/4 v3, 0x1

    .line 372
    :goto_1
    #v3=(Boolean);v4=(Conflicted);
    return v3

    .line 353
    :cond_2
    #v0=(Null);v4=(Uninit);
    const-string v3, "removed"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v3=(Reference);
    const v4, 0x7f0c0062

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 355
    :cond_3
    #v0=(Null);v3=(Boolean);v4=(Uninit);
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v3=(Reference);
    const v4, 0x7f0c0061

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 372
    :cond_4
    #v3=(Conflicted);v4=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    .line 210
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 211
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 212
    return-void
.end method

.method private initReceiver()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, f:Landroid/content/IntentFilter;
    #v0=(Reference);
    const-string v2, "com.miui.player.playstatechanged"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    #v3=(Reference);
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "com.miui.player.init_gadget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsInitGadget:Z

    .line 103
    return-void
.end method

.method private lyricAndTimeNextRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 473
    #v2=(One);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    #v1=(Reference);
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, msg:Landroid/os/Message;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    #v1=(Reference);
    const-wide/16 v2, 0x32

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    #v1=(Boolean);v2=(One);v3=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mHandler:Landroid/os/Handler;

    #v1=(Reference);
    const-wide/16 v2, 0x1f4

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const-string v3, "-- : --"

    .line 376
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    #v0=(Reference);
    const-string v1, "-- : --"

    #v1=(Reference);
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 381
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const v1, 0x7f020062

    :goto_0
    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f020072

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    return-void

    .line 381
    :cond_0
    #v1=(Boolean);
    const v1, 0x7f020063

    #v1=(Integer);
    goto :goto_0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const v2, 0x7f080019

    .line 107
    #v2=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v0=(Reference);
    const v1, 0x7f03000c

    #v1=(Integer);
    invoke-static {v0, v1, p0}, Lcom/android/launcher2/gadget/Player;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    const v0, 0x7f080022

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f08002a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f08002c

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f08001b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f08002b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f08001f

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f080020

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f080021

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mArtistName:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f080024

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f080028

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f080016

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumLyricWraper:Landroid/widget/FrameLayout;

    .line 127
    const v0, 0x7f080017

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mDefaultAlbumBg:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mDefaultAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f080018

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f08001a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 135
    const v0, 0x7f080023

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    .line 136
    const v0, 0x7f080027

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f080026

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f080025

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    .line 139
    return-void
.end method

.method private showBuffering()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 391
    #v3=(LongLo);v4=(LongHi);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    #v0=(Reference);
    const v1, 0x7f0c0060

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v1=(Reference);
    const v2, 0x7f0c0068

    #v2=(Integer);
    invoke-static {v1, v3, v4, v2}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 394
    return-void
.end method

.method private updateBufferedProgress(J)V
    .locals 5
    .parameter "bufferPos"

    .prologue
    .line 415
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-lez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 417
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v1=(LongLo);
    cmp-long v1, p1, v1

    #v1=(Byte);
    if-gez v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);
    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 422
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 420
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    #v0=(Reference);v1=(Byte);
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateBufferedProgress(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 410
    const-string v2, "buffered_pos"

    #v2=(Reference);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 411
    .local v0, bufferPos:J
    #v0=(LongLo);v1=(LongHi);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateBufferedProgress(J)V

    .line 412
    return-void
.end method

.method private updateCurrentProgress(J)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 426
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-lez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 428
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    #v0=(Reference);
    iget-wide v1, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v1=(LongLo);
    cmp-long v1, p1, v1

    #v1=(Byte);
    if-gez v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);
    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 431
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    #v0=(Reference);v1=(Byte);
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateDrawingCache()V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 247
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 249
    :cond_1
    #v1=(Conflicted);
    return-void

    .line 247
    :cond_2
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private updateLyricAndTime()V
    .locals 6

    .prologue
    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 452
    .local v0, currentTime:J
    #v0=(LongLo);v1=(LongHi);
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v2=(Reference);
    iget-wide v3, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$1200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;J)V

    .line 455
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_1

    .line 456
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    #v2=(LongLo);
    iget-wide v4, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 457
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_1

    .line 458
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v2=(LongLo);
    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 461
    :cond_1
    #v2=(Conflicted);
    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-eqz v2, :cond_2

    .line 462
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateProgressBarAndTime()V

    .line 463
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->lyricAndTimeNextRefresh()V

    .line 464
    iput-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    .line 468
    :goto_0
    #v2=(Conflicted);
    return-void

    .line 466
    :cond_2
    #v2=(Boolean);
    const-wide/16 v2, -0x1

    #v2=(LongLo);
    iput-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mLastUpdateTime:J

    goto :goto_0
.end method

.method private updateMetaStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x4

    #v4=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    const/16 v3, 0x8

    .line 266
    #v3=(PosByte);
    const/4 v0, 0x0

    .line 267
    .local v0, metaStatus:I
    #v0=(Null);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$700(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 269
    or-int/lit8 v0, v0, 0x2

    .line 274
    :goto_0
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 276
    or-int/lit8 v0, v0, 0x1

    .line 281
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_2
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 272
    :cond_0
    #v0=(Null);v1=(Boolean);v2=(Null);
    and-int/lit8 v0, v0, -0x3

    #v0=(Integer);
    goto :goto_0

    .line 279
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 283
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    #v1=(Reference);
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mDefaultAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 289
    :pswitch_1
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    #v1=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mDefaultAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 295
    :pswitch_2
    #v1=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    #v1=(Reference);
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$800(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 300
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mDefaultAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 303
    :pswitch_3
    #v1=(Boolean);v2=(Null);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    #v1=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mDefaultAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$800(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mAlbumBg:Landroid/widget/ImageView;

    const/16 v2, 0x32

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_2

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgressBarAndTime()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    #v7=(LongLo);v8=(LongHi);
    const-wide/16 v5, 0x1f4

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    const v4, 0x7f0c0068

    .line 484
    #v4=(Integer);
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v0=(LongLo);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    add-long/2addr v2, v5

    div-long/2addr v2, v7

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    add-long/2addr v2, v5

    div-long/2addr v2, v7

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    #v0=(LongLo);v1=(LongHi);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 493
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method private updateSongStatus(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 315
    const-string v8, "current_time"

    #v8=(Reference);
    const-wide/16 v9, -0x1

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 317
    .local v1, currentTime:J
    #v1=(LongLo);v2=(LongHi);
    const-string v8, "current_system_time"

    #v8=(Reference);
    invoke-virtual {p1, v8, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 318
    .local v6, time:J
    #v6=(LongLo);v7=(LongHi);
    iget-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    #v8=(LongLo);
    sub-long v10, v1, v6

    #v10=(LongLo);v11=(LongHi);
    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mCurrentPos:J

    .line 319
    const-string v8, "total_time"

    #v8=(Reference);
    const-wide/16 v9, -0x1

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    iput-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    .line 320
    const-string v8, "playing"

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    #v8=(Boolean);
    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    .line 321
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    #v8=(Reference);
    iget-boolean v9, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    #v9=(Boolean);
    if-eqz v9, :cond_1

    const v9, 0x7f02006f

    :goto_0
    #v9=(Integer);
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    const-string v8, "favorite"

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    #v8=(Boolean);
    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 325
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    #v8=(Reference);
    iget-boolean v9, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    #v9=(Boolean);
    if-eqz v9, :cond_2

    const v9, 0x7f020062

    :goto_1
    #v9=(Integer);
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const-string v8, "buffer"

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 330
    .local v4, isBuffering:Z
    #v4=(Boolean);
    const-string v8, "block"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 331
    .local v3, isBlocking:Z
    #v3=(Boolean);
    iget-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    #v8=(Boolean);
    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 333
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 334
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 336
    const/16 v0, 0x64

    .line 337
    .local v0, MAX_INVALID_DURATION:I
    #v0=(PosByte);
    if-nez v4, :cond_0

    iget-wide v8, p0, Lcom/android/launcher2/gadget/Player;->mDuration:J

    #v8=(LongLo);v9=(LongHi);
    const-wide/16 v10, 0x64

    #v10=(LongLo);
    cmp-long v8, v8, v10

    #v8=(Byte);
    if-gtz v8, :cond_4

    :cond_0
    #v9=(Conflicted);v10=(Conflicted);
    iget-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsInitGadget:Z

    #v8=(Boolean);
    if-nez v8, :cond_4

    const/4 v8, 0x1

    #v8=(One);
    move v5, v8

    .line 338
    .local v5, isShowBuffering:Z
    :goto_3
    #v5=(Boolean);v8=(Boolean);
    if-eqz v5, :cond_5

    .line 339
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->showBuffering()V

    .line 343
    :goto_4
    const/4 v8, 0x0

    #v8=(Null);
    iput-boolean v8, p0, Lcom/android/launcher2/gadget/Player;->mIsInitGadget:Z

    .line 344
    return-void

    .line 321
    .end local v0           #MAX_INVALID_DURATION:I
    .end local v3           #isBlocking:Z
    .end local v4           #isBuffering:Z
    .end local v5           #isShowBuffering:Z
    :cond_1
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v8=(Reference);v9=(Boolean);v10=(LongHi);
    const v9, 0x7f020072

    #v9=(Integer);
    goto :goto_0

    .line 325
    :cond_2
    #v9=(Boolean);
    const v9, 0x7f020063

    #v9=(Integer);
    goto :goto_1

    .line 331
    .restart local v3       #isBlocking:Z
    .restart local v4       #isBuffering:Z
    :cond_3
    #v3=(Boolean);v4=(Boolean);v8=(Boolean);v9=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_2

    .line 337
    .restart local v0       #MAX_INVALID_DURATION:I
    :cond_4
    #v0=(PosByte);v8=(Byte);v9=(Conflicted);v10=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    move v5, v8

    #v5=(Null);
    goto :goto_3

    .line 341
    .restart local v5       #isShowBuffering:Z
    :cond_5
    #v5=(Boolean);v8=(Boolean);
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateProgressBarAndTime()V

    goto :goto_4
.end method

.method private updateSpectrumVisualizer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    #v2=(Null);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 253
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsUpdateLyricAndTime:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/SpectrumVisualizer;->getVisibility()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 258
    :goto_1
    #v1=(PosByte);
    return-void

    :cond_0
    #v1=(Boolean);
    move v1, v2

    .line 252
    #v1=(Null);
    goto :goto_0

    .line 256
    :cond_1
    #v0=(Integer);v1=(PosByte);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mSv:Landroid/widget/SpectrumVisualizer;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_1
.end method

.method private updateTrack(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 399
    #v3=(Null);
    const-string v0, "track"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mTrackName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mArtistName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Player$MusicUtils;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/gadget/Player;->updateCurrentProgress(J)V

    .line 407
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const-string v4, "from_widget"

    .line 142
    #v4=(Reference);
    const/4 v0, 0x0

    .line 143
    .local v0, intent:Landroid/content/Intent;
    #v0=(Null);
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #v1=(Integer);
    sparse-switch v1, :sswitch_data_0

    .line 191
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 145
    :sswitch_0
    #v0=(Null);v1=(Integer);v2=(Uninit);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.music.EDIT"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "playlist"

    const-string v2, "nowplaying"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x400

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const-string v1, "from_widget"

    #v1=(Reference);
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :sswitch_1
    #v0=(Null);v1=(Integer);v2=(Uninit);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.player.musicservicecommand.previous"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 159
    :sswitch_2
    #v0=(Null);v1=(Integer);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.player.musicservicecommand.togglepause"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const v2, 0x7f020072

    :goto_1
    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    #v2=(Boolean);
    const v2, 0x7f02006f

    #v2=(Integer);
    goto :goto_1

    .line 166
    :sswitch_3
    #v0=(Null);v1=(Integer);v2=(Uninit);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.player.musicservicecommand.next"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 173
    :sswitch_4
    #v0=(Null);v1=(Integer);
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsPlaying:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 174
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.music.NOW_PLAYING"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_2
    #v0=(Reference);
    const-string v1, "from_widget"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :cond_1
    #v0=(Null);v1=(Boolean);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.music.MEDIA_PLAYER"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    goto :goto_2

    .line 183
    :sswitch_5
    #v0=(Null);v1=(Integer);
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    .line 184
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    #v1=(Reference);
    iget-boolean v2, p0, Lcom/android/launcher2/gadget/Player;->mIsFavoriteSong:Z

    #v2=(Boolean);
    if-eqz v2, :cond_3

    const v2, 0x7f020062

    :goto_4
    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef);
    const-string v1, "com.miui.player.togglefavorite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 183
    :cond_2
    #v0=(Null);v1=(Boolean);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_3

    .line 184
    :cond_3
    #v1=(Reference);v2=(Boolean);
    const v2, 0x7f020063

    #v2=(Integer);
    goto :goto_4

    .line 143
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_4
        0x7f080019 -> :sswitch_4
        0x7f08001b -> :sswitch_4
        0x7f08001f -> :sswitch_5
        0x7f080022 -> :sswitch_0
        0x7f08002a -> :sswitch_1
        0x7f08002b -> :sswitch_2
        0x7f08002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->cleanup()V

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0

    .line 198
    :pswitch_1
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v0=(Reference);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #v1=(Float);
    iget v2, p0, Lcom/android/launcher2/gadget/Player;->mLastDownY:F

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;FF)V

    goto :goto_0

    .line 202
    :pswitch_2
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    #v0=(Float);
    iput v0, p0, Lcom/android/launcher2/gadget/Player;->mLastDownY:F

    goto :goto_0

    .line 196
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 921
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 922
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$4000(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$4100(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 925
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->cleanup()V

    .line 223
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsResume:Z

    .line 228
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateSpectrumVisualizer()V

    .line 229
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateDrawingCache()V

    .line 232
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player;->mIsInitGadget:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 236
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mLyricScrollHelper:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$400(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player;->mAlbumHelper:Lcom/android/launcher2/gadget/Player$AlbumHelper;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$500(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V

    .line 241
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player;->updateMetaStatus()V

    goto :goto_0
.end method

*/}
