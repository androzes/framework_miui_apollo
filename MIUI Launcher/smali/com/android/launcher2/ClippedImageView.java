package com.android.launcher2; class ClippedImageView {/*

.class public Lcom/android/launcher2/ClippedImageView;
.super Landroid/widget/ImageView;
.source "ClippedImageView.java"


# instance fields
.field private final mZone:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/ClippedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 34
    #v2=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    #p0=(Reference);
    sget-object v1, Lcom/android/launcher/R$styleable;->ClippedImageView:[I

    #v1=(Reference);
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, a:Landroid/content/res/TypedArray;
    #v0=(Reference);
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/launcher2/ClippedImageView;->mZone:I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/launcher2/ClippedImageView;->mZone:I

    .line 46
    .local v0, zone:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #v1=(Float);
    int-to-float v2, v0

    #v2=(Float);
    cmpl-float v1, v1, v2

    #v1=(Byte);
    if-gez v1, :cond_2

    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #v1=(Float);
    invoke-virtual {p0}, Lcom/android/launcher2/ClippedImageView;->getWidth()I

    move-result v2

    #v2=(Integer);
    add-int/2addr v2, v0

    int-to-float v2, v2

    #v2=(Float);
    cmpg-float v1, v1, v2

    #v1=(Byte);
    if-ltz v1, :cond_2

    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    #v1=(Byte);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

*/}
