.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingOneScreen:Z

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mLeftMost:I

.field private mMinFlingVelocity:F

.field private mOverScrollRatio:F

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 175
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 76
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 113
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 119
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 143
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 148
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 386
    iput v8, p0, Landroid/widget/Gallery;->mOverScrollRatio:F

    .line 886
    iput-boolean v6, p0, Landroid/widget/Gallery;->mFlingOneScreen:Z

    .line 924
    iput v8, p0, Landroid/widget/Gallery;->mMinFlingVelocity:F

    .line 181
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 182
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 184
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 188
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 189
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 192
    :cond_0
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 194
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 195
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 198
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 200
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 202
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 204
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 212
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 213
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 814
    if-eqz p2, :cond_0

    iget v4, p0, Landroid/widget/Gallery;->mMeasuredHeight:I

    move v3, v4

    .line 815
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move v1, v4

    .line 817
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 819
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 832
    :goto_2
    return v2

    .line 814
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 815
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_1

    .line 821
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 822
    goto :goto_2

    .line 824
    :sswitch_1
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 826
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 827
    goto :goto_2

    .line 829
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v6

    .line 452
    .local v6, numChildren:I
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 453
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 454
    .local v7, start:I
    const/4 v1, 0x0

    .line 456
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 457
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 458
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 459
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 481
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 483
    if-eqz p1, :cond_1

    .line 484
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 486
    :cond_1
    return-void

    .line 463
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 464
    iget-object v8, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 458
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 468
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 469
    .local v4, galleryRight:I
    const/4 v8, 0x1

    sub-int v5, v6, v8

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 470
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 474
    move v7, v5

    .line 475
    add-int/lit8 v1, v1, 0x1

    .line 476
    iget-object v8, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 469
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1068
    const/4 v6, 0x0

    .line 1070
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1075
    :cond_0
    if-nez v6, :cond_1

    .line 1076
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1077
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1080
    :cond_1
    if-eqz v6, :cond_2

    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1084
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1008
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1009
    return-void
.end method

.method private dispatchUnpress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1013
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1014
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1013
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1017
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1018
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 645
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 646
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 649
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 653
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 654
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v5, v8

    .line 655
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 663
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 664
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 668
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 671
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 672
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 658
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 659
    .restart local v0       #curPosition:I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 660
    .restart local v1       #curRightEdge:I
    iput-boolean v8, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 674
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 677
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 678
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 679
    .local v2, galleryRight:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 680
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 683
    .local v5, numItems:I
    sub-int v7, v4, v9

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 687
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 688
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 689
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 696
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 697
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 701
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int v1, v7, v9

    .restart local v1       #curPosition:I
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 692
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 693
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 704
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 726
    iget-boolean v3, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 727
    iget-object v3, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 728
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 733
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 735
    iget v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 738
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 750
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 745
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 748
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 750
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 426
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 425
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 512
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 515
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 497
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 499
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 500
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 501
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1173
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1175
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1176
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1177
    .local v1, distance:I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1178
    const/4 v2, 0x1

    .line 1181
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 530
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 531
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 536
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 541
    :cond_2
    const v2, 0x7fffffff

    .line 542
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 543
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 545
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 547
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 549
    move v6, v4

    .line 561
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 563
    .local v5, newPos:I
    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 564
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 565
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 566
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    goto :goto_0

    .line 553
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 555
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 556
    move v2, v1

    .line 557
    move v6, v4

    .line 543
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 769
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 771
    .local v6, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 772
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 775
    .restart local v6       #lp:Landroid/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 777
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 780
    iget v8, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 782
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 786
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 792
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 793
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 795
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 796
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 797
    move v2, p3

    .line 798
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 804
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 805
    return-void

    .line 775
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 777
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 800
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 801
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1194
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1196
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1197
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1202
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1204
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1205
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1210
    :cond_2
    if-eqz v1, :cond_0

    .line 1213
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1217
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 305
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1090
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1036
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1027
    return-void
.end method

.method public flingToNextScreen()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 902
    iget-boolean v0, p0, Landroid/widget/Gallery;->mFlingOneScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Landroid/widget/Gallery;->mSpacing:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    move v0, v3

    .line 907
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flingToPreviousScreen()Z
    .locals 2

    .prologue
    .line 916
    iget-boolean v0, p0, Landroid/widget/Gallery;->mFlingOneScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 918
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 919
    const/4 v0, 0x1

    .line 921
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 323
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 315
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 310
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1238
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1241
    .local v0, selectedIndex:I
    if-gez v0, :cond_0

    move v1, p2

    .line 1251
    :goto_0
    return v1

    .line 1243
    :cond_0
    const/4 v1, 0x1

    sub-int v1, p1, v1

    if-ne p2, v1, :cond_1

    move v1, v0

    .line 1245
    goto :goto_0

    .line 1246
    :cond_1
    if-lt p2, v0, :cond_2

    .line 1248
    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_2
    move v1, p2

    .line 1251
    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 279
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 280
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 282
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v8, 0x0

    .line 387
    if-eqz p1, :cond_0

    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    .line 388
    .local v3, extremeItemPosition:I
    :goto_0
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_1

    move v5, p2

    .line 413
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_0
    move v3, v8

    .line 387
    goto :goto_0

    .line 394
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_1
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 395
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 397
    .local v4, galleryCenter:I
    if-eqz p1, :cond_2

    .line 410
    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/Gallery;->mOverScrollRatio:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 411
    if-gt v2, v4, :cond_3

    move v5, v8

    .line 401
    goto :goto_1

    .line 404
    :cond_2
    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/Gallery;->mOverScrollRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 417
    if-lt v2, v4, :cond_3

    move v5, v8

    .line 407
    goto :goto_1

    .line 411
    :cond_3
    sub-int v0, v4, v2

    .line 413
    .local v0, centerDifference:I
    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 583
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 584
    .local v0, childrenLeft:I
    iget v4, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 586
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 587
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 591
    :cond_0
    iget v4, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v4, :cond_1

    .line 592
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    .line 642
    :goto_0
    return-void

    .line 597
    :cond_1
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 598
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 602
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 606
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    .line 612
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 613
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 621
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 622
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 625
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 626
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 628
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 629
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 632
    iget-object v4, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 634
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 635
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 637
    iput-boolean v6, p0, Landroid/widget/Gallery;->mDataChanged:Z

    .line 638
    iput-boolean v6, p0, Landroid/widget/Gallery;->mNeedSync:Z

    .line 639
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 641
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1164
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1165
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move v0, v2

    .line 1168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1155
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1156
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move v0, v2

    .line 1159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 976
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 942
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 947
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 948
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 949
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 953
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 956
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 937
    iget-boolean v2, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v2, :cond_0

    .line 941
    iget-object v2, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 944
    iget-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v2, :cond_0

    iput-boolean v5, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 890
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Gallery;->mFlingOneScreen:Z

    if-eqz v2, :cond_a

    .line 949
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/Gallery;->mMinFlingVelocity:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :cond_1
    move v2, v5

    .line 973
    :goto_0
    return v2

    .line 952
    :cond_2
    cmpl-float v2, p3, v4

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v2

    move v0, v2

    .line 953
    .local v0, distance:I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 954
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 955
    cmpl-float v2, p3, v4

    if-lez v2, :cond_6

    .line 956
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    neg-int v0, v2

    .line 966
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 967
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .end local v0           #distance:I
    .end local v1           #firstChild:Landroid/view/View;
    :cond_4
    :goto_3
    move v2, v5

    .line 973
    goto :goto_0

    .line 952
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v2

    neg-int v2, v2

    move v0, v2

    goto :goto_1

    .line 958
    .restart local v0       #distance:I
    .restart local v1       #firstChild:Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->getChildWidth(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    sub-int v0, v2, v3

    goto :goto_2

    .line 961
    :cond_7
    cmpl-float v2, p3, v4

    if-lez v2, :cond_8

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eqz v2, :cond_9

    :cond_8
    cmpg-float v2, p3, v4

    if-gez v2, :cond_3

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    if-ne v2, v3, :cond_3

    .line 963
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 970
    .end local v0           #distance:I
    .end local v1           #firstChild:Landroid/view/View;
    :cond_a
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v3, p3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1257
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1264
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1268
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1099
    sparse-switch p1, :sswitch_data_0

    .line 1119
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1102
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    :cond_0
    move v0, v1

    .line 1105
    goto :goto_1

    .line 1108
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    :cond_1
    move v0, v1

    .line 1111
    goto :goto_1

    .line 1115
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1124
    sparse-switch p1, :sswitch_data_0

    .line 1151
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1128
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1129
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1131
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1132
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1138
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1139
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1145
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1147
    const/4 v1, 0x1

    goto :goto_0

    .line 1124
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 336
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 337
    iput-boolean v1, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 338
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 983
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 990
    :goto_0
    return-void

    .line 987
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 988
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 989
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 911
    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 915
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 916
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 922
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 923
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 930
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 932
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 933
    return v3

    .line 926
    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 998
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 857
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 860
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 863
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 864
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 868
    :cond_1
    const/4 v0, 0x1

    .line 871
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 839
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 841
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 842
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 844
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 849
    :cond_0
    :goto_0
    return v1

    .line 845
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 846
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 968
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 969
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 520
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 522
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 251
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 252
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 225
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 226
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 239
    return-void
.end method

.method public setFlingOneScreen(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 893
    iput-boolean p1, p0, Landroid/widget/Gallery;->mFlingOneScreen:Z

    .line 894
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1230
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1231
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1232
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 1315
    :cond_0
    return-void
.end method

.method public setMinFlingVelocity(F)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 930
    iput p1, p0, Landroid/widget/Gallery;->mMinFlingVelocity:F

    .line 931
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 393
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 394
    iput p1, p0, Landroid/widget/Gallery;->mOverScrollRatio:F

    .line 396
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1186
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1189
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1190
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 262
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 263
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 273
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 274
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1058
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1059
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1060
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1061
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1064
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1047
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1048
    const/4 v3, 0x0

    .line 1052
    :goto_0
    return v3

    .line 1051
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1052
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 384
    :goto_0
    return-void

    .line 357
    :cond_0
    if-gez p1, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 359
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 360
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 362
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-static {v2, v3}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 363
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 366
    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 368
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 370
    if-eqz v1, :cond_3

    .line 372
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 379
    :goto_2
    iget-object v2, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 381
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 383
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v3

    .line 357
    goto :goto_1

    .line 375
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
