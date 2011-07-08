package com.android.launcher2.gadget; class Player$LyricScrollHelper$VerticalSlideAnimation {/*

.class Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;
.super Landroid/view/animation/Animation;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalSlideAnimation"
.end annotation


# instance fields
.field private mDestination:I

.field private mFinished:Z

.field private mSlidable:Landroid/view/View;

.field private mStart:I

.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "slidable"

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 862
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    .line 863
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 888
    iget-boolean v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mFinished:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 889
    const-wide/16 v1, 0x0

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setDuration(J)V

    .line 894
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 891
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mStart:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    iget v2, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mDestination:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mStart:I

    #v3=(Integer);
    sub-int/2addr v2, v3

    int-to-float v2, v2

    #v2=(Float);
    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 892
    .local v0, offset:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 883
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 884
    return-void
.end method

.method public slideTo(I)V
    .locals 2
    .parameter "destination"

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->getDuration()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->slideTo(IJ)V

    .line 875
    return-void
.end method

.method public slideTo(IJ)V
    .locals 1
    .parameter "destination"
    .parameter "duration"

    .prologue
    .line 866
    iput p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mDestination:I

    .line 867
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mStart:I

    .line 868
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setDuration(J)V

    .line 869
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 870
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mFinished:Z

    .line 871
    return-void
.end method

*/}
