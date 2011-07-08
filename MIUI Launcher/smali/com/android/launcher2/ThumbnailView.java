package com.android.launcher2; class ThumbnailView {/*

.class public Lcom/android/launcher2/ThumbnailView;
.super Lcom/android/launcher2/DragableScreenView;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;
    }
.end annotation


# static fields
.field protected static final LONG_PRESS_DELAY:I


# instance fields
.field protected final ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field protected final EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field protected mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

.field protected mAdapterObserver:Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;

.field protected mAnimationDuration:I

.field protected mColumnCountPerScreen:I

.field private mDataRefreshmentRequested:Z

.field private mDragingSource:I

.field private mEnableThumbnailPositionChanging:Z

.field private mEnterAnimationRequested:Z

.field private mExitAnimationRequested:Z

.field private mLayoutRequested:Z

.field private mMeasurmentRequested:Z

.field private mRequesetedColumnCountPerScreen:I

.field private mRequesetedRowCountPerScreen:I

.field private mRequesetedThumbnailHeight:I

.field private mRequesetedThumbnailWidth:I

.field protected mRowCountPerScreen:I

.field private mShowing:Z

.field protected mThumbnailCountPerScreen:I

.field protected mThumbnailHeight:I

.field private mThumbnailPositionChanged:Z

.field private mThumbnailPositionMapping:[I

.field protected mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/launcher2/ThumbnailView;->LONG_PRESS_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v2, 0x0

    .line 87
    #v2=(Null);
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    #p0=(Reference);
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mEnterAnimationRequested:Z

    .line 46
    iput-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mExitAnimationRequested:Z

    .line 48
    iput v2, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedRowCountPerScreen:I

    .line 49
    iput v2, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    .line 50
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailWidth:I

    .line 51
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailWidth:I

    iput v0, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailHeight:I

    .line 60
    new-instance v0, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;-><init>(Lcom/android/launcher2/ThumbnailView;Lcom/android/launcher2/ThumbnailView$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapterObserver:Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;

    .line 66
    iput-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mShowing:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mEnableThumbnailPositionChanging:Z

    .line 510
    new-instance v0, Lcom/android/launcher2/ThumbnailView$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/ThumbnailView$1;-><init>(Lcom/android/launcher2/ThumbnailView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ThumbnailView;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 539
    new-instance v0, Lcom/android/launcher2/ThumbnailView$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/ThumbnailView$2;-><init>(Lcom/android/launcher2/ThumbnailView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ThumbnailView;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ThumbnailView;->mAnimationDuration:I

    .line 89
    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/ThumbnailView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    return p1
.end method

.method private prepareSwitchingAnimation(Z)V
    .locals 2
    .parameter "entering"

    .prologue
    const/4 v1, 0x1

    .line 181
    #v1=(One);
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mDataRefreshmentRequested:Z

    if-eqz v0, :cond_3

    .line 185
    :cond_0
    if-eqz p1, :cond_2

    .line 186
    iput-boolean v1, p0, Lcom/android/launcher2/ThumbnailView;->mEnterAnimationRequested:Z

    .line 201
    :cond_1
    :goto_0
    #v0=(Integer);v1=(Integer);
    return-void

    .line 189
    :cond_2
    #v0=(Boolean);v1=(One);
    iput-boolean v1, p0, Lcom/android/launcher2/ThumbnailView;->mExitAnimationRequested:Z

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getWidth()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v1=(Integer);
    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailView;->setCurrentScreen(I)V

    .line 198
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailView;->scrollToScreen(I)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailView;->startSwitchingAnimation(Z)V

    goto :goto_0
.end method

.method private updateScreenGridSize()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 210
    #v10=(One);
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    .line 211
    .local v3, previousRowCountPerScreen:I
    #v3=(Integer);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    .line 212
    .local v2, previousColumnCountPerScreen:I
    #v2=(Integer);
    iget v5, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    .line 213
    .local v5, previousThumbnailWidth:I
    #v5=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    .line 215
    .local v4, previousThumbnailHeight:I
    #v4=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getMeasuredWidth()I

    move-result v8

    #v8=(Integer);
    iget-object v9, p0, Lcom/android/launcher2/ThumbnailView;->mScreenPadding:Landroid/graphics/Rect;

    #v9=(Reference);
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #v9=(Integer);
    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher2/ThumbnailView;->mScreenPadding:Landroid/graphics/Rect;

    #v9=(Reference);
    iget v9, v9, Landroid/graphics/Rect;->right:I

    #v9=(Integer);
    sub-int v7, v8, v9

    .line 216
    .local v7, screenWidth:I
    #v7=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/ThumbnailView;->mScreenPadding:Landroid/graphics/Rect;

    #v9=(Reference);
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #v9=(Integer);
    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher2/ThumbnailView;->mScreenPadding:Landroid/graphics/Rect;

    #v9=(Reference);
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #v9=(Integer);
    sub-int v6, v8, v9

    .line 218
    .local v6, screenHeigth:I
    #v6=(Integer);
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedRowCountPerScreen:I

    if-lez v8, :cond_2

    .line 222
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    .line 223
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedRowCountPerScreen:I

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    .line 224
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    div-int v8, v7, v8

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    .line 225
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    div-int v8, v6, v8

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    .line 263
    :cond_0
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    iget v9, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    mul-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    .line 265
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    if-ne v3, v8, :cond_1

    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    if-ne v2, v8, :cond_1

    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    if-ne v5, v8, :cond_1

    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    if-eq v4, v8, :cond_7

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getScreenCount()I

    move-result v0

    .line 272
    .local v0, count:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v8=(Conflicted);
    if-ge v1, v0, :cond_6

    .line 273
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    #v0=(Uninit);v1=(Uninit);v8=(Integer);
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailWidth:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 253
    :cond_3
    :goto_1
    iput v10, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    .line 254
    :goto_2
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    iget v9, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    if-gt v8, v7, :cond_5

    .line 255
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    goto :goto_2

    .line 237
    :sswitch_0
    iput v6, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    .line 238
    iput v7, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    goto :goto_1

    .line 242
    :sswitch_1
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailHeight:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    .line 243
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailWidth:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    .line 245
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    if-lez v8, :cond_4

    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    if-gtz v8, :cond_3

    .line 246
    :cond_4
    iput v6, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    .line 247
    iput v7, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    goto :goto_1

    .line 258
    :cond_5
    iput v10, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    .line 259
    :goto_3
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    iget v9, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    if-gt v8, v6, :cond_0

    .line 260
    iget v8, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    goto :goto_3

    .line 275
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_6
    #v0=(Integer);v1=(Integer);v8=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0, v8, v0}, Lcom/android/launcher2/ThumbnailView;->removeScreensInLayout(II)V

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->refreshThumbnails()V

    .line 279
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v8=(Integer);
    return-void

    .line 234
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateThumbnailPositionMapping(II)V
    .locals 7
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v6, 0x1

    .line 463
    #v6=(One);
    if-eq p1, p2, :cond_2

    .line 464
    iget-object v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    #v3=(Reference);
    aget v2, v3, p1

    .line 465
    .local v2, sourcePosition:I
    #v2=(Integer);
    if-ge p1, p2, :cond_0

    move v0, v6

    .line 466
    .local v0, direction:I
    :goto_0
    #v0=(Byte);v3=(Conflicted);
    move v1, p1

    .local v1, i:I
    :goto_1
    #v1=(Integer);v4=(Conflicted);v5=(Conflicted);
    if-eq v1, p2, :cond_1

    .line 467
    iget-object v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    #v4=(Reference);
    add-int v5, v1, v0

    #v5=(Integer);
    aget v4, v4, v5

    #v4=(Integer);
    aput v4, v3, v1

    .line 466
    add-int/2addr v1, v0

    goto :goto_1

    .line 465
    .end local v0           #direction:I
    .end local v1           #i:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v3, -0x1

    #v3=(Byte);
    move v0, v3

    #v0=(Byte);
    goto :goto_0

    .line 469
    .restart local v0       #direction:I
    .restart local v1       #i:I
    :cond_1
    #v1=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    #v3=(Reference);
    aput v2, v3, p2

    .line 471
    iput-boolean v6, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionChanged:Z

    .line 473
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #sourcePosition:I
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method


# virtual methods
.method protected clearSwitchingAnimation()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method protected createScreen(Landroid/content/Context;IIII)Lcom/android/launcher2/ThumbnailScreen;
    .locals 7
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 285
    new-instance v0, Lcom/android/launcher2/ThumbnailScreen;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    #v4=(Integer);
    iget v5, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/ThumbnailScreen;-><init>(Landroid/content/Context;IIIIZ)V

    #v0=(Reference);
    return-object v0
.end method

.method public enableThumbnailPositionChanging(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/ThumbnailView;->mEnableThumbnailPositionChanging:Z

    .line 151
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mShowing:Z

    #v0=(Boolean);
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 389
    #v5=(Null);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 417
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 391
    :pswitch_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-boolean v1, p0, Lcom/android/launcher2/ThumbnailView;->mEnableThumbnailPositionChanging:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getTouchState()I

    move-result v1

    #v1=(Integer);
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    sub-long/2addr v1, v3

    sget v3, Lcom/android/launcher2/ThumbnailView;->LONG_PRESS_DELAY:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-lez v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->isShown()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    move v1, v5

    .line 395
    #v1=(Null);
    goto :goto_0

    .line 397
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    #v1=(Float);
    iput v1, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionX:F

    .line 398
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionY:F

    .line 400
    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ThumbnailScreen;

    .line 401
    .local v0, thumbnailScreen:Lcom/android/launcher2/ThumbnailScreen;
    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionY:F

    #v2=(Integer);
    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ThumbnailScreen;->getThumbnailIndex(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    .line 405
    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    if-ltz v1, :cond_2

    .line 406
    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v3=(Integer);
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    .line 407
    invoke-virtual {p0, v5}, Lcom/android/launcher2/ThumbnailView;->performHapticFeedback(I)Z

    .line 408
    const/4 v1, 0x5

    #v1=(PosByte);
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/ThumbnailView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 409
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v1=(Reference);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ThumbnailViewAdapter;->onStartDragging(I)V

    .line 412
    :cond_2
    #v1=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 389
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 370
    #v1=(Null);
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/DragableScreenView;->onLayout(ZIIII)V

    .line 372
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 373
    iput-boolean v1, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    .line 375
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mEnterAnimationRequested:Z

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/launcher2/ThumbnailView;->prepareSwitchingAnimation(Z)V

    .line 377
    iput-boolean v1, p0, Lcom/android/launcher2/ThumbnailView;->mEnterAnimationRequested:Z

    .line 380
    :cond_0
    #v0=(Boolean);
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mExitAnimationRequested:Z

    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0, v1}, Lcom/android/launcher2/ThumbnailView;->prepareSwitchingAnimation(Z)V

    .line 382
    iput-boolean v1, p0, Lcom/android/launcher2/ThumbnailView;->mExitAnimationRequested:Z

    .line 385
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 344
    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mMeasuredWidth:I

    .line 345
    .local v1, previousMeasuredWidth:I
    #v1=(Integer);
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasuredHeight:I

    .line 347
    .local v0, previousMeasuredHeight:I
    #v0=(Integer);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    #v2=(Integer);
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/ThumbnailView;->setMeasuredDimension(II)V

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    :cond_0
    #v2=(Integer);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mMeasuredWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mMeasuredHeight:I

    if-eq v0, v2, :cond_2

    .line 361
    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    .line 362
    invoke-direct {p0}, Lcom/android/launcher2/ThumbnailView;->updateScreenGridSize()V

    .line 365
    :cond_2
    #v2=(Integer);
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/DragableScreenView;->onMeasure(II)V

    .line 366
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x5

    #v3=(PosByte);
    const/4 v4, -0x1

    .line 422
    #v4=(Byte);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    #v2=(Integer);
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Integer);v5=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    #v2=(Boolean);
    return v2

    .line 424
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(PosByte);v4=(Byte);v5=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getTouchState()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mNextScreen:I

    if-ne v2, v4, :cond_0

    .line 425
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    #v2=(Float);
    iput v2, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionX:F

    .line 426
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mActivePointerId:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    #v2=(Float);
    iput v2, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionY:F

    .line 429
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/ThumbnailScreen;

    .line 430
    .local v1, screen:Lcom/android/launcher2/ThumbnailScreen;
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mAnimationDuration:I

    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v4=(Integer);
    rem-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionY:F

    #v5=(Integer);
    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/ThumbnailScreen;->moveThumbnailTo(IIII)I

    move-result v0

    .line 437
    .local v0, newIndex:I
    #v0=(Integer);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 438
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/ThumbnailView;->updateThumbnailPositionMapping(II)V

    .line 439
    iput v0, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    goto :goto_0

    .line 443
    .end local v0           #newIndex:I
    .end local v1           #screen:Lcom/android/launcher2/ThumbnailScreen;
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v3=(PosByte);v4=(Byte);v5=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getTouchState()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/ThumbnailViewAdapter;->onEndDragging()V

    .line 446
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mNextScreen:I

    #v2=(Integer);
    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/ThumbnailScreen;

    .line 448
    .restart local v1       #screen:Lcom/android/launcher2/ThumbnailScreen;
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v3=(Integer);
    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ThumbnailScreen;->resetThumbnailLayout(I)V

    .line 449
    iput v4, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    .line 451
    iget-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionChanged:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/launcher2/ThumbnailViewAdapter;->onThumbnailPositionChanged([I)V

    .line 453
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionChanged:Z

    goto :goto_0

    .line 446
    .end local v1           #screen:Lcom/android/launcher2/ThumbnailScreen;
    :cond_1
    #v1=(Uninit);v2=(Integer);v3=(PosByte);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mNextScreen:I

    goto :goto_1

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected refreshThumbnails()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    #v14=(Null);
    const/4 v13, 0x1

    #v13=(One);
    const/4 v12, 0x0

    .line 293
    #v12=(Null);
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .line 295
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    iput-boolean v12, p0, Lcom/android/launcher2/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 298
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailViewAdapter;->getCount()I

    move-result v6

    .line 302
    .local v6, count:I
    #v6=(Integer);
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v0=(Integer);
    add-int/2addr v0, v6

    sub-int/2addr v0, v13

    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v1=(Integer);
    div-int v9, v0, v1

    .line 303
    .local v9, requestScreenCount:I
    #v9=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getScreenCount()I

    move-result v7

    .line 306
    .local v7, currentScreenCount:I
    #v7=(Integer);
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    #v0=(Conflicted);v8=(Integer);
    if-ge v8, v7, :cond_2

    .line 307
    invoke-virtual {p0, v8}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 306
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 311
    :cond_2
    :goto_2
    #v0=(Conflicted);
    if-ge v9, v7, :cond_3

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/launcher2/ThumbnailView;->removeScreen(I)V

    goto :goto_2

    .line 314
    :cond_3
    :goto_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v10=(Conflicted);
    if-le v9, v7, :cond_4

    .line 315
    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget v2, p0, Lcom/android/launcher2/ThumbnailView;->mRowCountPerScreen:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mColumnCountPerScreen:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    #v4=(Integer);
    iget v5, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    #v5=(Integer);
    move-object v0, p0

    #v0=(Reference);
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ThumbnailView;->createScreen(Landroid/content/Context;IIII)Lcom/android/launcher2/ThumbnailScreen;

    move-result-object v10

    .line 319
    .local v10, screen:Lcom/android/launcher2/ThumbnailScreen;
    #v10=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getWidth()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getHeight()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v10, v12, v12, v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->layout(IIII)V

    .line 320
    invoke-virtual {p0, v10}, Lcom/android/launcher2/ThumbnailView;->addView(Landroid/view/View;)V

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 325
    .end local v10           #screen:Lcom/android/launcher2/ThumbnailScreen;
    :cond_4
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v10=(Conflicted);
    const/4 v8, 0x0

    :goto_4
    #v11=(Conflicted);
    if-ge v8, v6, :cond_5

    .line 326
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    invoke-virtual {v0, v8, v14, v14}, Lcom/android/launcher2/ThumbnailViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 327
    .local v11, thumbnail:Landroid/view/View;
    #v11=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v0=(Integer);
    div-int v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Lcom/android/launcher2/ThumbnailScreen;

    .line 330
    .restart local v10       #screen:Lcom/android/launcher2/ThumbnailScreen;
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailWidth:I

    iget v1, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailHeight:I

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->addView(Landroid/view/View;II)V

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 334
    .end local v10           #screen:Lcom/android/launcher2/ThumbnailScreen;
    .end local v11           #thumbnail:Landroid/view/View;
    :cond_5
    #v0=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    iput-boolean v12, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionChanged:Z

    .line 335
    new-array v0, v6, [I

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    .line 336
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailPositionMapping:[I

    aput v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 338
    :cond_6
    iget v0, p0, Lcom/android/launcher2/ThumbnailView;->mCurrentScreen:I

    #v0=(Integer);
    sub-int v1, v9, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailView;->setCurrentScreen(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/android/launcher2/ThumbnailViewAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView;->mAdapterObserver:Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/ThumbnailViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    :cond_0
    #v1=(Conflicted);
    iput-object p1, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    .line 97
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    iget-object v1, p0, Lcom/android/launcher2/ThumbnailView;->mAdapterObserver:Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/ThumbnailViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapterObserver:Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;->onInvalidated()V

    .line 99
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 146
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ThumbnailView;->mAnimationDuration:I

    .line 147
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 5
    .parameter "l"

    .prologue
    const/4 v4, 0x1

    .line 155
    #v4=(One);
    iput-object p1, p0, Lcom/android/launcher2/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getScreenCount()I

    move-result v3

    #v3=(Integer);
    sub-int v1, v3, v4

    .local v1, screenIndex:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-ltz v1, :cond_1

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .line 158
    .local v0, screen:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    #v3=(Integer);
    sub-int v2, v3, v4

    .local v2, thumbnailIndex:I
    :goto_1
    #v2=(Integer);v3=(Conflicted);
    if-ltz v2, :cond_0

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 156
    :cond_0
    #v3=(Conflicted);
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 162
    .end local v0           #screen:Landroid/view/ViewGroup;
    .end local v2           #thumbnailIndex:I
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public setScreenGridSize(II)V
    .locals 1
    .parameter "rowCount"
    .parameter "columnCount"

    .prologue
    const/4 v0, 0x1

    .line 111
    #v0=(One);
    iput p1, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedRowCountPerScreen:I

    .line 112
    iput p2, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    .line 113
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->requestLayout()V

    .line 117
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "padding"

    .prologue
    const/4 v0, 0x1

    .line 137
    #v0=(One);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->setScreenPadding(Landroid/graphics/Rect;)V

    .line 139
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->requestLayout()V

    .line 143
    return-void
.end method

.method public setThumbnailMeasureSpec(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 127
    #v0=(One);
    iput p1, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailWidth:I

    .line 128
    iput p2, p0, Lcom/android/launcher2/ThumbnailView;->mRequesetedThumbnailHeight:I

    .line 129
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mMeasurmentRequested:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mLayoutRequested:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->requestLayout()V

    .line 133
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mShowing:Z

    #v0=(Boolean);
    if-ne v0, p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 171
    :cond_1
    #v0=(Boolean);
    iput-boolean p1, p0, Lcom/android/launcher2/ThumbnailView;->mShowing:Z

    .line 172
    iget-boolean v0, p0, Lcom/android/launcher2/ThumbnailView;->mShowing:Z

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/launcher2/ThumbnailView;->prepareSwitchingAnimation(Z)V

    goto :goto_0

    .line 176
    :cond_2
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/launcher2/ThumbnailView;->prepareSwitchingAnimation(Z)V

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 7
    .parameter "whichScreen"

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 477
    #v5=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getScreenCount()I

    move-result v3

    #v3=(Integer);
    sub-int/2addr v3, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 479
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView;->getTouchState()I

    move-result v3

    const/4 v4, 0x5

    #v4=(PosByte);
    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v4=(Integer);
    div-int/2addr v3, v4

    if-eq p1, v3, :cond_0

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/ThumbnailScreen;

    .line 485
    .local v2, toScreen:Lcom/android/launcher2/ThumbnailScreen;
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    div-int v0, v3, v4

    .line 486
    .local v0, fromScreenIndex:I
    #v0=(Integer);
    if-ge v0, p1, :cond_1

    move v4, v6

    :goto_0
    #v4=(Boolean);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/ThumbnailScreen;

    iget v5, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    #v5=(Integer);
    iget v6, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    #v6=(Integer);
    rem-int/2addr v5, v6

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/launcher2/ThumbnailScreen;->moveThumbnailInto(ZLcom/android/launcher2/ThumbnailScreen;I)I

    move-result v1

    .line 492
    .local v1, newIndex:I
    #v1=(Integer);
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mAnimationDuration:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionX:F

    #v4=(Integer);
    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/ThumbnailView;->mLastMotionY:F

    float-to-int v5, v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher2/ThumbnailScreen;->moveThumbnailTo(IIII)I

    move-result v1

    .line 499
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mThumbnailCountPerScreen:I

    mul-int/2addr v3, p1

    add-int/2addr v1, v3

    .line 500
    iget v3, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    invoke-direct {p0, v3, v1}, Lcom/android/launcher2/ThumbnailView;->updateThumbnailPositionMapping(II)V

    .line 501
    iput v1, p0, Lcom/android/launcher2/ThumbnailView;->mDragingSource:I

    .line 504
    .end local v0           #fromScreenIndex:I
    .end local v1           #newIndex:I
    .end local v2           #toScreen:Lcom/android/launcher2/ThumbnailScreen;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->snapToScreen(I)V

    .line 505
    return-void

    .restart local v0       #fromScreenIndex:I
    .restart local v2       #toScreen:Lcom/android/launcher2/ThumbnailScreen;
    :cond_1
    #v0=(Integer);v1=(Uninit);v2=(Reference);v5=(Null);v6=(One);
    move v4, v5

    .line 486
    #v4=(Null);
    goto :goto_0
.end method

.method protected startSwitchingAnimation(Z)V
    .locals 0
    .parameter "entering"

    .prologue
    .line 204
    return-void
.end method

*/}
