.class public Lcom/nemustech/tiffany/widget/TFGallery;
.super Lcom/nemustech/tiffany/widget/TFAbsSpinner;
.source "TFGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;,
        Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "TFGallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsPossibilityWrapMode:Z

.field private mIsWrapMode:Z

.field private mLeftMost:I

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
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpacing:I

    .line 96
    const/16 v5, 0x190

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAnimationDuration:I

    .line 113
    iput v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    .line 133
    new-instance v5, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFGallery;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    .line 139
    new-instance v5, Lcom/nemustech/tiffany/widget/TFGallery$1;

    invoke-direct {v5, p0}, Lcom/nemustech/tiffany/widget/TFGallery$1;-><init>(Lcom/nemustech/tiffany/widget/TFGallery;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 163
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackDuringFling:Z

    .line 168
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 204
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 205
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 207
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/16 v6, 0x102

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v5

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 211
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 212
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->setGravity(I)V

    .line 215
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 217
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 218
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->setAnimationDuration(I)V

    .line 221
    :cond_1
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 223
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFGallery;->setSpacing(I)V

    .line 225
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 227
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->setUnselectedAlpha(F)V

    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGroupFlags:I

    .line 235
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGroupFlags:I

    .line 236
    return-void
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/widget/TFGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nemustech/tiffany/widget/TFGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Lcom/nemustech/tiffany/widget/TFGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingRight:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 899
    if-eqz p2, :cond_0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mMeasuredHeight:I

    move v3, v4

    .line 900
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move v1, v4

    .line 902
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 904
    .local v2, childTop:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 917
    :goto_2
    return v2

    .line 899
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getHeight()I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 900
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_1

    .line 906
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 907
    goto :goto_2

    .line 909
    :sswitch_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 911
    .local v0, availableSpace:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 912
    goto :goto_2

    .line 914
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 904
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private checkPossibilityWrapMode()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1536
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    .line 1537
    .local v4, itemCount:I
    if-gt v4, v11, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1539
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getWidth()I

    move-result v7

    .line 1541
    .local v7, width:I
    const/4 v1, 0x0

    .line 1542
    .local v1, childWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-ge v3, v8, :cond_3

    .line 1543
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v3, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1545
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    .line 1547
    .local v5, lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    if-nez v5, :cond_2

    .line 1548
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    check-cast v5, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    .line 1551
    .restart local v5       #lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    :cond_2
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v5, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1553
    .local v0, childHeightSpec:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v5, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1556
    .local v2, childWidthSpec:I
    invoke-virtual {v6, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1558
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v1, v8

    .line 1542
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1561
    .end local v0           #childHeightSpec:I
    .end local v2           #childWidthSpec:I
    .end local v5           #lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpacing:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v9, v11

    mul-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 1563
    if-lt v1, v7, :cond_0

    .line 1564
    iput-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsPossibilityWrapMode:Z

    goto :goto_0
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .parameter "toLeft"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v6

    .line 489
    .local v6, numChildren:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 490
    .local v2, firstPosition:I
    const/4 v8, 0x0

    .line 491
    .local v8, start:I
    const/4 v1, 0x0

    .line 493
    .local v1, count:I
    if-eqz p1, :cond_4

    .line 494
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    .line 495
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 496
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_2

    .line 522
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v8, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->detachViewsFromParent(II)V

    .line 524
    if-eqz p1, :cond_1

    .line 525
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 527
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v9, v10, :cond_1

    .line 528
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 531
    :cond_1
    return-void

    .line 500
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 501
    add-int v7, v2, v5

    .line 502
    .local v7, position:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v7, v9, :cond_3

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v7, v9

    .line 503
    :cond_3
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-virtual {v9, v7, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 495
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 507
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    .end local v7           #position:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 508
    .local v4, galleryRight:I
    const/4 v9, 0x1

    sub-int v5, v6, v9

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 509
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 510
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v4, :cond_0

    .line 513
    move v8, v5

    .line 514
    add-int/lit8 v1, v1, 0x1

    .line 515
    add-int v7, v2, v5

    .line 516
    .restart local v7       #position:I
    if-gez v7, :cond_5

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    add-int/2addr v7, v9

    .line 517
    :cond_5
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    add-int v10, v2, v5

    invoke-virtual {v9, v10, v0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 508
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1158
    const/4 v6, 0x0

    .line 1160
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    .line 1161
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    .line 1162
    .local v3, downTouchPosition:I
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v3, v0, :cond_0

    .line 1163
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v3, v0

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchView:Landroid/view/View;

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1169
    .end local v3           #downTouchPosition:I
    :cond_1
    if-nez v6, :cond_2

    .line 1170
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mContextMenuInfo:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    .line 1171
    invoke-super {p0, p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1174
    :cond_2
    if-eqz v6, :cond_3

    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->performHapticFeedback(I)Z

    .line 1178
    :cond_3
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1094
    if-eqz p1, :cond_0

    .line 1095
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1098
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->setPressed(Z)V

    .line 1099
    return-void
.end method

.method private dispatchUnpress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1103
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1104
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1103
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1107
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFGallery;->setPressed(Z)V

    .line 1108
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 700
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpacing:I

    .line 701
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    .line 704
    .local v2, galleryLeft:I
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 708
    .local v5, prevIterationView:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 709
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int v0, v6, v9

    .line 710
    .local v0, curPosition:I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .line 718
    .local v1, curRightEdge:I
    :goto_0
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->isPossibilityWrapMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 719
    :goto_1
    if-le v1, v2, :cond_3

    .line 720
    move v4, v0

    .line 721
    .local v4, position:I
    :goto_2
    if-gez v4, :cond_1

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    add-int/2addr v4, v6

    goto :goto_2

    .line 713
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    .end local v4           #position:I
    :cond_0
    const/4 v0, 0x0

    .line 714
    .restart local v0       #curPosition:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRight:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingRight:I

    sub-int v1, v6, v7

    .line 715
    .restart local v1       #curRightEdge:I
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 722
    .restart local v4       #position:I
    :cond_1
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    sub-int v6, v0, v6

    invoke-direct {p0, v4, v6, v1, v8}, Lcom/nemustech/tiffany/widget/TFGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    .line 726
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 729
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .line 730
    add-int/lit8 v0, v0, -0x1

    .line 731
    goto :goto_1

    .line 733
    .end local v4           #position:I
    :cond_2
    :goto_3
    if-le v1, v2, :cond_3

    if-ltz v0, :cond_3

    .line 734
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    sub-int v6, v0, v6

    invoke-direct {p0, v0, v6, v1, v8}, Lcom/nemustech/tiffany/widget/TFGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    .line 738
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 741
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .line 742
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 745
    :cond_3
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 748
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpacing:I

    .line 749
    .local v3, itemSpacing:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRight:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingRight:I

    sub-int v2, v8, v9

    .line 750
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v4

    .line 751
    .local v4, numChildren:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    .line 754
    .local v5, numItems:I
    sub-int v8, v4, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 758
    .local v7, prevIterationView:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 759
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    add-int v1, v8, v4

    .line 760
    .local v1, curPosition:I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v0, v8, v3

    .line 767
    .local v0, curLeftEdge:I
    :goto_0
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->isPossibilityWrapMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 768
    :goto_1
    if-ge v0, v2, :cond_3

    .line 769
    move v6, v1

    .line 770
    .local v6, position:I
    :goto_2
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v6, v8, :cond_1

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v6, v8

    goto :goto_2

    .line 762
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    .end local v6           #position:I
    :cond_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int v1, v8, v10

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 763
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    .line 764
    .restart local v0       #curLeftEdge:I
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 771
    .restart local v6       #position:I
    :cond_1
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    invoke-direct {p0, v6, v8, v0, v10}, Lcom/nemustech/tiffany/widget/TFGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 775
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v0, v8, v3

    .line 776
    add-int/lit8 v1, v1, 0x1

    .line 777
    goto :goto_1

    .line 779
    .end local v6           #position:I
    :cond_2
    :goto_3
    if-ge v0, v2, :cond_3

    if-ge v1, v5, :cond_3

    .line 780
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    invoke-direct {p0, v1, v8, v0, v10}, Lcom/nemustech/tiffany/widget/TFGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v7

    .line 784
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v0, v8, v3

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 789
    :cond_3
    return-void
.end method

.method private getAlignPosOfGallery()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    .line 471
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 478
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
    .line 811
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 812
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 813
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 818
    .local v2, childLeft:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRightMost:I

    .line 820
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mLeftMost:I

    .line 823
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 835
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 830
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 833
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 835
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 454
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 453
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    .line 556
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->selectionChanged()V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->invalidate()V

    .line 559
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 541
    .local v1, selectedCenter:I
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getAlignPosOfGallery()I

    move-result v2

    .line 543
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 544
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 545
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 547
    :cond_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1289
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1291
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1292
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getAlignPosOfGallery()I

    move-result v2

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1293
    .local v1, distance:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1294
    const/4 v2, 0x1

    .line 1297
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
    .line 573
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    .line 574
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getAlignPosOfGallery()I

    move-result v3

    .line 579
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 584
    :cond_2
    const v2, 0x7fffffff

    .line 585
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 586
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 588
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_5

    .line 592
    move v6, v4

    .line 604
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 606
    .local v5, newPos:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v5, v8, :cond_4

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v5, v8

    .line 608
    :cond_4
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 609
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFGallery;->setSelectedPositionInt(I)V

    .line 610
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFGallery;->setNextSelectedPositionInt(I)V

    .line 611
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->checkSelectionChanged()V

    goto :goto_0

    .line 596
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_5
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

    .line 598
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_6

    .line 599
    move v2, v1

    .line 600
    move v6, v4

    .line 586
    :cond_6
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
    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    .line 856
    .local v6, lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    if-nez v6, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    check-cast v6, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    .line 860
    .restart local v6       #lp:Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/nemustech/tiffany/widget/TFGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 862
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 865
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 867
    .local v1, childHeightSpec:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 871
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 877
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/nemustech/tiffany/widget/TFGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 878
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 880
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 881
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 882
    move v2, p3

    .line 883
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 889
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 890
    return-void

    .line 860
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

    .line 862
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 885
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 886
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1310
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    .line 1312
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int v2, v3, v4

    .line 1313
    .local v2, position:I
    if-gez v2, :cond_0

    .line 1314
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    add-int/2addr v2, v3

    .line 1317
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    .line 1318
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_2

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1322
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 1323
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1325
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1326
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1331
    :cond_3
    if-eqz v1, :cond_1

    .line 1334
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1338
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 328
    instance-of v0, p1, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1185
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1126
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1117
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 346
    new-instance v0, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 338
    new-instance v0, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 333
    new-instance v0, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/widget/TFGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1363
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1366
    .local v0, selectedIndex:I
    if-gez v0, :cond_0

    move v1, p2

    .line 1376
    :goto_0
    return v1

    .line 1368
    :cond_0
    const/4 v1, 0x1

    sub-int v1, p1, v1

    if-ne p2, v1, :cond_1

    move v1, v0

    .line 1370
    goto :goto_0

    .line 1371
    :cond_1
    if-lt p2, v0, :cond_2

    .line 1373
    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_2
    move v1, p2

    .line 1376
    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 302
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 303
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 305
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mContextMenuInfo:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v7, 0x0

    .line 416
    if-eqz p1, :cond_0

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    .line 417
    .local v3, extremeItemPosition:I
    :goto_0
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_1

    move v5, p2

    .line 441
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_0
    move v3, v7

    .line 416
    goto :goto_0

    .line 422
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_1
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 423
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getAlignPosOfGallery()I

    move-result v4

    .line 425
    .local v4, galleryCenter:I
    if-eqz p1, :cond_2

    .line 426
    if-gt v2, v4, :cond_3

    move v5, v7

    .line 429
    goto :goto_1

    .line 432
    :cond_2
    if-lt v2, v4, :cond_3

    move v5, v7

    .line 435
    goto :goto_1

    .line 439
    :cond_3
    sub-int v0, v4, v2

    .line 441
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

.method public isPossibilityWrapMode()Z
    .locals 1

    .prologue
    .line 1532
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsPossibilityWrapMode:Z

    return v0
.end method

.method public isWrapMode()Z
    .locals 1

    .prologue
    .line 1528
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    return v0
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 628
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 629
    .local v0, childrenLeft:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRight:I

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 631
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->handleDataChanged()V

    .line 636
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-nez v4, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->resetList()V

    .line 697
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->checkPossibilityWrapMode()V

    .line 644
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 645
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->setSelectedPositionInt(I)V

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->recycleAllViews()V

    .line 653
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->detachAllViewsFromParent()V

    .line 659
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRightMost:I

    .line 660
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mLeftMost:I

    .line 668
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    .line 669
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/nemustech/tiffany/widget/TFGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 671
    .local v2, sel:Landroid/view/View;
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 683
    :goto_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->fillToGalleryRight()V

    .line 684
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->fillToGalleryLeft()V

    .line 687
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->clear()V

    .line 689
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->invalidate()V

    .line 690
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->checkSelectionChanged()V

    .line 692
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDataChanged:Z

    .line 693
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mNeedSync:Z

    .line 694
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->setNextSelectedPositionInt(I)V

    .line 696
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->updateSelectedItemMetadata()V

    goto :goto_0

    .line 679
    :cond_3
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 680
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1
.end method

.method moveNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1272
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lez v1, :cond_2

    .line 1273
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 1274
    .local v0, position:I
    if-gtz v0, :cond_0

    .line 1275
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->isPossibilityWrapMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1276
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    add-int/2addr v0, v1

    .line 1281
    :cond_0
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->scrollToChild(I)Z

    .line 1282
    const/4 v1, 0x1

    .line 1284
    .end local v0           #position:I
    :goto_0
    return v1

    .restart local v0       #position:I
    :cond_1
    move v1, v3

    .line 1278
    goto :goto_0

    .end local v0           #position:I
    :cond_2
    move v1, v3

    .line 1284
    goto :goto_0
.end method

.method movePrevious()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1255
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lez v1, :cond_2

    .line 1256
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v4

    .line 1257
    .local v0, position:I
    if-gez v0, :cond_0

    .line 1258
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->isPossibilityWrapMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1259
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    add-int/2addr v0, v1

    .line 1264
    :cond_0
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->scrollToChild(I)Z

    move v1, v4

    .line 1267
    .end local v0           #position:I
    :goto_0
    return v1

    .restart local v0       #position:I
    :cond_1
    move v1, v3

    .line 1261
    goto :goto_0

    .end local v0           #position:I
    :cond_2
    move v1, v3

    .line 1267
    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->onUp()V

    .line 1066
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1032
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->stop(Z)V

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    .line 1037
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1038
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchView:Landroid/view/View;

    .line 1039
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1043
    :cond_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsFirstScroll:Z

    .line 1046
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 969
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 976
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->startUsingVelocity(I)V

    .line 982
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1382
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1389
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1393
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1194
    sparse-switch p1, :sswitch_data_0

    .line 1214
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1197
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->movePrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->playSoundEffect(I)V

    :cond_0
    move v0, v1

    .line 1200
    goto :goto_1

    .line 1203
    :sswitch_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->moveNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->playSoundEffect(I)V

    :cond_1
    move v0, v1

    .line 1206
    goto :goto_1

    .line 1210
    :sswitch_2
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1194
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
    .line 1219
    sparse-switch p1, :sswitch_data_0

    .line 1251
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1223
    :sswitch_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v2, :cond_1

    .line 1224
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lez v2, :cond_1

    .line 1226
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->dispatchPress(Landroid/view/View;)V

    .line 1227
    new-instance v2, Lcom/nemustech/tiffany/widget/TFGallery$2;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFGallery$2;-><init>(Lcom/nemustech/tiffany/widget/TFGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1233
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1234
    .local v0, selectedIndex:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    .line 1235
    .local v1, selectedPosition:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v1, v2, :cond_0

    .line 1236
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v1, v2

    .line 1239
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1245
    .end local v0           #selectedIndex:I
    .end local v1           #selectedPosition:I
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mReceivedInvokeKeyDown:Z

    .line 1247
    const/4 v2, 0x1

    goto :goto_0

    .line 1219
    nop

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

    .line 352
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->onLayout(ZIIII)V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mInLayout:Z

    .line 359
    invoke-virtual {p0, v1, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->layout(IZ)V

    .line 360
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mInLayout:Z

    .line 361
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1073
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1077
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->performHapticFeedback(I)Z

    .line 1078
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1079
    .local v0, id:J
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

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

    .line 1001
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1005
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1006
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1012
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1020
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->trackMotionScroll(I)V

    .line 1022
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsFirstScroll:Z

    .line 1023
    return v3

    .line 1016
    :cond_2
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1088
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 942
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    if-ltz v1, :cond_3

    .line 945
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->scrollToChild(I)Z

    .line 948
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    if-ne v1, v2, :cond_2

    .line 949
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    .line 950
    .local v0, downTouchPosition:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-lt v0, v1, :cond_1

    .line 951
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    sub-int/2addr v0, v1

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchView:Landroid/view/View;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/nemustech/tiffany/widget/TFGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 958
    .end local v0           #downTouchPosition:I
    :cond_2
    const/4 v1, 0x1

    .line 961
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 924
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 926
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 927
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->onUp()V

    .line 934
    :cond_0
    :goto_0
    return v1

    .line 930
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->access$200(Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;)Lcom/nemustech/tiffany/widget/TFScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->scrollIntoSlots()V

    .line 1058
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->dispatchUnpress()V

    .line 1059
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 564
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->selectionChanged()V

    .line 566
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 274
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAnimationDuration:I

    .line 275
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackDuringFling:Z

    .line 249
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 262
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1355
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1356
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mGravity:I

    .line 1357
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->requestLayout()V

    .line 1359
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1302
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsSpinner;->setSelectedPositionInt(I)V

    .line 1305
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->updateSelectedItemMetadata()V

    .line 1306
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 285
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSpacing:I

    .line 286
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 296
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mUnselectedAlpha:F

    .line 297
    return-void
.end method

.method public setWrapMode(Z)V
    .locals 0
    .parameter "isWrapMode"

    .prologue
    .line 1524
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    .line 1525
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1149
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1150
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1151
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1154
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
    .line 1136
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1137
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1138
    const/4 v3, 0x0

    .line 1142
    :goto_0
    return v3

    .line 1141
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1142
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 380
    :cond_0
    if-gez p1, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 383
    .local v1, toLeft:Z
    :goto_1
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mIsWrapMode:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->isPossibilityWrapMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    move v0, p1

    .line 389
    .local v0, limitedDeltaX:I
    :goto_2
    if-eq v0, p1, :cond_1

    .line 391
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;

    invoke-static {v2, v3}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->access$100(Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;Z)V

    .line 392
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->onFinishedMovement()V

    .line 395
    :cond_1
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->offsetChildrenLeftAndRight(I)V

    .line 397
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->detachOffScreenChildren(Z)V

    .line 399
    if-eqz v1, :cond_4

    .line 401
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->fillToGalleryRight()V

    .line 408
    :goto_3
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAbsSpinner$RecycleBin;->clear()V

    .line 410
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->setSelectionToCenterChild()V

    .line 412
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v3

    .line 380
    goto :goto_1

    .line 386
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .restart local v0       #limitedDeltaX:I
    goto :goto_2

    .line 404
    :cond_4
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery;->fillToGalleryLeft()V

    goto :goto_3
.end method
