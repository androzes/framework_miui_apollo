package com.android.launcher2.gadget; class LyricTextView {/*

.class public Lcom/android/launcher2/gadget/LyricTextView;
.super Landroid/widget/TextView;
.source "LyricTextView.java"


# instance fields
.field private mLineSpacingExtra:F

.field private mLineSpacingMutiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/launcher2/gadget/LyricTextView;->mLineSpacingExtra:F

    .line 10
    const/high16 v0, 0x3f80

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/gadget/LyricTextView;->mLineSpacingMutiplier:F

    .line 14
    return-void
.end method


# virtual methods
.method public getAccurateLineHeight()F
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/LyricTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    #v0=(Float);
    iget v1, p0, Lcom/android/launcher2/gadget/LyricTextView;->mLineSpacingMutiplier:F

    #v1=(Integer);
    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/gadget/LyricTextView;->mLineSpacingExtra:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/launcher2/gadget/LyricTextView;->mLineSpacingExtra:F

    .line 19
    iput p2, p0, Lcom/android/launcher2/gadget/LyricTextView;->mLineSpacingMutiplier:F

    .line 20
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 21
    return-void
.end method

*/}
