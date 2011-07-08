package com.android.launcher2.gadget; class FrequentContacts$AlphaAnimationListener {/*

.class Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;
.super Ljava/lang/Object;
.source "FrequentContacts.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/FrequentContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/FrequentContacts;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/FrequentContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/FrequentContacts;Lcom/android/launcher2/gadget/FrequentContacts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;-><init>(Lcom/android/launcher2/gadget/FrequentContacts;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 744
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    const/4 v3, 0x6

    #v3=(PosByte);
    if-ge v1, v3, :cond_0

    .line 745
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/ImageView;

    .line 746
    .local v2, layer:Landroid/widget/ImageView;
    const/high16 v3, 0x437f

    #v3=(Integer);
    invoke-static {}, Lcom/android/launcher2/gadget/FrequentContacts;->access$000()[F

    move-result-object v4

    #v4=(Reference);
    div-int/lit8 v5, v1, 0x2

    #v5=(Integer);
    aget v4, v4, v5

    #v4=(Integer);
    mul-float/2addr v3, v4

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 747
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v2           #layer:Landroid/widget/ImageView;
    :cond_0
    #v2=(Conflicted);v3=(PosByte);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/launcher2/gadget/FrequentContacts;->access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$200(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v4

    #v4=(Integer);
    sub-int v0, v3, v4

    .line 751
    .local v0, delta:I
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v4

    #v4=(Integer);
    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$300(Lcom/android/launcher2/gadget/FrequentContacts;I)V

    .line 752
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v4

    #v4=(Integer);
    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$400(Lcom/android/launcher2/gadget/FrequentContacts;I)V

    .line 753
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    const/4 v4, -0x1

    #v4=(Byte);
    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$102(Lcom/android/launcher2/gadget/FrequentContacts;I)I

    .line 754
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 757
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 760
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    const/4 v2, 0x6

    #v2=(PosByte);
    if-ge v0, v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/ImageView;

    .line 762
    .local v1, layer:Landroid/widget/ImageView;
    const/16 v2, 0xff

    #v2=(PosShort);
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_0
    #v1=(Conflicted);v2=(PosByte);
    return-void
.end method

*/}
