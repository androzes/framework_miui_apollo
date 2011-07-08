package com.android.launcher2.gadget; class Player$2 {/*

.class Lcom/android/launcher2/gadget/Player$2;
.super Landroid/content/BroadcastReceiver;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mFadeAnimation:Lcom/android/launcher2/gadget/Player$FadeAnimation;

.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 497
    #p0=(Reference);
    new-instance v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player;->access$1300(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/gadget/Player$FadeAnimation;-><init>(Lcom/android/launcher2/gadget/Player;Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$2;->mFadeAnimation:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    return-void
.end method

.method private isTrackEqual(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 499
    const-string v2, "track"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, trackNameStr:Ljava/lang/String;
    #v1=(Reference);
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, artistNameStr:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player;->access$1400(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player;->access$1400(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/gadget/Player;->access$1500(Lcom/android/launcher2/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x1

    .line 506
    #v5=(One);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$1600(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 547
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 509
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    invoke-direct {p0, p2}, Lcom/android/launcher2/gadget/Player$2;->isTrackEqual(Landroid/content/Intent;)Z

    move-result v2

    .line 511
    .local v2, isTrackEqual:Z
    #v2=(Boolean);
    const-string v3, "com.miui.player.metachanged"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_9

    .line 512
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$1700(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V

    .line 513
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, extra:Ljava/lang/String;
    #v1=(Reference);
    const-string v3, "meta_changed_track"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_5

    .line 515
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$1800(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V

    .line 516
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$1900(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$AlbumHelper;

    move-result-object v3

    if-nez v2, :cond_3

    move v4, v5

    :goto_1
    #v4=(Boolean);
    invoke-static {v3, p2, v4}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$2000(Lcom/android/launcher2/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V

    .line 517
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$2100(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    move-result-object v3

    if-nez v2, :cond_4

    move v4, v5

    :goto_2
    invoke-static {v3, p2, v4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$2200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    .line 532
    :cond_2
    :goto_3
    #v3=(Conflicted);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$2400(Lcom/android/launcher2/gadget/Player;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_8

    .line 533
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->mFadeAnimation:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->prepareUpdate()V

    goto :goto_0

    :cond_3
    #v4=(Uninit);
    move v4, v6

    .line 516
    #v4=(Null);
    goto :goto_1

    :cond_4
    #v4=(Boolean);
    move v4, v6

    .line 517
    #v4=(Null);
    goto :goto_2

    .line 518
    :cond_5
    #v3=(Boolean);v4=(Uninit);
    if-eqz v2, :cond_0

    .line 519
    const-string v3, "meta_changed_buffer"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 520
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$2300(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V

    .line 521
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$2100(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    move-result-object v3

    invoke-static {v3, p2, v6}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$2200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 523
    :cond_6
    #v3=(Boolean);
    const-string v3, "meta_changed_album"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_7

    .line 524
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$1900(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$AlbumHelper;

    move-result-object v3

    invoke-static {v3, p2, v5}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$2000(Lcom/android/launcher2/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V

    goto :goto_3

    .line 525
    :cond_7
    #v3=(Boolean);
    const-string v3, "meta_changed_lyric"

    #v3=(Reference);
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 526
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$2100(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    move-result-object v3

    invoke-static {v3, p2, v5}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$2200(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    goto :goto_3

    .line 535
    :cond_8
    #v3=(Boolean);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$1900(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$AlbumHelper;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->access$2500(Lcom/android/launcher2/gadget/Player$AlbumHelper;Z)V

    goto/16 :goto_0

    .line 537
    .end local v1           #extra:Ljava/lang/String;
    :cond_9
    #v1=(Uninit);v3=(Boolean);v4=(Uninit);
    if-eqz v2, :cond_0

    .line 538
    const-string v3, "com.miui.player.playstatechanged"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_a

    const-string v3, "com.miui.player.playbackcomplete"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_b

    .line 540
    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$1700(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 541
    :cond_b
    #v3=(Boolean);
    const-string v3, "com.miui.player.refreshprogress"

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 542
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    #v3=(Reference);
    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$2300(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V

    .line 543
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3, p2}, Lcom/android/launcher2/gadget/Player;->access$1700(Lcom/android/launcher2/gadget/Player;Landroid/content/Intent;)V

    .line 544
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$2;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v3}, Lcom/android/launcher2/gadget/Player;->access$1100(Lcom/android/launcher2/gadget/Player;)V

    goto/16 :goto_0
.end method

*/}
