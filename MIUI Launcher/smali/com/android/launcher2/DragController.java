package com.android.launcher2; class DragController {/*

.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mDeleteRegion:Landroid/graphics/RectF;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragInfo:Lcom/android/launcher2/ItemInfo;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragSource:Lcom/android/launcher2/DragSource;

.field private mDragView:Lcom/android/launcher2/DragView;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mListener:Lcom/android/launcher2/DragController$DragListener;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mSecondaryPointerId:I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    .line 48
    const/4 v0, 0x1

    #v0=(One);
    sput v0, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    #p0=(Reference);
    new-instance v0, Landroid/os/Vibrator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 109
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    .line 110
    new-instance v0, Lcom/android/launcher2/DragController$ScrollRunnable;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    .line 145
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    .line 146
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 147
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method private static clamp(III)I
    .locals 1
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 583
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 588
    :goto_0
    #v0=(Integer);
    return v0

    .line 585
    :cond_0
    #v0=(Uninit);
    if-lt p0, p2, :cond_1

    .line 586
    const/4 v0, 0x1

    #v0=(One);
    sub-int v0, p2, v0

    #v0=(Integer);
    goto :goto_0

    :cond_1
    #v0=(Uninit);
    move v0, p0

    .line 588
    #v0=(Integer);
    goto :goto_0
.end method

.method private drop(FF)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 501
    iget-object v8, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 502
    .local v8, coordinates:[I
    #v8=(Reference);
    float-to-int v0, p1

    #v0=(Integer);
    float-to-int v1, p2

    #v1=(Integer);
    invoke-direct {p0, v0, v1, v8}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v9

    .line 504
    .local v9, dropTarget:Lcom/android/launcher2/DropTarget;
    #v9=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v9, v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    aget v2, v8, v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    aget v3, v8, v3

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v4=(Integer);
    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    #v5=(Integer);
    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    #v7=(Reference);
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 508
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 510
    if-eqz v9, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    #v1=(Reference);
    const/4 v0, 0x0

    aget v2, v8, v0

    #v2=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    aget v3, v8, v0

    #v3=(Integer);
    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    float-to-int v4, v0

    #v4=(Integer);
    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v0

    #v5=(Integer);
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    #v7=(Reference);
    move-object v0, v9

    #v0=(Reference);
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 513
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v0, 0x0

    #v0=(Null);
    aget v2, v8, v0

    const/4 v0, 0x1

    #v0=(One);
    aget v3, v8, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    float-to-int v4, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v0, v9

    #v0=(Reference);
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    const/4 v0, 0x0

    #v0=(Null);
    aget v2, v8, v0

    const/4 v0, 0x1

    #v0=(One);
    aget v3, v8, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    float-to-int v4, v0

    iget v0, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v0, v9

    #v0=(Reference);
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v10

    .line 517
    .local v10, success:Z
    #v10=(Boolean);
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    check-cast v9, Landroid/view/View;

    .end local v9           #dropTarget:Lcom/android/launcher2/DropTarget;
    invoke-interface {v0, v9, v10}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 524
    .end local v10           #success:Z
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Conflicted);
    return-void

    .line 522
    .restart local v9       #dropTarget:Lcom/android/launcher2/DropTarget;
    :cond_1
    #v0=(Boolean);v1=(Conflicted);v10=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    #v0=(Reference);
    check-cast v9, Landroid/view/View;

    .end local v9           #dropTarget:Lcom/android/launcher2/DropTarget;
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v0, v9, v1}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 523
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    goto :goto_0
.end method

.method private endDrag()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v2, 0x0

    .line 308
    #v2=(Null);
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    #v1=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    #v7=(Reference);
    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, v2

    #v5=(Null);
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 311
    iput-object v8, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 314
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    invoke-interface {v0, v8, v2}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 318
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 319
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    invoke-interface {v0}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->remove()V

    .line 327
    iput-object v8, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    .line 331
    :cond_4
    #v0=(Conflicted);
    const/4 v0, 0x3

    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getEditingState()I

    move-result v1

    #v1=(Integer);
    if-ne v0, v1, :cond_5

    .line 332
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 334
    :cond_5
    #v0=(Conflicted);
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v10, 0x1

    .line 547
    #v10=(One);
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 549
    .local v4, r:Landroid/graphics/Rect;
    #v4=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 550
    .local v2, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 551
    .local v1, count:I
    #v1=(Integer);
    sub-int v3, v1, v10

    .local v3, i:I
    :goto_0
    #v0=(Conflicted);v3=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-ltz v3, :cond_2

    .line 552
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/launcher2/DropTarget;

    .line 554
    .local v5, target:Lcom/android/launcher2/DropTarget;
    move-object v0, v5

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 555
    .local v6, targetView:Landroid/view/View;
    #v6=(Reference);
    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 551
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 558
    :cond_1
    invoke-interface {v5, v4}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 559
    invoke-interface {v5, p3}, Lcom/android/launcher2/DropTarget;->getLocationOnScreen([I)V

    .line 560
    aget v7, p3, v11

    #v7=(Integer);
    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v8

    #v8=(Integer);
    sub-int/2addr v7, v8

    aget v8, p3, v10

    invoke-interface {v5}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v9

    #v9=(Integer);
    sub-int/2addr v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 561
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 562
    aget v7, p3, v11

    #v7=(Integer);
    sub-int v7, p1, v7

    aput v7, p3, v11

    .line 563
    aget v7, p3, v10

    sub-int v7, p2, v7

    aput v7, p3, v10

    move-object v7, v5

    .line 567
    .end local v5           #target:Lcom/android/launcher2/DropTarget;
    .end local v6           #targetView:Landroid/view/View;
    :goto_1
    #v0=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Conflicted);v9=(Conflicted);
    return-object v7

    :cond_2
    #v7=(Conflicted);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 252
    #v4=(Null);
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 253
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 256
    .local v3, willNotCache:Z
    #v3=(Boolean);
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 261
    .local v2, color:I
    #v2=(Integer);
    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 267
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    #v1=(Reference);
    if-nez v1, :cond_1

    .line 268
    const-string v4, "Launcher.DragController"

    #v4=(Reference);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "failed getViewBitmap("

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    #v6=(Reference);
    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    const/4 v4, 0x0

    .line 283
    :goto_0
    #v0=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v4

    .line 272
    :cond_1
    #v0=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, bitmap:Landroid/graphics/Bitmap;
    #v0=(Reference);
    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 277
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 279
    :cond_2
    if-eqz v2, :cond_3

    .line 280
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_3
    move-object v4, v0

    .line 283
    #v4=(Reference);
    goto :goto_0
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    #v0=(Reference);
    const-string v1, "window"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 577
    return-void
.end method

.method private validateDropTargets()V
    .locals 8

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 528
    .local v2, dropTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/DropTarget;>;"
    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 529
    .local v1, count:I
    #v1=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    sub-int v3, v1, v7

    .local v3, i:I
    :goto_0
    #v0=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Boolean);
    if-ltz v3, :cond_2

    .line 530
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/launcher2/DropTarget;

    .line 533
    .local v4, target:Lcom/android/launcher2/DropTarget;
    move-object v0, v4

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 534
    .local v5, targetView:Landroid/view/View;
    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 535
    .local v6, viewParent:Landroid/view/ViewParent;
    :goto_1
    #v6=(Reference);
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_0

    .line 536
    check-cast v6, Landroid/view/View;

    .end local v6           #viewParent:Landroid/view/ViewParent;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .restart local v6       #viewParent:Landroid/view/ViewParent;
    goto :goto_1

    .line 540
    :cond_0
    instance-of v7, v6, Landroid/view/ViewRoot;

    if-nez v7, :cond_1

    .line 541
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 529
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 544
    .end local v4           #target:Lcom/android/launcher2/DropTarget;
    .end local v5           #targetView:Landroid/view/View;
    .end local v6           #viewParent:Landroid/view/ViewParent;
    :cond_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    .line 305
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v0=(Boolean);
    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 340
    #v5=(Null);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 342
    .local v0, action:I
    #v0=(Integer);
    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->recordScreenSize()V

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #v4=(Reference);
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    #v4=(Integer);
    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v1

    .line 347
    .local v1, screenX:I
    #v1=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #v4=(Reference);
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    #v4=(Integer);
    invoke-static {v3, v5, v4}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v2

    .line 349
    .local v2, screenY:I
    #v2=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v3=(Boolean);
    return v3

    .line 355
    :pswitch_1
    #v3=(Integer);
    int-to-float v3, v1

    #v3=(Float);
    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 356
    int-to-float v3, v2

    iput v3, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 357
    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    goto :goto_0

    .line 361
    :pswitch_2
    #v3=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_0

    .line 365
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 366
    int-to-float v3, v1

    #v3=(Float);
    int-to-float v4, v2

    #v4=(Float);
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 368
    :cond_1
    #v4=(Integer);
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_0

    .line 349
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 390
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 392
    .local v19, scrollView:Landroid/view/View;
    #v19=(Reference);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v0=(Boolean);
    move v5, v0

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 393
    const/4 v5, 0x0

    .line 497
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return v5

    .line 396
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 398
    .local v13, action:I
    #v13=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    #v5=(Float);
    float-to-int v5, v5

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v7, v0

    #v7=(Reference);
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    #v7=(Integer);
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v17

    .line 399
    .local v17, screenX:I
    #v17=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    #v5=(Float);
    float-to-int v5, v5

    #v5=(Integer);
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v7, v0

    #v7=(Reference);
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    #v7=(Integer);
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/DragController;->clamp(III)I

    move-result v18

    .line 401
    .local v18, screenY:I
    #v18=(Integer);
    and-int/lit16 v5, v13, 0xff

    packed-switch v5, :pswitch_data_0

    .line 497
    :cond_1
    :goto_1
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    const/4 v5, 0x1

    #v5=(One);
    goto :goto_0

    .line 403
    :pswitch_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Null);v7=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);
    const v5, 0xff00

    #v5=(Char);
    and-int/2addr v5, v13

    #v5=(Integer);
    shr-int/lit8 v16, v5, 0x8

    .line 404
    .local v16, index:I
    #v16=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v16

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    move v0, v5

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    .line 405
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    move-object v5, v0

    #v5=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    move-object v0, v5

    #v0=(Reference);
    move-object/from16 v1, p1

    move v2, v6

    #v2=(Integer);
    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/DragScroller;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 409
    .end local v16           #index:I
    :pswitch_2
    #v1=(Uninit);v2=(Uninit);v5=(Integer);v6=(Null);v16=(Uninit);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    #v0=(Integer);
    move v5, v0

    if-ltz v5, :cond_1

    .line 410
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    move-object v5, v0

    #v5=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    move-object v0, v5

    #v0=(Reference);
    move-object/from16 v1, p1

    #v1=(Reference);
    move v2, v6

    #v2=(Integer);
    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/DragScroller;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    .line 411
    const/4 v5, -0x1

    #v5=(Byte);
    move v0, v5

    #v0=(Byte);
    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    goto :goto_1

    .line 416
    :pswitch_3
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v5=(Integer);v6=(Null);
    move/from16 v0, v17

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v5, v0

    #v5=(Float);
    move v0, v5

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mMotionDownX:F

    .line 417
    move/from16 v0, v18

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .line 419
    const/16 v5, 0x14

    #v5=(PosByte);
    move/from16 v0, v17

    #v0=(Integer);
    move v1, v5

    #v1=(PosByte);
    if-lt v0, v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v5

    #v5=(Integer);
    const/16 v6, 0x14

    #v6=(PosByte);
    sub-int/2addr v5, v6

    move/from16 v0, v17

    move v1, v5

    #v1=(Integer);
    if-le v0, v1, :cond_3

    .line 420
    :cond_2
    const/4 v5, 0x1

    #v5=(One);
    move v0, v5

    #v0=(One);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 421
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    #v6=(Reference);
    const-wide/16 v7, 0x258

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 423
    :cond_3
    #v0=(Integer);v1=(Integer);v5=(Integer);v6=(PosByte);v7=(Integer);v8=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    move v0, v5

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    goto/16 :goto_1

    .line 430
    :pswitch_4
    #v0=(Reference);v1=(Uninit);v5=(Integer);v6=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v5, v0

    #v5=(Reference);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    #v6=(Float);
    float-to-int v6, v6

    #v6=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    #v7=(Float);
    float-to-int v7, v7

    #v7=(Integer);
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/DragView;->move(II)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    move-object v14, v0

    .line 434
    .local v14, coordinates:[I
    #v14=(Reference);
    move-object/from16 v0, p0

    move/from16 v1, v17

    #v1=(Integer);
    move/from16 v2, v18

    #v2=(Integer);
    move-object v3, v14

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v4

    .line 435
    .local v4, dropTarget:Lcom/android/launcher2/DropTarget;
    #v4=(Reference);
    if-eqz v4, :cond_8

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    if-ne v5, v4, :cond_6

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v5, v0

    const/4 v6, 0x0

    #v6=(Null);
    aget v6, v14, v6

    #v6=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    aget v7, v14, v7

    #v7=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    move v8, v0

    #v8=(Integer);
    float-to-int v8, v8

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    #v0=(Integer);
    move v9, v0

    #v9=(Integer);
    float-to-int v9, v9

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v10, v0

    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v11, v0

    #v11=(Reference);
    invoke-interface/range {v4 .. v11}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 453
    :cond_4
    :goto_2
    #v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-object v0, v4

    move-object/from16 v1, p0

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 456
    const/4 v15, 0x0

    .line 457
    .local v15, inDeleteRegion:Z
    #v15=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    move-object v5, v0

    move/from16 v0, v17

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v6, v0

    #v6=(Float);
    move/from16 v0, v18

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v7, v0

    #v7=(Float);
    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v15

    .line 460
    :cond_5
    #v0=(Conflicted);v6=(Conflicted);v7=(Integer);v15=(Boolean);
    if-nez v15, :cond_9

    const/16 v5, 0x14

    #v5=(PosByte);
    move/from16 v0, v17

    #v0=(Integer);
    move v1, v5

    #v1=(PosByte);
    if-ge v0, v1, :cond_9

    .line 461
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mScrollState:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    if-nez v5, :cond_1

    .line 462
    const/4 v5, 0x1

    #v5=(One);
    move v0, v5

    #v0=(One);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 463
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v5, v0

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    #v6=(Reference);
    const-wide/16 v7, 0x258

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 440
    .end local v15           #inDeleteRegion:Z
    :cond_6
    #v1=(Integer);v6=(Integer);v7=(Integer);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v15=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v6, v0

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aget v7, v14, v7

    #v7=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    aget v8, v14, v8

    #v8=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    move v9, v0

    #v9=(Integer);
    float-to-int v9, v9

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    float-to-int v10, v10

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v11, v0

    #v11=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v12, v0

    #v12=(Reference);
    invoke-interface/range {v5 .. v12}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    .line 444
    :cond_7
    #v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v5, v0

    const/4 v6, 0x0

    #v6=(Null);
    aget v6, v14, v6

    #v6=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    aget v7, v14, v7

    #v7=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    move v8, v0

    #v8=(Integer);
    float-to-int v8, v8

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    #v0=(Integer);
    move v9, v0

    #v9=(Integer);
    float-to-int v9, v9

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v10, v0

    #v10=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v11, v0

    #v11=(Reference);
    invoke-interface/range {v4 .. v11}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    goto/16 :goto_2

    .line 448
    :cond_8
    #v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    move-object v6, v0

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aget v7, v14, v7

    #v7=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    aget v8, v14, v8

    #v8=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    #v0=(Integer);
    move v9, v0

    #v9=(Integer);
    float-to-int v9, v9

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    float-to-int v10, v10

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    move-object v11, v0

    #v11=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    move-object v12, v0

    #v12=(Reference);
    invoke-interface/range {v5 .. v12}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V

    goto/16 :goto_2

    .line 466
    .restart local v15       #inDeleteRegion:Z
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v15=(Boolean);
    if-nez v15, :cond_a

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v5

    #v5=(Integer);
    const/16 v6, 0x14

    #v6=(PosByte);
    sub-int/2addr v5, v6

    move/from16 v0, v17

    #v0=(Integer);
    move v1, v5

    #v1=(Integer);
    if-le v0, v1, :cond_a

    .line 467
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mScrollState:I

    #v0=(Integer);
    move v5, v0

    if-nez v5, :cond_1

    .line 468
    const/4 v5, 0x1

    #v5=(One);
    move v0, v5

    #v0=(One);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 469
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v5, v0

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    #v6=(Reference);
    const-wide/16 v7, 0x258

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 472
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mScrollState:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-ne v5, v6, :cond_b

    .line 473
    const/4 v5, 0x0

    #v5=(Null);
    move v0, v5

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 474
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v5, v0

    #v5=(Reference);
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 476
    :cond_b
    #v0=(Integer);v1=(Conflicted);v5=(Integer);v6=(One);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    #v0=(Integer);
    move v5, v0

    if-lez v5, :cond_1

    .line 479
    move/from16 v0, v17

    int-to-float v0, v0

    #v0=(Float);
    move v5, v0

    #v5=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    move-object/from16 v0, p1

    #v0=(Reference);
    move v1, v6

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    #v6=(Float);
    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    #v6=(Integer);
    cmpl-float v5, v5, v6

    #v5=(Byte);
    if-lez v5, :cond_1

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    move-object v5, v0

    #v5=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragController;->mSecondaryPointerId:I

    #v0=(Integer);
    move v6, v0

    move-object v0, v5

    #v0=(Reference);
    move-object/from16 v1, p1

    #v1=(Reference);
    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/DragScroller;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1

    .line 486
    .end local v4           #dropTarget:Lcom/android/launcher2/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #inDeleteRegion:Z
    :pswitch_5
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    #v5=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    move-object v6, v0

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v0=(Boolean);
    move v5, v0

    #v5=(Boolean);
    if-eqz v5, :cond_c

    .line 488
    move/from16 v0, v17

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v5, v0

    #v5=(Float);
    move/from16 v0, v18

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v6, v0

    #v6=(Float);
    move-object/from16 v0, p0

    #v0=(Reference);
    move v1, v5

    #v1=(Float);
    move v2, v6

    #v2=(Float);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 490
    :cond_c
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto/16 :goto_1

    .line 494
    :pswitch_6
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v5=(Integer);v6=(Null);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto/16 :goto_1

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    return-void
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDeleteRegion:Landroid/graphics/RectF;

    .line 642
    return-void
.end method

.method public setDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    .line 605
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    .line 594
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    .line 380
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    .line 633
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 598
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IIIIIILcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V
    .locals 13
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "textureLeft"
    .parameter "textureTop"
    .parameter "textureWidth"
    .parameter "textureHeight"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->validateDropTargets()V

    .line 216
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    #v5=(Reference);
    const/4 v6, 0x3

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 221
    :cond_0
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    #v5=(Reference);
    if-nez v5, :cond_1

    .line 222
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 225
    :cond_1
    #v4=(Conflicted);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    if-eqz v5, :cond_2

    .line 228
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mListener:Lcom/android/launcher2/DragController$DragListener;

    move-object v0, v5

    #v0=(Reference);
    move-object/from16 v1, p8

    #v1=(Reference);
    move-object/from16 v2, p9

    #v2=(Reference);
    move/from16 v3, p10

    #v3=(Integer);
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 231
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget v5, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    #v5=(Integer);
    float-to-int v5, v5

    sub-int v7, v5, p2

    .line 232
    .local v7, registrationX:I
    #v7=(Integer);
    iget v5, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    float-to-int v5, v5

    sub-int v8, v5, p3

    .line 234
    .local v8, registrationY:I
    #v8=(Integer);
    iget v5, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    int-to-float v6, p2

    #v6=(Float);
    sub-float/2addr v5, v6

    #v5=(Float);
    iput v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetX:F

    .line 235
    iget v5, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    #v5=(Integer);
    move/from16 v0, p3

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move v6, v0

    sub-float/2addr v5, v6

    #v5=(Float);
    iput v5, p0, Lcom/android/launcher2/DragController;->mTouchOffsetY:F

    .line 237
    const/4 v5, 0x1

    #v5=(One);
    iput-boolean v5, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 238
    move-object/from16 v0, p8

    #v0=(Reference);
    move-object v1, p0

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragSource:Lcom/android/launcher2/DragSource;

    .line 239
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragController;->mDragInfo:Lcom/android/launcher2/ItemInfo;

    .line 241
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    #v5=(Reference);
    const-wide/16 v9, 0x23

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {v5, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 243
    new-instance v4, Lcom/android/launcher2/DragView;

    #v4=(UninitRef);
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mContext:Landroid/content/Context;

    move-object v6, p1

    #v6=(Reference);
    move/from16 v9, p4

    #v9=(Integer);
    move/from16 v10, p5

    #v10=(Integer);
    move/from16 v11, p6

    #v11=(Integer);
    move/from16 v12, p7

    #v12=(Integer);
    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    #v4=(Reference);
    iput-object v4, p0, Lcom/android/launcher2/DragController;->mDragView:Lcom/android/launcher2/DragView;

    .line 245
    .local v4, dragView:Lcom/android/launcher2/DragView;
    iget-object v5, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/launcher2/DragController;->mMotionDownX:F

    #v6=(Integer);
    float-to-int v6, v6

    iget v7, p0, Lcom/android/launcher2/DragController;->mMotionDownY:F

    .end local v7           #registrationX:I
    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/DragView;->show(Landroid/os/IBinder;II)V

    .line 246
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V
    .locals 14
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 160
    iget-boolean v2, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-void

    .line 162
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mOriginator:Landroid/view/View;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 166
    .local v3, b:Landroid/graphics/Bitmap;
    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 171
    iget-object v13, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 172
    .local v13, loc:[I
    #v13=(Reference);
    invoke-virtual {p1, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 173
    const/4 v2, 0x0

    #v2=(Null);
    aget v4, v13, v2

    .line 174
    .local v4, screenX:I
    #v4=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aget v5, v13, v2

    .line 176
    .local v5, screenY:I
    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    #v9=(Integer);
    move-object v2, p0

    #v2=(Reference);
    move-object/from16 v10, p2

    #v10=(Reference);
    move-object/from16 v11, p3

    #v11=(Reference);
    move/from16 v12, p4

    #v12=(Integer);
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IIIIIILcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 179
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    #v2=(Integer);
    move/from16 v0, p4

    #v0=(Integer);
    move v1, v2

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 182
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

*/}
