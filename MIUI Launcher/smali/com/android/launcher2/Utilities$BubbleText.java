package com.android.launcher2; class Utilities$BubbleText {/*

.class Lcom/android/launcher2/Utilities$BubbleText;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BubbleText"
.end annotation


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mBubbleRect:Landroid/graphics/RectF;

.field private final mDensity:I

.field private final mFirstLineY:I

.field private final mLeading:I

.field private final mLineHeight:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextWidth:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    #p0=(Reference);
    new-instance v11, Landroid/graphics/RectF;

    #v11=(UninitRef);
    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    #v11=(Reference);
    iput-object v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 273
    .local v8, resources:Landroid/content/res/Resources;
    #v8=(Reference);
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 274
    .local v5, metrics:Landroid/util/DisplayMetrics;
    #v5=(Reference);
    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    .line 275
    .local v9, scale:F
    #v9=(Integer);
    iget v11, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    #v11=(Integer);
    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mDensity:I

    .line 277
    const/high16 v11, 0x4000

    mul-float v6, v11, v9

    .line 278
    .local v6, paddingLeft:F
    #v6=(Float);
    const/high16 v11, 0x4000

    mul-float v7, v11, v9

    .line 279
    .local v7, paddingRight:F
    #v7=(Float);
    const/high16 v11, 0x7f0b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 281
    .local v2, cellWidth:F
    #v2=(Float);
    iget-object v1, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    .line 282
    .local v1, bubbleRect:Landroid/graphics/RectF;
    #v1=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    iput v11, v1, Landroid/graphics/RectF;->left:F

    .line 283
    const/4 v11, 0x0

    iput v11, v1, Landroid/graphics/RectF;->top:F

    .line 284
    float-to-int v11, v2

    #v11=(Integer);
    int-to-float v11, v11

    #v11=(Float);
    iput v11, v1, Landroid/graphics/RectF;->right:F

    .line 286
    sub-float v11, v2, v6

    sub-float/2addr v11, v7

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mTextWidth:F

    .line 288
    new-instance v10, Landroid/text/TextPaint;

    #v10=(UninitRef);
    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    #v10=(Reference);
    iput-object v10, p0, Lcom/android/launcher2/Utilities$BubbleText;->mTextPaint:Landroid/text/TextPaint;

    .line 289
    .local v10, textPaint:Landroid/text/TextPaint;
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #v11=(Reference);
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 290
    const/high16 v11, 0x4150

    #v11=(Integer);
    mul-float/2addr v11, v9

    #v11=(Float);
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 291
    const/4 v11, -0x1

    #v11=(Byte);
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 292
    const/4 v11, 0x1

    #v11=(One);
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 297
    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v11

    #v11=(Float);
    neg-float v0, v11

    .line 298
    .local v0, ascent:F
    #v0=(Float);
    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v3

    .line 299
    .local v3, descent:F
    #v3=(Float);
    const/4 v4, 0x0

    .line 300
    .local v4, leading:F
    #v4=(Null);
    const/high16 v11, 0x3f00

    #v11=(Integer);
    add-float/2addr v11, v4

    #v11=(Float);
    float-to-int v11, v11

    #v11=(Integer);
    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mLeading:I

    .line 301
    add-float v11, v4, v0

    #v11=(Float);
    const/high16 v12, 0x3f00

    #v12=(Integer);
    add-float/2addr v11, v12

    float-to-int v11, v11

    #v11=(Integer);
    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mFirstLineY:I

    .line 302
    add-float v11, v4, v0

    #v11=(Float);
    add-float/2addr v11, v3

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    #v11=(Integer);
    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mLineHeight:I

    .line 304
    iget-object v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    #v11=(Reference);
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    #v11=(Float);
    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    #v11=(Integer);
    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapWidth:I

    .line 305
    iget v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mLineHeight:I

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    #v11=(Float);
    add-float/2addr v11, v4

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    #v11=(Integer);
    invoke-static {v11}, Lcom/android/launcher2/Utilities;->roundToPow2(I)I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapHeight:I

    .line 307
    iget-object v11, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    #v11=(Reference);
    iget v12, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBitmapWidth:I

    int-to-float v12, v12

    #v12=(Float);
    iget-object v13, p0, Lcom/android/launcher2/Utilities$BubbleText;->mBubbleRect:Landroid/graphics/RectF;

    #v13=(Reference);
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    #v13=(Float);
    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    #v13=(Integer);
    div-float/2addr v12, v13

    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 314
    return-void
.end method

*/}
