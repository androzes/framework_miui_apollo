package com.android.launcher2; class CellLayout {/*

.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$1;,
        Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;,
        Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    }
.end annotation


# static fields
.field private static final DRAG_OVER_MOVEMENT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private final mCellWidth:I

.field mCellXY:[I

.field private mDisableDrawingCacheTemporary:Z

.field private mDrawingCacheHolder:Landroid/graphics/Bitmap;

.field private mEditingPreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyCellNumber:I

.field private mEnableDrawingCacheHolding:Z

.field private final mFolderHeightAddition:I

.field private final mFolderPaddingTop:I

.field private final mFolderWidthAddition:I

.field private mHCells:I

.field private mHeightGap:I

.field private mInPlaceMovingFrom:I

.field private mInPlaceMovingTo:I

.field private mInvalideCount:I

.field private mLastDownOnOccupiedCell:Z

.field private mLastMovement:[I

.field private mLastMovementTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mMaxVisiableHeight:I

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

.field private mOpenedFolderPosition:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mRect:Landroid/graphics/Rect;

.field private mScreenInvalideRunnerFirst:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;

.field private mScreenInvalideRunnerNormal:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;

.field private mTotalCells:I

.field private mVCells:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetHeightAddition:I

.field private mWidthGap:I

.field private mWorkspacePreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/CellLayout;->DRAG_OVER_MOVEMENT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x4

    #v5=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 107
    #v2=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    #p0=(Reference);
    new-instance v1, Landroid/graphics/Rect;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 79
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [I

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 81
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 91
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    .line 1046
    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    .line 1047
    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mEditingPreview:Ljava/lang/ref/SoftReference;

    .line 1076
    iput v4, p0, Lcom/android/launcher2/CellLayout;->mInvalideCount:I

    .line 1090
    new-instance v1, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mScreenInvalideRunnerNormal:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;

    .line 1091
    new-instance v1, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mScreenInvalideRunnerFirst:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;

    .line 1117
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mDisableDrawingCacheTemporary:Z

    .line 1122
    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 1123
    iput-boolean v3, p0, Lcom/android/launcher2/CellLayout;->mEnableDrawingCacheHolding:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    .local v0, resources:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f0b000c

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 111
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 112
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    .line 113
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    .line 114
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    .line 115
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidgetHeightAddition:I

    .line 116
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mFolderHeightAddition:I

    .line 117
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mFolderWidthAddition:I

    .line 118
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mFolderPaddingTop:I

    .line 119
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mMaxVisiableHeight:I

    .line 121
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    .line 122
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    .line 123
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    #v2=(Integer);
    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    .line 125
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    #v1=(Reference);
    const-class v2, Landroid/view/View;

    #v2=(Reference);
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 126
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    #v1=(Integer);
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->setWholeAnimationCacheEnabled(Z)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->updateVision()V

    .line 136
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 137
    new-instance v1, Lcom/android/launcher2/OnLongClickAgent;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/launcher2/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    .line 139
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$210(Lcom/android/launcher2/CellLayout;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mInvalideCount:I

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    sub-int v1, v0, v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mInvalideCount:I

    return v0
.end method

.method private applyInPlaceMovement(II)V
    .locals 13
    .parameter "from"
    .parameter "to"

    .prologue
    .line 720
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    #v9=(Integer);
    if-ne p1, v9, :cond_0

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    if-ne p2, v9, :cond_0

    .line 777
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void

    .line 722
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Integer);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    new-array v1, v9, [I

    .line 723
    .local v1, animationDeltaX:[I
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    new-array v2, v9, [I

    .line 727
    .local v2, animationDeltaY:[I
    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    #v10=(One);
    sub-int v4, v9, v10

    .local v4, i:I
    :goto_1
    #v4=(Integer);v8=(Conflicted);
    if-ltz v4, :cond_1

    .line 728
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 729
    .local v8, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    #v9=(Integer);
    aput v9, v1, v4

    .line 730
    iget v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    aput v9, v2, v4

    .line 731
    const/4 v9, 0x0

    #v9=(Null);
    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    .line 732
    const/4 v9, 0x0

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    .line 727
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 736
    .end local v8           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v8=(Conflicted);v9=(Integer);
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->getViewPositionMappings(II)Ljava/util/ArrayList;

    move-result-object v7

    .line 738
    .local v7, newMappings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout$ViewPositionMapping;>;"
    #v7=(Reference);
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    :goto_2
    #v6=(Conflicted);v10=(Integer);v11=(Conflicted);v12=(Conflicted);
    if-ltz v4, :cond_2

    .line 739
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    .line 740
    .local v6, mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    iget-object v9, v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 741
    .restart local v8       #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v9=(Integer);
    iget-object v10, v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    aget v10, v10, v11

    #v10=(Integer);
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    #v11=(Integer);
    iget v12, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    #v12=(Integer);
    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    .line 743
    iget v9, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget-object v10, v6, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    #v10=(Reference);
    const/4 v11, 0x1

    #v11=(One);
    aget v10, v10, v11

    #v10=(Integer);
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    #v11=(Integer);
    iget v12, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    .line 738
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 748
    .end local v6           #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    .end local v8           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    #v6=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    #v10=(One);
    sub-int v4, v9, v10

    :goto_3
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    if-ltz v4, :cond_4

    .line 749
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 750
    .local v3, child:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 753
    .restart local v8       #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    aget v9, v1, v4

    #v9=(Integer);
    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    #v10=(Integer);
    if-ne v9, v10, :cond_3

    aget v9, v2, v4

    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    if-ne v9, v10, :cond_3

    .line 748
    :goto_4
    #v9=(Conflicted);v10=(Conflicted);
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 759
    :cond_3
    #v9=(Integer);v10=(Integer);
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #v0=(UninitRef);
    aget v9, v1, v4

    int-to-float v9, v9

    #v9=(Float);
    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    int-to-float v10, v10

    #v10=(Float);
    aget v11, v2, v4

    #v11=(Integer);
    int-to-float v11, v11

    #v11=(Float);
    iget v12, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    #v12=(Integer);
    int-to-float v12, v12

    #v12=(Float);
    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 762
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    #v0=(Reference);
    sget-object v9, Lcom/android/launcher2/CellLayout;->DRAG_OVER_MOVEMENT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #v9=(Reference);
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 763
    const-wide/16 v9, 0x12c

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 764
    const/4 v9, 0x1

    #v9=(One);
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 765
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 768
    iget v9, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    #v9=(Integer);
    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    #v10=(Integer);
    invoke-direct {p0, v9, v10}, Lcom/android/launcher2/CellLayout;->cellToPositionIndex(II)I

    move-result v5

    .line 769
    .local v5, index:I
    #v5=(Integer);
    sub-int v9, v5, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x14

    int-to-long v9, v9

    #v9=(LongLo);v10=(LongHi);
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 770
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 773
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v3           #child:Landroid/view/View;
    .end local v5           #index:I
    .end local v8           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    .line 774
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    .line 776
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_0
.end method

.method private applyInPlaceMovementInDatabase(IILandroid/content/ContentProviderOperation;)V
    .locals 12
    .parameter "from"
    .parameter "to"
    .parameter "extra"

    .prologue
    const/4 v11, 0x1

    .line 781
    #v11=(One);
    new-instance v10, Ljava/util/ArrayList;

    #v10=(UninitRef);
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #v10=(Reference);
    invoke-virtual {v10, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->getViewPositionMappings(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 787
    .local v9, newMappings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout$ViewPositionMapping;>;"
    #v9=(Reference);
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    sub-int v7, v0, v11

    .local v7, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v8=(Conflicted);
    if-ltz v7, :cond_0

    .line 788
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    .line 789
    .local v8, mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    iget-object v0, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x64

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iget-object v5, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    aget v5, v5, v6

    #v5=(Integer);
    iget-object v6, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    #v6=(Reference);
    aget v6, v6, v11

    #v6=(Integer);
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 799
    .end local v8           #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    :cond_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.launcher2.settings"

    #v1=(Reference);
    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_1
    #v1=(Conflicted);
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    sub-int v7, v0, v11

    :goto_2
    #v0=(Conflicted);
    if-ltz v7, :cond_1

    .line 807
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    .line 808
    .restart local v8       #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    iget-object v0, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    #v0=(Reference);
    iget-object v1, v8, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 806
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 810
    .end local v8           #mapping:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);
    return-void

    .line 802
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_1

    .line 801
    :catch_1
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_1

    .line 800
    :catch_2
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_1
.end method

.method private calculateInPlaceMovement(IIII)[I
    .locals 9
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v6, 0x1

    .line 631
    #v6=(One);
    if-gt p3, v6, :cond_0

    if-gt p4, v6, :cond_0

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    #v4=(Integer);
    if-nez v4, :cond_1

    :cond_0
    #v4=(Conflicted);
    move-object v4, v8

    .line 675
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);
    return-object v4

    .line 636
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 637
    .local v1, cellXY:[I
    #v1=(Reference);
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/CellLayout;->pointToCell(II[I)V

    .line 640
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v4=(Reference);
    aget v5, v1, v7

    #v5=(Integer);
    aget-object v4, v4, v5

    #v4=(Null);
    aget v5, v1, v6

    aget-object v0, v4, v5

    .line 641
    .local v0, cell:Landroid/view/View;
    #v0=(Null);
    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 643
    .local v3, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v4=(Integer);
    if-gt v4, v6, :cond_2

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-le v4, v6, :cond_3

    :cond_2
    move-object v4, v8

    .line 644
    #v4=(Null);
    goto :goto_0

    .line 648
    .end local v3           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    #v3=(Conflicted);v4=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v2, v4, [I

    .line 649
    .local v2, movement:[I
    #v2=(Reference);
    aget v4, v1, v7

    #v4=(Integer);
    aget v5, v1, v6

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/CellLayout;->cellToPositionIndex(II)I

    move-result v4

    aput v4, v2, v7

    .line 652
    aget v4, v2, v7

    aput v4, v2, v6

    .line 653
    :goto_1
    aget v4, v2, v6

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    if-ge v4, v5, :cond_4

    .line 654
    aget v4, v2, v6

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 655
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v4=(Reference);
    aget v5, v1, v7

    aget-object v4, v4, v5

    #v4=(Null);
    aget v5, v1, v6

    aget-object v4, v4, v5

    if-nez v4, :cond_7

    .line 662
    :cond_4
    #v4=(Integer);
    aget v4, v2, v6

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mTotalCells:I

    if-ne v4, v5, :cond_5

    .line 663
    aget v4, v2, v7

    sub-int/2addr v4, v6

    aput v4, v2, v6

    .line 664
    :goto_2
    aget v4, v2, v6

    if-ltz v4, :cond_5

    .line 665
    aget v4, v2, v6

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 666
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v4=(Reference);
    aget v5, v1, v7

    aget-object v4, v4, v5

    #v4=(Null);
    aget v5, v1, v6

    aget-object v4, v4, v5

    if-nez v4, :cond_8

    .line 671
    :cond_5
    #v4=(Integer);
    aget v4, v2, v6

    if-gez v4, :cond_6

    .line 672
    aget v4, v2, v7

    aput v4, v2, v6

    :cond_6
    move-object v4, v2

    .line 675
    #v4=(Reference);
    goto :goto_0

    .line 656
    :cond_7
    #v4=(Null);
    aget v4, v2, v6

    #v4=(Integer);
    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v6

    goto :goto_1

    .line 667
    :cond_8
    #v4=(Null);
    aget v4, v2, v6

    #v4=(Integer);
    sub-int/2addr v4, v6

    aput v4, v2, v6

    goto :goto_2
.end method

.method private cellToPositionIndex(II)I
    .locals 1
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 832
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    #v0=(Integer);
    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method private getViewPositionMappings(II)Ljava/util/ArrayList;
    .locals 10
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout$ViewPositionMapping;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 684
    #v9=(One);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout$ViewPositionMapping;>;"
    #v3=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 689
    .local v5, sourceXY:[I
    #v5=(Reference);
    if-ge p1, p2, :cond_2

    move v1, v9

    .line 690
    .local v1, delta:I
    :goto_0
    #v1=(Byte);v7=(Conflicted);
    move v6, p2

    .line 691
    .local v6, target:I
    #v6=(Integer);
    move v4, v6

    .line 692
    .local v4, source:I
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Integer);v8=(Conflicted);
    if-eq v6, p1, :cond_3

    .line 693
    new-instance v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;

    #v0=(UninitRef);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-direct {v0, p0, v7}, Lcom/android/launcher2/CellLayout$ViewPositionMapping;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    .line 696
    .local v0, current:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    #v0=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v7, v7, [I

    #v7=(Reference);
    iput-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    .line 697
    iget-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->position:[I

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 699
    :cond_0
    #v7=(Conflicted);
    if-eq v4, p1, :cond_1

    .line 700
    sub-int/2addr v4, v1

    .line 703
    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 704
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aget v8, v5, v8

    #v8=(Integer);
    aget-object v7, v7, v8

    #v7=(Null);
    aget v8, v5, v9

    aget-object v7, v7, v8

    iput-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    .line 707
    iget-object v7, v0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->cell:Landroid/view/View;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 708
    .local v2, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v7=(Integer);
    if-ne v7, v9, :cond_0

    iget v7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v7, v9, :cond_0

    .line 713
    .end local v2           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v2=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    move v6, v4

    goto :goto_1

    .line 689
    .end local v0           #current:Lcom/android/launcher2/CellLayout$ViewPositionMapping;
    .end local v1           #delta:I
    .end local v4           #source:I
    .end local v6           #target:I
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const/4 v7, -0x1

    #v7=(Byte);
    move v1, v7

    #v1=(Byte);
    goto :goto_0

    .line 716
    .restart local v1       #delta:I
    .restart local v4       #source:I
    .restart local v6       #target:I
    :cond_3
    #v0=(Conflicted);v2=(Conflicted);v4=(Integer);v6=(Integer);v7=(Conflicted);v8=(Conflicted);
    return-object v3
.end method

.method private onRemoveViews(II)V
    .locals 5
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->updateVision()V

    .line 1033
    if-gez p1, :cond_3

    .line 1044
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1034
    .end local p2
    .local v1, count:I
    :goto_1
    #v1=(Integer);v4=(Uninit);
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_2

    .line 1035
    add-int v3, p1, p2

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    instance-of v3, v0, Lcom/android/launcher2/Folder;

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 1037
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1038
    .local v2, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .end local v2           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v2=(Conflicted);v3=(Boolean);
    move v1, p2

    .line 1040
    .end local p2
    .restart local v1       #count:I
    goto :goto_1

    .line 1041
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .restart local p2
    :cond_2
    #v0=(Conflicted);v3=(Conflicted);
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    #v3=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-eq v3, v4, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    #v3=(Integer);
    iput v3, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    goto :goto_0

    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    move v1, p2

    .end local p2
    .restart local v1       #count:I
    #v1=(Integer);
    goto :goto_1
.end method

.method private positionIndexToCell(I[I)V
    .locals 2
    .parameter "index"
    .parameter "cellXY"

    .prologue
    .line 836
    const/4 v0, 0x0

    #v0=(Null);
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    #v1=(Integer);
    rem-int v1, p1, v1

    aput v1, p2, v0

    .line 837
    const/4 v0, 0x1

    #v0=(One);
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    div-int v1, p1, v1

    aput v1, p2, v0

    .line 838
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 185
    move-object v0, p3

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object v1, v0

    .line 186
    .local v1, cellParams:Lcom/android/launcher2/CellLayout$LayoutParams;
    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->regenerateId:Z

    .line 188
    instance-of v2, p1, Lcom/android/launcher2/Folder;

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 189
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 192
    :cond_0
    #v2=(Boolean);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->updateVision()V

    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    instance-of v2, p1, Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    .line 197
    :cond_1
    return-void
.end method

.method public cancelInPlaceMovement()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 813
    #v5=(Null);
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    #v3=(Integer);
    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    if-nez v3, :cond_0

    .line 829
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void

    .line 817
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    #v4=(One);
    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);
    if-ltz v1, :cond_1

    .line 818
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 819
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 820
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 821
    .local v2, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaX:I

    .line 822
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->animationDeltaY:I

    .line 817
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 825
    .end local v0           #child:Landroid/view/View;
    .end local v2           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingFrom:I

    .line 826
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mInPlaceMovingTo:I

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 4

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/launcher2/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 167
    .local v1, count:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);
    if-ge v2, v1, :cond_0

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0           #child:Landroid/view/View;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 324
    const/4 v0, 0x0

    #v0=(Null);
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    #v3=(Integer);
    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 325
    const/4 v0, 0x1

    #v0=(One);
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 326
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 881
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    #v0=(Boolean);
    return v0
.end method

.method public destroyDrawingCache()V
    .locals 0

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->updateVision()V

    .line 1114
    invoke-super {p0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1115
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 145
    return-void
.end method

.method findNearestVacantArea(IIII)[I
    .locals 20
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 482
    mul-int v14, p3, p4

    #v14=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    #v0=(Integer);
    move v15, v0

    #v15=(Integer);
    if-le v14, v15, :cond_0

    const/4 v14, 0x0

    .line 522
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Reference);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    return-object v14

    .line 485
    :cond_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Integer);v15=(Integer);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    const/4 v14, 0x2

    #v14=(PosByte);
    new-array v6, v14, [I

    .line 486
    .local v6, bestXY:[I
    #v6=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    move-object v7, v0

    .line 487
    .local v7, cellXY:[I
    #v7=(Reference);
    const-wide v4, 0x7fefffffffffffffL

    .line 492
    .local v4, bestDistance:D
    #v4=(LongLo);v5=(LongHi);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    #v0=(Integer);
    move v14, v0

    #v14=(Integer);
    sub-int v12, v14, p3

    .local v12, x:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Integer);v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    if-ltz v12, :cond_7

    .line 493
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    #v0=(Integer);
    move v14, v0

    sub-int v13, v14, p4

    .local v13, y:I
    :goto_2
    #v0=(Conflicted);v13=(Integer);
    if-ltz v13, :cond_6

    .line 495
    move-object/from16 v0, p0

    #v0=(Reference);
    move v1, v12

    #v1=(Integer);
    move v2, v13

    #v2=(Integer);
    move-object v3, v7

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 496
    const/4 v14, 0x0

    #v14=(Null);
    aget v14, v7, v14

    #v14=(Integer);
    sub-int v14, v14, p1

    int-to-double v14, v14

    #v14=(DoubleLo);v15=(DoubleHi);
    const-wide/high16 v16, 0x4000

    #v16=(LongLo);v17=(LongHi);
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const/16 v16, 0x1

    #v16=(One);
    aget v16, v7, v16

    #v16=(Integer);
    sub-int v16, v16, p2

    move/from16 v0, v16

    #v0=(Integer);
    int-to-double v0, v0

    #v0=(DoubleLo);v1=(DoubleHi);
    move-wide/from16 v16, v0

    #v16=(DoubleLo);v17=(DoubleHi);
    const-wide/high16 v18, 0x4000

    #v18=(LongLo);v19=(LongHi);
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v8, v14, v16

    .line 497
    .local v8, distance:D
    #v8=(DoubleLo);v9=(DoubleHi);
    cmpl-double v14, v8, v4

    #v14=(Byte);
    if-ltz v14, :cond_2

    .line 493
    :cond_1
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v8=(LongLo);v9=(LongHi);v15=(LongHi);
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 502
    :cond_2
    #v0=(DoubleLo);v1=(DoubleHi);v8=(DoubleLo);v9=(DoubleHi);v15=(DoubleHi);
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    #v0=(Conflicted);v1=(Conflicted);v8=(LongLo);v9=(LongHi);v10=(Integer);v15=(Conflicted);
    move v0, v10

    #v0=(Integer);
    move/from16 v1, p3

    #v1=(Integer);
    if-ge v0, v1, :cond_5

    .line 503
    const/4 v11, 0x0

    .local v11, j:I
    :goto_5
    #v0=(Conflicted);v11=(Integer);
    move v0, v11

    #v0=(Integer);
    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .line 504
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    move-object v14, v0

    #v14=(Reference);
    add-int v15, v12, v10

    #v15=(Integer);
    aget-object v14, v14, v15

    #v14=(Null);
    add-int v15, v13, v11

    aget-object v14, v14, v15

    if-eqz v14, :cond_3

    .line 505
    move/from16 v10, p3

    .line 506
    move/from16 v11, p4

    .line 507
    const-wide/high16 v8, -0x4010

    .line 503
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 502
    :cond_4
    #v0=(Integer);v14=(Byte);v15=(Conflicted);
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 509
    .end local v11           #j:I
    :cond_5
    #v11=(Conflicted);
    const-wide/16 v14, 0x0

    #v14=(LongLo);v15=(LongHi);
    cmpg-double v14, v8, v14

    #v14=(Byte);
    if-ltz v14, :cond_1

    .line 512
    move-wide v4, v8

    .line 513
    const/4 v14, 0x0

    #v14=(Null);
    aput v12, v6, v14

    .line 514
    const/4 v14, 0x1

    #v14=(One);
    aput v13, v6, v14

    goto :goto_3

    .line 492
    .end local v8           #distance:D
    .end local v10           #i:I
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v14=(Integer);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 519
    .end local v13           #y:I
    :cond_7
    #v13=(Conflicted);
    const-wide v14, 0x7fefffffffffffffL

    #v14=(LongLo);v15=(LongHi);
    cmpg-double v14, v4, v14

    #v14=(Byte);
    if-gez v14, :cond_8

    move-object v14, v6

    .line 520
    #v14=(Reference);
    goto/16 :goto_0

    .line 522
    :cond_8
    #v14=(Byte);
    const/4 v14, 0x0

    #v14=(Null);
    goto/16 :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 876
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 886
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 149
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_2

    .line 150
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    if-ge p2, v0, :cond_0

    move v0, p2

    .line 158
    :goto_0
    return v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    #v0=(One);
    sub-int v0, p1, v0

    #v0=(Integer);
    if-ne p2, v0, :cond_1

    .line 154
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mOpenedFolderPosition:I

    goto :goto_0

    .line 156
    :cond_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    .line 158
    goto :goto_0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "autoScale"

    .prologue
    const/4 v1, 0x0

    .line 1127
    #v1=(Null);
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDisableDrawingCacheTemporary:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1141
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 1130
    :cond_0
    #v0=(Boolean);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_4

    .line 1131
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mEnableDrawingCacheHolding:Z

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->isDrawCacheValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    :cond_1
    #v0=(Conflicted);
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 1136
    :cond_2
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    #v0=(Reference);
    goto :goto_0

    .line 1138
    :cond_3
    #v0=(Boolean);
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    :cond_4
    #v0=(Integer);
    move-object v0, v1

    .line 1141
    #v0=(Null);
    goto :goto_0
.end method

.method public getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 458
    #v5=(PosByte);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 459
    .local v1, count:I
    #v1=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);
    if-ge v2, v1, :cond_1

    .line 460
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 462
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v4=(Integer);
    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v4, v5, :cond_0

    instance-of v4, v0, Lcom/android/launcher2/Folder;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 463
    check-cast v0, Lcom/android/launcher2/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v4, v0

    .line 466
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);
    return-object v4

    .line 459
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    #v0=(Reference);v3=(Reference);v4=(Integer);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method getScreenId()J
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1062
    #v1=(Null);
    const v0, 0x7f080002

    #v0=(Integer);
    if-ne p1, v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    #v0=(Reference);
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1067
    :goto_0
    return-object v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1064
    :cond_1
    #v0=(Integer);
    const v0, 0x7f080003

    if-ne p1, v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEditingPreview:Ljava/lang/ref/SoftReference;

    #v0=(Reference);
    if-nez v0, :cond_2

    move-object v0, v1

    #v0=(Null);
    goto :goto_0

    :cond_2
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEditingPreview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1067
    :cond_3
    #v0=(Integer);
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWindowAttachCount()I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z
    .locals 16
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 527
    mul-int v5, p5, p6

    #v5=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    .line 553
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    return v5

    .line 532
    :cond_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Integer);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, p1

    #v1=(Integer);
    move/from16 v2, p2

    #v2=(Integer);
    move/from16 v3, p5

    #v3=(Integer);
    move/from16 v4, p6

    #v4=(Integer);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->calculateInPlaceMovement(IIII)[I

    move-result-object v13

    .line 533
    .local v13, movement:[I
    #v13=(Reference);
    if-eqz v13, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    move-object v15, v0

    .line 535
    .local v15, targetCell:[I
    #v15=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aget v5, v13, v5

    #v5=(Integer);
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v15

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->positionIndexToCell(I[I)V

    .line 537
    const-wide/16 v6, -0x64

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    const/4 v5, 0x0

    #v5=(Null);
    aget v10, v15, v5

    #v10=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    aget v11, v15, v5

    #v11=(Integer);
    move-object/from16 v5, p8

    #v5=(Reference);
    invoke-static/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getOperationForDraggingItem(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v14

    .line 541
    .local v14, operationForDraggingItem:Landroid/content/ContentProviderOperation;
    #v14=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aget v5, v13, v5

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    aget v6, v13, v6

    #v6=(Integer);
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    #v2=(Integer);
    move-object v3, v14

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->applyInPlaceMovementInDatabase(IILandroid/content/ContentProviderOperation;)V

    .line 552
    .end local v14           #operationForDraggingItem:Landroid/content/ContentProviderOperation;
    :goto_1
    #v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v14=(Conflicted);
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    #v1=(Reference);
    move-object v2, v15

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 553
    const/4 v5, 0x1

    #v5=(One);
    goto :goto_0

    .line 545
    .end local v15           #targetCell:[I
    :cond_1
    #v1=(Integer);v2=(Integer);v3=(Integer);v5=(Integer);v6=(Integer);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Uninit);
    sub-int v5, p1, p3

    sub-int v6, p2, p4

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII)[I

    move-result-object v15

    .line 546
    .restart local v15       #targetCell:[I
    #v15=(Reference);
    if-nez v15, :cond_2

    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_0

    .line 548
    :cond_2
    #v5=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mContext:Landroid/content/Context;

    move-object v5, v0

    #v5=(Reference);
    const-wide/16 v7, -0x64

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    const/4 v6, 0x0

    #v6=(Null);
    aget v11, v15, v6

    #v11=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    aget v12, v15, v6

    #v12=(Integer);
    move-object/from16 v6, p8

    #v6=(Reference);
    invoke-static/range {v5 .. v12}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    goto :goto_1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->updateVision()V

    .line 1097
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isWorkspaceEditingPreviewShowing()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1098
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1099
    .local v0, h:Landroid/os/Handler;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 1100
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mInvalideCount:I

    #v1=(Integer);
    if-gtz v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mScreenInvalideRunnerFirst:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerFirst;

    #v1=(Reference);
    const-wide/16 v2, 0x64

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1103
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mScreenInvalideRunnerNormal:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mScreenInvalideRunnerNormal:Lcom/android/launcher2/CellLayout$ScreenInvalideRunnerNormal;

    const-wide/16 v2, 0x3e8

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1105
    const/4 v1, 0x1

    #v1=(One);
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mInvalideCount:I

    .line 1108
    .end local v0           #h:Landroid/os/Handler;
    :cond_1
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    #v0=(Boolean);
    return v0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x1

    .line 598
    #v1=(One);
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 599
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 600
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 601
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    .line 602
    return-void
.end method

.method onDragOver(IIII)V
    .locals 9
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const-wide/16 v7, 0x64

    #v7=(LongLo);v8=(LongHi);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 606
    #v5=(Null);
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/CellLayout;->calculateInPlaceMovement(IIII)[I

    move-result-object v0

    .line 608
    .local v0, movement:[I
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 609
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    #v1=(Reference);
    if-nez v1, :cond_2

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/launcher2/CellLayout;->mLastMovementTime:J

    #v3=(LongLo);v4=(LongHi);
    sub-long/2addr v1, v3

    cmp-long v1, v1, v7

    #v1=(Byte);
    if-lez v1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->cancelInPlaceMovement()V

    .line 628
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 617
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    #v1=(Reference);
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    aget v1, v1, v5

    #v1=(Integer);
    aget v2, v0, v5

    #v2=(Integer);
    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    #v1=(Reference);
    aget v1, v1, v6

    #v1=(Integer);
    aget v2, v0, v6

    if-ne v1, v2, :cond_2

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iget-wide v3, p0, Lcom/android/launcher2/CellLayout;->mLastMovementTime:J

    #v3=(LongLo);v4=(LongHi);
    sub-long/2addr v1, v3

    cmp-long v1, v1, v7

    #v1=(Byte);
    if-lez v1, :cond_0

    .line 620
    aget v1, v0, v5

    #v1=(Integer);
    aget v2, v0, v6

    #v2=(Integer);
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->applyInPlaceMovement(II)V

    goto :goto_0

    .line 626
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Uninit);v4=(Uninit);
    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastMovement:[I

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/launcher2/CellLayout;->mLastMovementTime:J

    goto :goto_0
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 583
    #v1=(Null);
    if-eqz p1, :cond_0

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 585
    .local v0, params:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 586
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 589
    .end local v0           #params:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .locals 6
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 563
    #v4=(Null);
    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 565
    .local v0, info:Lcom/android/launcher2/ItemInfo;
    const-wide/16 v2, -0x64

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 567
    aget v2, p2, v4

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 568
    aget v2, p2, v5

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 571
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aget v2, p2, v4

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 572
    aget v2, p2, v5

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 573
    iput-boolean v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 574
    iput-boolean v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 576
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 577
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->updateVision()V

    .line 578
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/launcher2/CellLayout;->updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 580
    .end local v0           #info:Lcom/android/launcher2/ItemInfo;
    .end local v1           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 212
    .local v4, action:I
    #v4=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    .line 213
    .local v5, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    #v5=(Reference);
    const/4 v14, 0x0

    .line 215
    .local v14, result:Z
    #v14=(Null);
    if-nez v4, :cond_9

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v10, v0

    .line 217
    .local v10, frame:Landroid/graphics/Rect;
    #v10=(Reference);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    #v17=(Float);
    move/from16 v0, v17

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    add-int v15, v17, v18

    .line 218
    .local v15, x:I
    #v15=(Integer);
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    #v17=(Float);
    move/from16 v0, v17

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    #v0=(Integer);
    move/from16 v18, v0

    add-int v16, v17, v18

    .line 219
    .local v16, y:I
    #v16=(Integer);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v8

    .line 221
    .local v8, count:I
    #v8=(Integer);
    const/4 v9, 0x0

    .line 222
    .local v9, found:Z
    #v9=(Null);
    const/16 v17, 0x1

    #v17=(One);
    sub-int v11, v8, v17

    .local v11, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v11=(Integer);v17=(Conflicted);
    if-ltz v11, :cond_1

    .line 223
    move-object/from16 v0, p0

    #v0=(Reference);
    move v1, v11

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 225
    .local v7, child:Landroid/view/View;
    #v7=(Reference);
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v17

    #v17=(Integer);
    if-eqz v17, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v17

    #v17=(Reference);
    if-eqz v17, :cond_4

    .line 226
    :cond_0
    #v17=(Conflicted);
    invoke-virtual {v7, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 227
    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_4

    .line 228
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 229
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-object v7, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 230
    move-object v0, v13

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    move/from16 v0, v17

    move-object v1, v5

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 231
    move-object v0, v13

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    #v0=(Integer);
    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 232
    move-object v0, v13

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v0=(Integer);
    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 233
    move-object v0, v13

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    #v0=(Integer);
    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 234
    const/4 v9, 0x1

    .line 240
    .end local v7           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v9=(Boolean);v13=(Conflicted);v17=(Conflicted);
    move v0, v9

    #v0=(Boolean);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 242
    if-nez v9, :cond_5

    .line 243
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    move-object v6, v0

    .line 244
    .local v6, cellXY:[I
    #v6=(Reference);
    move-object/from16 v0, p0

    move v1, v15

    #v1=(Integer);
    move/from16 v2, v16

    #v2=(Integer);
    move-object v3, v6

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->pointToCell(II[I)V

    .line 246
    const/16 v17, 0x0

    #v17=(Null);
    move-object/from16 v0, v17

    #v0=(Null);
    move-object v1, v5

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 247
    const/16 v17, 0x0

    aget v17, v6, v17

    #v17=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 248
    const/16 v17, 0x1

    #v17=(One);
    aget v17, v6, v17

    #v17=(Integer);
    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 249
    const/16 v17, 0x1

    #v17=(One);
    move/from16 v0, v17

    #v0=(One);
    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 250
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 266
    .end local v6           #cellXY:[I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v12=(Conflicted);v14=(Boolean);v17=(Boolean);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    move-object/from16 v17, v0

    #v17=(Reference);
    if-eqz v9, :cond_8

    const-wide/16 v18, 0xc8

    :goto_2
    #v18=(LongLo);v19=(LongHi);
    invoke-virtual/range {v17 .. v19}, Lcom/android/launcher2/OnLongClickAgent;->setEditingTimeout(J)V

    .line 277
    .end local v8           #count:I
    .end local v9           #found:Z
    .end local v10           #frame:Landroid/graphics/Rect;
    .end local v11           #i:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_2
    :goto_3
    #v0=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/OnLongClickAgent;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_3

    .line 278
    const/4 v14, 0x1

    :cond_3
    move/from16 v17, v14

    .line 281
    :goto_4
    return v17

    .line 222
    .restart local v7       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #found:Z
    .restart local v10       #frame:Landroid/graphics/Rect;
    .restart local v11       #i:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_4
    #v1=(Integer);v3=(Uninit);v6=(Uninit);v7=(Reference);v8=(Integer);v9=(Null);v10=(Reference);v11=(Integer);v12=(Uninit);v13=(Uninit);v14=(Null);v15=(Integer);v16=(Integer);v17=(Conflicted);v18=(Integer);v19=(Uninit);
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 253
    .end local v7           #child:Landroid/view/View;
    :cond_5
    #v0=(Boolean);v1=(Reference);v7=(Conflicted);v9=(Boolean);v13=(Conflicted);
    move-object v0, v5

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    #v12=(Reference);
    check-cast v12, Lcom/android/launcher2/ItemInfo;

    .line 254
    .local v12, info:Lcom/android/launcher2/ItemInfo;
    if-nez v12, :cond_6

    .line 256
    const/16 v17, 0x0

    #v17=(Null);
    goto :goto_4

    .line 260
    :cond_6
    #v17=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_7

    move-object v0, v12

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    const/16 v18, 0x2

    #v18=(PosByte);
    move/from16 v0, v17

    move/from16 v1, v18

    #v1=(PosByte);
    if-eq v0, v1, :cond_7

    move-object v0, v12

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    #v17=(One);
    move/from16 v14, v17

    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v14=(Boolean);v17=(Boolean);v18=(Integer);
    goto :goto_1

    :cond_7
    #v14=(Null);v17=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    move/from16 v14, v17

    goto :goto_5

    .line 266
    .end local v12           #info:Lcom/android/launcher2/ItemInfo;
    :cond_8
    #v0=(Reference);v3=(Conflicted);v6=(Conflicted);v12=(Conflicted);v14=(Boolean);v17=(Reference);
    const-wide/16 v18, 0x320

    #v18=(LongLo);v19=(LongHi);
    goto :goto_2

    .line 269
    .end local v8           #count:I
    .end local v9           #found:Z
    .end local v10           #frame:Landroid/graphics/Rect;
    .end local v11           #i:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_9
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Null);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    const/16 v17, 0x1

    #v17=(One);
    move v0, v4

    #v0=(Integer);
    move/from16 v1, v17

    #v1=(One);
    if-ne v0, v1, :cond_2

    .line 270
    const/16 v17, 0x0

    #v17=(Null);
    move-object/from16 v0, v17

    #v0=(Null);
    move-object v1, v5

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 271
    const/16 v17, -0x1

    #v17=(Byte);
    move/from16 v0, v17

    #v0=(Byte);
    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 272
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 273
    const/16 v17, 0x0

    #v17=(Null);
    move/from16 v0, v17

    #v0=(Null);
    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 274
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    goto/16 :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v11

    .line 411
    .local v11, count:I
    #v11=(Integer);
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Integer);v13=(Conflicted);
    if-ge v12, v11, :cond_1

    .line 412
    invoke-virtual {p0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 413
    .local v8, child:Landroid/view/View;
    #v8=(Reference);
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0x8

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    .line 415
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 417
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 418
    .local v9, childLeft:I
    #v9=(Integer);
    iget v10, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 420
    .local v10, childTop:I
    #v10=(Integer);
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    #v1=(Integer);
    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 422
    iget-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 425
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mCellXY:[I

    .line 426
    .local v7, cellXY:[I
    #v7=(Reference);
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 427
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "android.home.drop"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aget v3, v7, v3

    #v3=(Integer);
    add-int/2addr v3, v9

    iget v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    #v4=(Integer);
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    #v4=(One);
    aget v4, v7, v4

    #v4=(Integer);
    add-int/2addr v4, v10

    iget v5, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    #v5=(Integer);
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 411
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v13=(Conflicted);
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 433
    .end local v8           #child:Landroid/view/View;
    :cond_1
    #v8=(Conflicted);
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 330
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 331
    .local v18, widthSpecMode:I
    #v18=(Integer);
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 333
    .local v19, widthSpecSize:I
    #v19=(Integer);
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 334
    .local v15, heightSpecMode:I
    #v15=(Integer);
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 336
    .local v16, heightSpecSize:I
    #v16=(Integer);
    if-eqz v18, :cond_0

    if-nez v15, :cond_1

    .line 337
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    #v4=(UninitRef);
    const-string v5, "CellLayout cannot have UNSPECIFIED dimensions"

    #v5=(Reference);
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    throw v4

    .line 340
    :cond_1
    #v4=(Uninit);v5=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    #v0=(Integer);
    move v4, v0

    #v4=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    if-gt v4, v5, :cond_9

    const/4 v4, 0x0

    :goto_0
    #v5=(Integer);v6=(Conflicted);
    move v0, v4

    move-object/from16 v1, p0

    #v1=(Reference);
    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 345
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    #v0=(Integer);
    move v4, v0

    const/4 v5, 0x1

    #v5=(One);
    if-gt v4, v5, :cond_a

    const/4 v4, 0x0

    :goto_1
    #v5=(Integer);
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v14

    .line 351
    .local v14, count:I
    #v14=(Integer);
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    #v1=(Conflicted);v3=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v17=(Integer);
    move/from16 v0, v17

    move v1, v14

    #v1=(Integer);
    if-ge v0, v1, :cond_c

    .line 352
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 353
    .local v10, child:Landroid/view/View;
    #v10=(Reference);
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 354
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v11, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 355
    .local v11, childHeight:I
    #v11=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    #v0=(Integer);
    move v4, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    #v0=(Integer);
    move v5, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    #v0=(Integer);
    move v7, v0

    #v7=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v0=(Integer);
    move v8, v0

    #v8=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    #v0=(Integer);
    move v9, v0

    #v9=(Integer);
    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 358
    instance-of v4, v10, Landroid/appwidget/AppWidgetHostView;

    #v4=(Boolean);
    if-nez v4, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    instance-of v4, v4, Lcom/android/launcher2/gadget/GadgetInfo;

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 360
    :cond_2
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    #v4=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetHeightAddition:I

    #v0=(Integer);
    move v5, v0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 361
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidgetHeightAddition:I

    #v0=(Integer);
    move v5, v0

    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 362
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-nez v4, :cond_3

    .line 363
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v0=(Integer);
    move v5, v0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 364
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v0=(Integer);
    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 367
    :cond_3
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    const/4 v5, 0x4

    #v5=(PosByte);
    if-ne v4, v5, :cond_4

    .line 368
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 371
    :cond_4
    const/4 v4, -0x1

    #v4=(Byte);
    if-ne v11, v4, :cond_5

    .line 372
    iget v11, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 375
    :cond_5
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    #v4=(Integer);
    const/4 v5, 0x4

    #v5=(PosByte);
    if-ne v4, v5, :cond_6

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxVisiableHeight:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    if-le v4, v5, :cond_6

    .line 377
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxVisiableHeight:I

    #v0=(Integer);
    move v4, v0

    if-le v11, v4, :cond_b

    .line 378
    const/4 v4, 0x0

    #v4=(Null);
    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 386
    :cond_6
    :goto_3
    #v4=(Integer);
    instance-of v4, v10, Lcom/android/launcher2/Folder;

    #v4=(Boolean);
    if-eqz v4, :cond_7

    .line 387
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    #v4=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderHeightAddition:I

    #v0=(Integer);
    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 388
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderPaddingTop:I

    #v0=(Integer);
    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 389
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderWidthAddition:I

    #v0=(Integer);
    move v5, v0

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 390
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mFolderWidthAddition:I

    #v0=(Integer);
    move v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 393
    :cond_7
    iget-boolean v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->regenerateId:Z

    #v4=(Boolean);
    if-eqz v4, :cond_8

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getId()I

    move-result v4

    #v4=(Integer);
    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 395
    const/4 v4, 0x0

    #v4=(Null);
    iput-boolean v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->regenerateId:Z

    .line 398
    :cond_8
    #v4=(Boolean);
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    #v4=(Integer);
    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 399
    .local v12, childWidthMeasureSpec:I
    #v12=(Integer);
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 401
    .local v13, childheightMeasureSpec:I
    #v13=(Integer);
    invoke-virtual {v10, v12, v13}, Landroid/view/View;->measure(II)V

    .line 351
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 340
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childHeight:I
    .end local v12           #childWidthMeasureSpec:I
    .end local v13           #childheightMeasureSpec:I
    .end local v14           #count:I
    .end local v17           #i:I
    :cond_9
    #v1=(Uninit);v3=(Uninit);v5=(One);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v17=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v0=(Integer);
    move v4, v0

    sub-int v4, v19, v4

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    #v0=(Integer);
    move v5, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHCells:I

    #v0=(Integer);
    move v5, v0

    const/4 v6, 0x1

    #v6=(One);
    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    goto/16 :goto_0

    .line 345
    :cond_a
    #v1=(Reference);v5=(One);v6=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    #v0=(Integer);
    move v4, v0

    sub-int v4, v16, v4

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    #v0=(Integer);
    move v5, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mVCells:I

    #v0=(Integer);
    move v5, v0

    const/4 v6, 0x1

    #v6=(One);
    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    goto/16 :goto_1

    .line 380
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #childHeight:I
    .restart local v14       #count:I
    .restart local v17       #i:I
    :cond_b
    #v1=(Integer);v3=(Reference);v6=(Integer);v7=(Integer);v8=(Integer);v9=(Integer);v10=(Reference);v11=(Integer);v12=(Conflicted);v13=(Conflicted);v14=(Integer);v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxVisiableHeight:I

    #v0=(Integer);
    move v4, v0

    sub-int/2addr v4, v11

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 381
    iput v11, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_3

    .line 404
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v10           #child:Landroid/view/View;
    .end local v11           #childHeight:I
    :cond_c
    #v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v19

    move/from16 v2, v16

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 405
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 287
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method pointToCell(II[I)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 307
    #v3=(Null);
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    #v0=(Integer);
    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    #v2=(Integer);
    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v3

    .line 308
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v4

    .line 310
    aget v0, p3, v3

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHCells:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v3

    .line 311
    aget v0, p3, v4

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mVCells:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v4

    .line 312
    return-void
.end method

.method public rectToCell(II)[I
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x3

    .line 868
    #v3=(PosByte);
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    #v2=(Integer);
    div-int v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 869
    .local v0, spanX:I
    #v0=(Integer);
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 871
    .local v1, spanY:I
    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [I

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput v0, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    aput v1, v2, v3

    return-object v2
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 1027
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    #v1=(Integer);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1028
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1029
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 999
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1000
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1015
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1016
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1017
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1005
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1006
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1022
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1023
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1010
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->onRemoveViews(II)V

    .line 1011
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1012
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v0, r:Landroid/graphics/Rect;
    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 207
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public setDisableDrawingCacheTemporary(Z)V
    .locals 0
    .parameter "isDisable"

    .prologue
    .line 1119
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mDisableDrawingCacheTemporary:Z

    .line 1120
    return-void
.end method

.method public setEnableDrawingCacheHolding(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 1145
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mEnableDrawingCacheHolding:Z

    .line 1146
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mEnableDrawingCacheHolding:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 1147
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 1149
    :cond_0
    #v0=(Boolean);
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOnLongClickAgent:Lcom/android/launcher2/OnLongClickAgent;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    return-void
.end method

.method setScreenId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v0=(Reference);
    iput-wide p1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    .line 175
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1051
    #v1=(Null);
    const v0, 0x7f080002

    #v0=(Integer);
    if-ne p1, v0, :cond_1

    .line 1052
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    .line 1058
    :goto_1
    #v0=(Conflicted);
    return-void

    .line 1052
    :cond_0
    #v0=(Integer);
    new-instance v0, Ljava/lang/ref/SoftReference;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #v0=(Reference);
    goto :goto_0

    .line 1053
    :cond_1
    #v0=(Integer);
    const v0, 0x7f080003

    if-ne p1, v0, :cond_3

    .line 1054
    if-nez p2, :cond_2

    move-object v0, v1

    :goto_2
    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mEditingPreview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_2
    #v0=(Integer);
    new-instance v0, Ljava/lang/ref/SoftReference;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #v0=(Reference);
    goto :goto_2

    .line 1056
    :cond_3
    #v0=(Integer);
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method updateCellOccupiedMarks(Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;Z)V
    .locals 5
    .parameter "params"
    .parameter "cell"
    .parameter "remove"

    .prologue
    const/4 v4, 0x1

    .line 436
    #v4=(One);
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    #v2=(Integer);
    iget v3, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v3=(Integer);
    add-int/2addr v2, v3

    sub-int v0, v2, v4

    .local v0, x:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-lt v0, v2, :cond_4

    .line 437
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v2, v3

    sub-int v1, v2, v4

    .local v1, y:I
    :goto_1
    #v1=(Integer);
    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-lt v1, v2, :cond_3

    .line 438
    if-eqz p3, :cond_1

    .line 443
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v2=(Reference);
    aget-object v2, v2, v0

    #v2=(Null);
    aget-object v2, v2, v1

    if-ne p2, v2, :cond_0

    .line 444
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    .line 445
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v2=(Reference);
    aget-object v2, v2, v0

    #v2=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    aput-object v3, v2, v1

    .line 437
    :cond_0
    :goto_2
    #v3=(Integer);
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 449
    :cond_1
    #v2=(Integer);
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v2=(Reference);
    aget-object v2, v2, v0

    #v2=(Null);
    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 450
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    #v2=(Integer);
    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mEmptyCellNumber:I

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    #v2=(Reference);
    aget-object v2, v2, v0

    #v2=(Null);
    aput-object p2, v2, v1

    goto :goto_2

    .line 436
    :cond_3
    #v2=(Integer);
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 455
    .end local v1           #y:I
    :cond_4
    #v1=(Conflicted);
    return-void
.end method

.method updateVision()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1072
    #v2=(One);
    const v0, 0x7f080004

    #v0=(Integer);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->setTag(ILjava/lang/Object;)V

    .line 1073
    const v0, 0x7f080005

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->setTag(ILjava/lang/Object;)V

    .line 1074
    return-void
.end method

*/}
