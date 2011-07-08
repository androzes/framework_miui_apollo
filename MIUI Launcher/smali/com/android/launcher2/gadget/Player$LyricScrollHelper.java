package com.android.launcher2.gadget; class Player$LyricScrollHelper {/*

.class Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricScrollHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;,
        Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    }
.end annotation


# instance fields
.field private mCurrentTime:J

.field private final mLyricHandler:Landroid/os/Handler;

.field private mLyricMoveStatus:I

.field private mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

.field private mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    #p0=(Reference);
    new-instance v0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$1;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    .line 562
    new-instance v0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/view/View;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    .line 563
    new-instance v0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    #v0=(UninitRef);
    invoke-static {p1}, Lcom/android/launcher2/gadget/Player;->access$2600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/view/View;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    new-instance v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$SlideAnimationListener;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Lcom/android/launcher2/gadget/Player$1;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 565
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    const-wide/16 v1, 0x3e8

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setDuration(J)V

    .line 566
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;-><init>(Lcom/android/launcher2/gadget/Player;)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->scrollLyric(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->sendMessageIfNeeded(FF)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mCurrentTime:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->lyricProgressRequest()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mSlideAnimation:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    iput p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->clearup()V

    return-void
.end method

.method private clearup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    #v1=(Null);
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->reset()V

    .line 659
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v0=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V

    .line 660
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3500(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;[I)V

    .line 661
    return-void
.end method

.method private hasLyric()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private lyricProgressRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 595
    #v2=(PosByte);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/launcher2/gadget/Player;->access$2400(Lcom/android/launcher2/gadget/Player;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 601
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 598
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    #v1=(Reference);
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, msg:Landroid/os/Message;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    #v1=(Null);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)V

    .line 653
    iput v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    .line 654
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 655
    return-void
.end method

.method private scrollLyric(J)V
    .locals 8
    .parameter "time"

    .prologue
    .line 635
    iput-wide p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mCurrentTime:J

    .line 636
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    #v4=(Integer);
    if-eqz v4, :cond_1

    .line 649
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 639
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v4=(Reference);
    iget-wide v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mCurrentTime:J

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getLyricShot(J)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    move-result-object v2

    .line 640
    .local v2, lyricShot:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    #v2=(Reference);
    const/4 v0, -0x1

    .line 641
    .local v0, MIN_VALID_LINE_INDEX:I
    #v0=(Byte);
    iget v4, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    #v4=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-lt v4, v5, :cond_0

    .line 642
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    #v4=(Reference);
    iget v5, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    #v5=(Integer);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->updateCurrentLine(I)V

    .line 643
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-virtual {v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getAccurateLineHeight()F

    move-result v1

    .line 644
    .local v1, lineHeight:F
    #v1=(Float);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    iget v5, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->lineIndex:I

    iget-wide v6, v2, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;->percent:D

    #v6=(DoubleLo);v7=(DoubleHi);
    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;FID)I

    move-result v3

    .line 645
    .local v3, scrollHeight:I
    #v3=(Integer);
    if-lez v3, :cond_0

    .line 646
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v4}, Lcom/android/launcher2/gadget/Player;->access$2600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v4, v5, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method private sendMessageIfNeeded(FF)V
    .locals 5
    .parameter "currentY"
    .parameter "originalY"

    .prologue
    const/4 v4, 0x1

    .line 626
    #v4=(One);
    sub-float v1, p1, p2

    #v1=(Float);
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player;->access$3700(Lcom/android/launcher2/gadget/Player;)F

    move-result v2

    #v2=(Float);
    cmpl-float v1, v1, v2

    #v1=(Byte);
    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->hasLyric()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    #v1=(Reference);
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 628
    .local v0, msg:Landroid/os/Message;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 630
    iput v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I

    .line 632
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method private updateLyricStatus(Landroid/content/Intent;Z)V
    .locals 5
    .parameter "intent"
    .parameter "needFetchLyric"

    .prologue
    const/4 v4, 0x6

    .line 605
    #v4=(PosByte);
    const-string v3, "lyric_status"

    #v3=(Reference);
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 606
    .local v1, lyricStatus:I
    #v1=(Integer);
    if-ne v1, v4, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->reset()V

    .line 608
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V

    .line 617
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(PosByte);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$3600(Lcom/android/launcher2/gadget/Player;)V

    .line 618
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$1100(Lcom/android/launcher2/gadget/Player;)V

    .line 619
    return-void

    .line 609
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 610
    :cond_2
    #v3=(Conflicted);
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->reset()V

    .line 611
    const-string v3, "lyric"

    #v3=(Reference);
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 612
    .local v0, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v3, v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V

    .line 613
    const-string v3, "lyric_time"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 614
    .local v2, timeArr:[I
    #v2=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->mLyricText:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;

    invoke-static {v3, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->access$3500(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;[I)V

    goto :goto_0
.end method

*/}
