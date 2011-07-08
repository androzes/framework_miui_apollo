package com.android.launcher2; class ThumbnailScreen {/*

.class public Lcom/android/launcher2/ThumbnailScreen;
.super Landroid/view/ViewGroup;
.source "ThumbnailScreen.java"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mChildHeight:I

.field protected mChildWidth:I

.field protected mColumnCount:I

.field private mFoucsedThumbnail:Landroid/view/View;

.field private mLastestMoveIndex:I

.field private mLastestMoveTime:J

.field protected mMaxChildrenCount:I

.field private mMovingAnimationStarted:Z

.field protected mOrderThumbnailInRowFirst:Z

.field protected mRowCount:I

.field protected mScreenMarginLeft:I

.field protected mScreenMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 3
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "orderThumbnailInRowFirst"

    .prologue
    const/4 v2, 0x1

    .line 37
    #v2=(One);
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    .line 171
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 39
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    .line 40
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    .line 41
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    .line 42
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    .line 43
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v1=(Integer);
    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    .line 44
    iput-boolean p6, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailScreen;->setDrawingCacheEnabled(Z)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailScreen;->setWholeAnimationCacheEnabled(Z)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/ThumbnailScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    return p1
.end method

.method private convertToColumnIndex(I)I
    .locals 3
    .parameter "rawIndex"

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v0=(Integer);
    rem-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    #v1=(Integer);
    div-int v1, p1, v1

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v2=(Integer);
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    #v0=(Integer);
    div-int v0, p1, v0

    goto :goto_0
.end method

.method private convertToRawIndex(II)I
    .locals 1
    .parameter "rowIndex"
    .parameter "columnIndex"

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v0=(Integer);
    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    #v0=(Boolean);
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    #v0=(Integer);
    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private convertToRowIndex(I)I
    .locals 2
    .parameter "rawIndex"

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v0=(Integer);
    div-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    #v1=(Integer);
    rem-int/2addr v0, v1

    return v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    #v0=(Integer);
    rem-int v0, p1, v0

    goto :goto_0
.end method

.method private getPositionIndex(II)I
    .locals 7
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, -0x1

    .line 308
    #v4=(Byte);
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    #v2=(Integer);
    sub-int/2addr p1, v2

    .line 309
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    sub-int/2addr p2, v2

    .line 311
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    div-int v1, p2, v2

    .line 312
    .local v1, rowIndex:I
    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    div-int v0, p1, v2

    .line 315
    .local v0, columnIndex:I
    #v0=(Integer);
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    if-lt v1, v2, :cond_1

    .line 316
    :cond_0
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v3=(Integer);
    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    .line 327
    :goto_0
    return v2

    .line 324
    :cond_1
    #v3=(Uninit);
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    rem-int v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v3=(Integer);
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_2

    move v2, v4

    #v2=(Byte);
    goto :goto_0

    .line 325
    :cond_2
    #v2=(Integer);
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    rem-int v2, p2, v2

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_3

    move v2, v4

    #v2=(Byte);
    goto :goto_0

    .line 327
    :cond_3
    #v2=(Integer);
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "ScreenViewItem only support %d children."

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mMaxChildrenCount:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 94
    :cond_0
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public getThumbnailIndex(II)I
    .locals 5
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    .line 295
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v0, hitRect:Landroid/graphics/Rect;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    #v3=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    if-ltz v1, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 298
    .local v2, thumbnail:Landroid/view/View;
    #v2=(Reference);
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 299
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    move v3, v1

    .line 303
    .end local v2           #thumbnail:Landroid/view/View;
    :goto_1
    #v2=(Conflicted);v3=(Integer);
    return v3

    .line 296
    .restart local v2       #thumbnail:Landroid/view/View;
    :cond_0
    #v2=(Reference);v3=(Boolean);
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 303
    .end local v2           #thumbnail:Landroid/view/View;
    :cond_1
    #v2=(Conflicted);v3=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    goto :goto_1
.end method

.method public isMovingAnimationStarted()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    #v0=(Boolean);
    return v0
.end method

.method protected layoutChildByIndex(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v1

    .line 63
    .local v1, rowIndex:I
    #v1=(Integer);
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v0

    .line 65
    .local v0, columnIndex:I
    #v0=(Integer);
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v4=(Integer);
    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    iget v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    #v5=(Integer);
    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v6=(Integer);
    add-int/lit8 v7, v0, 0x1

    #v7=(Integer);
    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    iget v7, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    add-int/lit8 v8, v1, 0x1

    #v8=(Integer);
    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 70
    return-void
.end method

.method public moveThumbnail(III)V
    .locals 6
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v5, -0x1

    #v5=(Byte);
    const/4 v4, 0x1

    .line 211
    #v4=(One);
    if-eq p2, p3, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    #v3=(Integer);
    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    #v1=(Integer);v3=(Conflicted);
    if-ltz v1, :cond_0

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 212
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    :cond_0
    #v3=(Conflicted);
    invoke-virtual {p0, p2}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 217
    .local v2, movingTarget:Landroid/view/View;
    #v2=(Reference);
    invoke-virtual {p0, p2, v4}, Lcom/android/launcher2/ThumbnailScreen;->removeViewsInLayout(II)V

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v2, p3, v3, v4}, Lcom/android/launcher2/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 219
    if-ge p2, p3, :cond_1

    move v0, v4

    .line 220
    .local v0, direction:I
    :goto_1
    #v0=(Byte);
    move v1, p2

    :goto_2
    if-eq v1, p3, :cond_2

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 220
    add-int/2addr v1, v0

    goto :goto_2

    .end local v0           #direction:I
    :cond_1
    #v0=(Uninit);
    move v0, v5

    .line 219
    #v0=(Byte);
    goto :goto_1

    .line 224
    .restart local v0       #direction:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/ThumbnailScreen;->startMovingAnimation(III)V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->invalidate()V

    .line 226
    iput v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    .line 228
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #movingTarget:Landroid/view/View;
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public moveThumbnailInto(ZLcom/android/launcher2/ThumbnailScreen;I)I
    .locals 5
    .parameter "isMovingToRight"
    .parameter "fromScreen"
    .parameter "fromThumbnail"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 265
    #v3=(Null);
    invoke-virtual {p2, p3}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, dragingThumbnail:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {p2, v0}, Lcom/android/launcher2/ThumbnailScreen;->removeView(Landroid/view/View;)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0, v3}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, thumbnail:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 276
    invoke-virtual {p2, v1}, Lcom/android/launcher2/ThumbnailScreen;->addView(Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/launcher2/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move v2, v3

    .line 287
    :goto_0
    #v2=(Integer);v3=(Reference);
    return v2

    .line 280
    .end local v1           #thumbnail:Landroid/view/View;
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 281
    .restart local v1       #thumbnail:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 282
    invoke-virtual {p2, v1, v3}, Lcom/android/launcher2/ThumbnailScreen;->addView(Landroid/view/View;I)V

    .line 283
    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/launcher2/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v2, v4

    goto :goto_0
.end method

.method public moveThumbnailTo(IIII)I
    .locals 6
    .parameter "duration"
    .parameter "lastestPosistion"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 231
    invoke-direct {p0, p3, p4}, Lcom/android/launcher2/ThumbnailScreen;->getPositionIndex(II)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    #v3=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 232
    .local v1, newPosition:I
    #v1=(Integer);
    if-gez v1, :cond_0

    .line 233
    move v1, p2

    .line 237
    :cond_0
    if-eq v1, p2, :cond_2

    .line 238
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    if-eq v2, v1, :cond_3

    .line 239
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveTime:J

    .line 240
    iput v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveIndex:I

    .line 241
    move v1, p2

    .line 248
    :cond_2
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/ThumbnailScreen;->moveThumbnail(III)V

    .line 250
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v2=(Integer);
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    .line 251
    iget v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, movingTarget:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v3, p4

    invoke-virtual {v0, p3, p4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->invalidate()V

    .line 257
    return v1

    .line 243
    .end local v0           #movingTarget:Landroid/view/View;
    :cond_3
    #v0=(Uninit);v4=(One);v5=(Uninit);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    iget-wide v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mLastestMoveTime:J

    #v4=(LongLo);v5=(LongHi);
    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    #v2=(Byte);
    if-gez v2, :cond_2

    .line 244
    move v1, p2

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v1

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0           #i:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method protected onAnimationStart()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(PosByte);v3=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v1

    #v1=(Integer);
    if-ge v0, v1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    :goto_1
    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    #v2=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 150
    .end local v0           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v0

    .line 75
    .local v0, count:I
    #v0=(Integer);
    if-nez v0, :cond_1

    .line 85
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 78
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    sub-int v2, p4, p2

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mColumnCount:I

    #v4=(Integer);
    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    .line 79
    sub-int v2, p5, p3

    iget v3, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    iget v4, p0, Lcom/android/launcher2/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginTop:I

    .line 82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    if-ge v1, v0, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 52
    #v2=(Integer);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    #v0=(Integer);
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->setMeasuredDimension(II)V

    .line 56
    iget v0, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->measureChildren(II)V

    .line 59
    return-void
.end method

.method public resetThumbnailLayout(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 292
    return-void
.end method

.method public startMovingAnimation(III)V
    .locals 11
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    .line 179
    #v9=(Null);
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 181
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    #v2=(Reference);
    if-ge p2, p3, :cond_0

    move v0, v10

    .line 182
    .local v0, direction:I
    :goto_0
    #v0=(Byte);v5=(Conflicted);
    const/4 v4, 0x0

    .line 183
    .local v4, v:Landroid/view/View;
    #v4=(Null);
    move v1, p2

    .local v1, i:I
    :goto_1
    #v1=(Integer);v3=(Conflicted);v4=(Reference);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-eq v1, p3, :cond_1

    .line 184
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    #v3=(UninitRef);
    iget v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v5=(Integer);
    add-int v6, v1, v0

    #v6=(Integer);
    invoke-direct {p0, v6}, Lcom/android/launcher2/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v7

    #v7=(Integer);
    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    int-to-float v5, v5

    #v5=(Float);
    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildHeight:I

    add-int v7, v1, v0

    invoke-direct {p0, v7}, Lcom/android/launcher2/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v8

    #v8=(Integer);
    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    int-to-float v6, v6

    #v6=(Float);
    invoke-direct {v3, v5, v9, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 187
    .local v3, tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    #v3=(Reference);
    int-to-long v5, p1

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 188
    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 189
    sub-int v5, v1, p3

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    int-to-long v5, v5

    #v5=(LongLo);
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 193
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    add-int/2addr v1, v0

    goto :goto_1

    .line 181
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v3           #tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const/4 v5, -0x1

    #v5=(Byte);
    move v0, v5

    #v0=(Byte);
    goto :goto_0

    .line 195
    .restart local v0       #direction:I
    .restart local v1       #i:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    #v1=(Integer);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-eqz v4, :cond_2

    .line 196
    iput-boolean v10, p0, Lcom/android/launcher2/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 197
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    #v5=(Reference);
    new-instance v6, Lcom/android/launcher2/ThumbnailScreen$1;

    #v6=(UninitRef);
    invoke-direct {v6, p0}, Lcom/android/launcher2/ThumbnailScreen$1;-><init>(Lcom/android/launcher2/ThumbnailScreen;)V

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 208
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);
    return-void
.end method

.method public startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 15
    .parameter "entering"
    .parameter "duration"
    .parameter "focusedIndex"
    .parameter "animationListener"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #v5=(Reference);
    move-object v12, v5

    .line 108
    .local v12, interpolator:Landroid/view/animation/Interpolator;
    :goto_0
    #v12=(Reference);
    move-object v0, p0

    #v0=(Reference);
    move/from16 v1, p3

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    .line 109
    move-object/from16 v0, p4

    move-object v1, p0

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/launcher2/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailScreen;->getWidth()I

    move-result v5

    #v5=(Integer);
    iget v6, p0, Lcom/android/launcher2/ThumbnailScreen;->mChildWidth:I

    #v6=(Integer);
    iget v7, p0, Lcom/android/launcher2/ThumbnailScreen;->mScreenMarginLeft:I

    #v7=(Integer);
    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    int-to-float v13, v5

    .line 113
    .local v13, scaleRatio:F
    #v13=(Float);
    if-eqz p1, :cond_1

    move v3, v13

    .line 114
    .local v3, fromRatio:F
    :goto_1
    #v3=(Integer);
    if-eqz p1, :cond_2

    const/high16 v5, 0x3f80

    move v4, v5

    .line 115
    .local v4, toRatio:F
    :goto_2
    #v4=(Integer);
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    #v2=(UninitRef);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    move v5, v3

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 121
    .local v2, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    #v2=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    #v5=(Integer);
    neg-int v5, v5

    int-to-float v5, v5

    #v5=(Float);
    mul-float v10, v5, v13

    .line 122
    .local v10, deltaX:F
    #v10=(Float);
    iget-object v5, p0, Lcom/android/launcher2/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    #v5=(Integer);
    neg-int v5, v5

    int-to-float v5, v5

    #v5=(Float);
    mul-float v11, v5, v13

    .line 123
    .local v11, deltaY:F
    #v11=(Float);
    if-eqz p1, :cond_3

    .line 124
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    #v14=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-direct {v14, v10, v5, v11, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 131
    .local v14, translateAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_3
    #v14=(Reference);
    new-instance v9, Landroid/view/animation/AnimationSet;

    #v9=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 132
    .local v9, animation:Landroid/view/animation/AnimationSet;
    #v9=(Reference);
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 133
    invoke-virtual {v9, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 134
    move/from16 v0, p2

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    move-wide v5, v0

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v9, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 135
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    invoke-virtual {p0, v9}, Lcom/android/launcher2/ThumbnailScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-void

    .line 105
    .end local v2           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v3           #fromRatio:F
    .end local v4           #toRatio:F
    .end local v9           #animation:Landroid/view/animation/AnimationSet;
    .end local v10           #deltaX:F
    .end local v11           #deltaY:F
    .end local v12           #interpolator:Landroid/view/animation/Interpolator;
    .end local v13           #scaleRatio:F
    .end local v14           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #v5=(Reference);
    move-object v12, v5

    #v12=(Reference);
    goto :goto_0

    .line 113
    .restart local v12       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v13       #scaleRatio:F
    :cond_1
    #v0=(Reference);v1=(Reference);v5=(Integer);v6=(Integer);v7=(Integer);v13=(Float);
    const/high16 v5, 0x3f80

    move v3, v5

    #v3=(Integer);
    goto :goto_1

    .restart local v3       #fromRatio:F
    :cond_2
    move v4, v13

    .line 114
    #v4=(Float);
    goto :goto_2

    .line 127
    .restart local v2       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .restart local v4       #toRatio:F
    .restart local v10       #deltaX:F
    .restart local v11       #deltaY:F
    :cond_3
    #v2=(Reference);v4=(Integer);v5=(Float);v7=(Null);v8=(Null);v10=(Float);v11=(Float);
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    #v14=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-direct {v14, v5, v10, v6, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v14       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    #v14=(Reference);
    goto :goto_3
.end method

*/}
