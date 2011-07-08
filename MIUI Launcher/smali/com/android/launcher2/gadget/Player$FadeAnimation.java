package com.android.launcher2.gadget; class Player$FadeAnimation {/*

.class Lcom/android/launcher2/gadget/Player$FadeAnimation;
.super Landroid/view/animation/Animation;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;,
        Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;
    }
.end annotation


# instance fields
.field private final mFadeInAnim:Landroid/view/animation/Animation;

.field private final mFadeOutAnim:Landroid/view/animation/Animation;

.field private mHasWaiting:Z

.field private mIsUpdatePreparing:Z

.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/gadget/Player;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x0

    .line 1040
    #v2=(Null);
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1041
    #p0=(Reference);
    const v0, 0x7f040006

    #v0=(Integer);
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 1042
    const v0, 0x7f040003

    #v0=(Integer);
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 1043
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mFadeOutAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeOutAnimListener;-><init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;Lcom/android/launcher2/gadget/Player$1;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1044
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;-><init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;Lcom/android/launcher2/gadget/Player$1;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1048
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    .line 1053
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mHasWaiting:Z

    .line 1054
    return-void
.end method

.method static synthetic access$4800(Lcom/android/launcher2/gadget/Player$FadeAnimation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mHasWaiting:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$4802(Lcom/android/launcher2/gadget/Player$FadeAnimation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mHasWaiting:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/launcher2/gadget/Player$FadeAnimation;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/launcher2/gadget/Player$FadeAnimation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    return p1
.end method


# virtual methods
.method public prepareUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1057
    #v2=(One);
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mHasWaiting:Z

    .line 1059
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$4600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mFadeOutAnim:Landroid/view/animation/Animation;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1061
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    .line 1065
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1063
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iput-boolean v2, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->mHasWaiting:Z

    goto :goto_0
.end method

*/}
