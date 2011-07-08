package com.android.launcher2.gadget; class Player$FadeAnimation$FadeInAnimListener {/*

.class Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player$FadeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeInAnimListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;-><init>(Lcom/android/launcher2/gadget/Player$FadeAnimation;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->access$5002(Lcom/android/launcher2/gadget/Player$FadeAnimation;Z)Z

    .line 1090
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->access$4800(Lcom/android/launcher2/gadget/Player$FadeAnimation;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Player$FadeAnimation;->prepareUpdate()V

    .line 1093
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1098
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2100(Lcom/android/launcher2/gadget/Player;)Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper;->access$600(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/android/launcher2/gadget/Player$FadeAnimation;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/gadget/Player$FadeAnimation;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2600(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1105
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

*/}
