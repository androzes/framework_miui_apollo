.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;,
        Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_EXCESS_SCROLL:Z = false

.field private static final EXCESS_SCROLL_RECOVER_DURATION:I = 0x96

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBlockExcessScroll:Z

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field protected mExcessScroll:I

.field private mExcessScrollDecelerateRunnable:Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

.field protected mExcessScrollEnabled:Z

.field protected mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 591
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 207
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 222
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 232
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 238
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 243
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 248
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 253
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 258
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 268
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 315
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 346
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 384
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 404
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 415
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 418
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 421
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 463
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 482
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 492
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 556
    iput v2, p0, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 561
    new-instance v1, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    .line 572
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    .line 578
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    .line 587
    new-instance v1, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mExcessScrollDecelerateRunnable:Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    .line 592
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 594
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 595
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 596
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 597
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 601
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 605
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 232
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 238
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 243
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 248
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 253
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 258
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 263
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 268
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 315
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 346
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 384
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 404
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 406
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 415
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 418
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 421
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 463
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 482
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 492
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 556
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 561
    new-instance v9, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    .line 572
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    .line 578
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    .line 587
    new-instance v9, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mExcessScrollDecelerateRunnable:Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    .line 606
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 608
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 611
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 612
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 613
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 616
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 619
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 620
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 622
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 623
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 625
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 626
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 628
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 630
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 632
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 633
    .local v1, color:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 635
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 636
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 638
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 639
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 641
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 642
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AbsListView;->mExcessScrollDecelerateRunnable:Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 4176
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 4194
    :goto_0
    return v4

    .line 4177
    :cond_0
    const/4 v2, 0x1

    .line 4179
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4180
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 4181
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4182
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4183
    const/4 v2, 0x0

    .line 4184
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 4188
    const/4 v2, 0x0

    .line 4189
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #view:Landroid/view/View;
    :cond_3
    move v4, v2

    .line 4194
    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 3159
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3160
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3175
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3176
    return-void
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3151
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3152
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3153
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3154
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 3156
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 3922
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3923
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3924
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3925
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3927
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x109006e

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3932
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3934
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3935
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3936
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3937
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3938
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3939
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3940
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3941
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3942
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3943
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3944
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3945
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3947
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3948
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x103006d

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3952
    :goto_0
    return-void

    .line 3950
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x103006e

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 3698
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3699
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3701
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1528
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1529
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1530
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1531
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1533
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 3744
    sparse-switch p2, :sswitch_data_0

    .line 3770
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3746
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3747
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3748
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3749
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3773
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 3774
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 3775
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3752
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 3753
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3754
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3755
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3756
    .restart local v1       #dY:I
    goto :goto_0

    .line 3758
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3759
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3760
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3761
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3762
    .restart local v1       #dY:I
    goto :goto_0

    .line 3764
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 3765
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3766
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3767
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3768
    .restart local v1       #dY:I
    goto :goto_0

    .line 3744
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 646
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 647
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 648
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 649
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 650
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 652
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 653
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 654
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 655
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 656
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 657
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    .line 2630
    iget v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 2631
    .local v5, x:I
    iget v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 2632
    .local v6, y:I
    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 2633
    .local v0, motionPosition:I
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2634
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2635
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 2636
    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2638
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2641
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const v8, 0xff00

    and-int/2addr v7, v8

    shr-int/lit8 v3, v7, 0x8

    .line 2643
    .local v3, pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2644
    .local v2, pointerId:I
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v2, v7, :cond_3

    .line 2648
    if-nez v3, :cond_4

    const/4 v7, 0x1

    move v1, v7

    .line 2649
    .local v1, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 2650
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 2651
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2652
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2

    .line 2653
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 2656
    :cond_2
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 2658
    .end local v1           #newPointerIndex:I
    :cond_3
    return-void

    :cond_4
    move v1, v9

    .line 2648
    goto :goto_0
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1862
    const/4 v6, 0x0

    .line 1864
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1868
    :cond_0
    if-nez v6, :cond_1

    .line 1869
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1870
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1872
    :cond_1
    if-eqz v6, :cond_2

    .line 1873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 1875
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3717
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3718
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 3719
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 3722
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 3723
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3724
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3729
    :goto_0
    return-void

    .line 3727
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1456
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3708
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3709
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 3710
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 3712
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 3714
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2035
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2036
    .local v0, distance:I
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v3, :cond_2

    .line 2037
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2038
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2039
    iput p1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2040
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2044
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2045
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2047
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2048
    iget v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2049
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2050
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2052
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2055
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v3, v6

    .line 2059
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 835
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2665
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2666
    .local v2, count:I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2667
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2669
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2680
    :cond_0
    return-void

    .line 2673
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2674
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2675
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2676
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2673
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4032
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3994
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3913
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 4053
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3958
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3959
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3960
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 3961
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3962
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3965
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1094
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1095
    .local v1, count:I
    if-lez v1, :cond_4

    .line 1096
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3

    .line 1097
    mul-int/lit8 v2, v1, 0x64

    .line 1099
    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1100
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1101
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1102
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1103
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1106
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1107
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1108
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1109
    if-lez v3, :cond_1

    .line 1110
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1113
    :cond_1
    move v5, v2

    .line 1115
    .local v5, retVal:I
    iget v8, p0, Landroid/widget/AbsListView;->mExcessScroll:I

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1117
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/AbsListView;->mExcessScroll:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1118
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1121
    .end local v4           #ratio:F
    :cond_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1127
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    :cond_3
    move v8, v10

    .line 1124
    goto :goto_0

    :cond_4
    move v8, v9

    .line 1127
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 18

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v5, v0

    .line 1133
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 1134
    .local v2, childCount:I
    if-ltz v5, :cond_5

    if-lez v2, :cond_5

    .line 1135
    const/4 v9, 0x0

    .line 1136
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1137
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1138
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1139
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1140
    .local v6, height:I
    if-lez v6, :cond_0

    .line 1143
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move v15, v0

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x42c8

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1147
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move v14, v0

    if-gez v14, :cond_1

    .line 1148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move v10, v0

    .line 1149
    .local v10, savedExcessScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1150
    .local v11, shrinkedScrollExtent:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 1151
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1152
    .local v8, normalScrollExtent:I
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 1154
    sub-int v4, v8, v11

    .line 1156
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedExcessScroll:I
    .end local v11           #shrinkedScrollExtent:I
    :cond_1
    move v14, v9

    .line 1173
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_0
    return v14

    .line 1162
    .restart local v9       #retVal:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move v3, v0

    .line 1163
    .local v3, count:I
    if-nez v5, :cond_3

    .line 1164
    const/4 v7, 0x0

    .line 1170
    .local v7, index:I
    :goto_1
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_0

    .line 1165
    .end local v7           #index:I
    :cond_3
    add-int v14, v5, v2

    if-ne v14, v3, :cond_4

    .line 1166
    move v7, v3

    .restart local v7       #index:I
    goto :goto_1

    .line 1168
    .end local v7           #index:I
    :cond_4
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_1

    .line 1173
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1179
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_0

    .line 1180
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1184
    .local v0, result:I
    :goto_0
    return v0

    .line 1182
    .end local v0           #result:I
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1774
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1460
    const/4 v2, 0x0

    .line 1461
    .local v2, saveCount:I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1462
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1464
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 1465
    .local v3, scrollX:I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 1466
    .local v4, scrollY:I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1469
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 1472
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1473
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1474
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1477
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1479
    if-eqz v1, :cond_2

    .line 1480
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1483
    :cond_2
    if-eqz v0, :cond_3

    .line 1484
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1485
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 1487
    :cond_3
    return-void

    .line 1461
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1940
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2546
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2547
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2548
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 2550
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1634
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 1635
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1638
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 3432
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 3433
    .local v0, childCount:I
    if-nez v0, :cond_0

    .line 3438
    :goto_0
    return v2

    .line 3437
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 3438
    .local v1, motionRow:I
    if-eq v1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4043
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4048
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1214
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1215
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1216
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1226
    :goto_0
    return v5

    .line 1219
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1220
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1223
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v6, v1, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getExcessScrollDrawShift(I)I

    move-result v6

    add-int v0, v5, v6

    .line 1224
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 1225
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1226
    .local v3, fadeLength:F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4109
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 824
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 825
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3374
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3364
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1326
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1327
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4082
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1196
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1197
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1198
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1208
    :goto_0
    return v4

    .line 1201
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1202
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getExcessScrollDrawShift(I)I

    move-result v5

    add-int v3, v4, v5

    .line 1206
    .local v3, top:I
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-lt v3, v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 1207
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1208
    .local v2, fadeLength:F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 4077
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3563
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3564
    .local v0, count:I
    if-lez v0, :cond_a

    .line 3571
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 3573
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 3575
    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 3578
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3674
    :cond_1
    :goto_0
    return-void

    .line 3582
    :cond_2
    iget v3, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 3630
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3632
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 3635
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 3636
    sub-int v1, v0, v5

    .line 3638
    :cond_4
    if-gez v1, :cond_5

    .line 3639
    const/4 v1, 0x0

    .line 3643
    :cond_5
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3645
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 3646
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3584
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3589
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3590
    iget v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 3596
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 3597
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 3599
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3600
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 3602
    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 3604
    iget-wide v3, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 3607
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3615
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3611
    :cond_7
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 3623
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3624
    iget v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 3650
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3651
    if-ltz v2, :cond_a

    .line 3652
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3659
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 3667
    :cond_a
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3668
    iput v8, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 3669
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 3670
    iput v8, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 3671
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 3672
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 3673
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 3667
    goto :goto_2

    .line 3582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3971
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3388
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 3389
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3390
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3392
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 3393
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3395
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 3396
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 3397
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 3398
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3400
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3446
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 3447
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3448
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3449
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 749
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 755
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 689
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3780
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 768
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 845
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 815
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1590
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1595
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1596
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1599
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1601
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1602
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1603
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1605
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1607
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 1608
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1609
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1610
    if-eqz v1, :cond_6

    .line 1611
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1617
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1618
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1619
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 1621
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1622
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1614
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1287
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 1394
    aput-boolean v3, p2, v3

    .line 1397
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1400
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1406
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1413
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 1414
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1415
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1416
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1437
    :cond_0
    :goto_0
    return-object v0

    .line 1423
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 1424
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 1427
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1428
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1429
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1681
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1683
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1684
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1685
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1686
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 1687
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1690
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 4145
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4147
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 4149
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 4151
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$2400(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4152
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4153
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4154
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 4155
    const/4 v4, 0x0

    .line 4156
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4147
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 4163
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$2500(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4164
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 4165
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$2600(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 4166
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 4167
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 4168
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 4167
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4172
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1643
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1645
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1671
    :goto_0
    return-object v4

    .line 1651
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1656
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1657
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1658
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1659
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1660
    move v0, v2

    .line 1666
    :cond_1
    if-ltz v0, :cond_2

    .line 1667
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1671
    goto :goto_0

    .line 1658
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 3858
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3862
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 3863
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3864
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3865
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3899
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3901
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3902
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3904
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1694
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1697
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1700
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 1702
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1703
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1705
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 1706
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1707
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1710
    :cond_0
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 3678
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 3679
    sparse-switch p1, :sswitch_data_0

    .line 3691
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 3692
    return-void

    .line 3681
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3682
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 3686
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3687
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 3691
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3679
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4035
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4036
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4037
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 4039
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1062
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1063
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1066
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3975
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3977
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 3978
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3987
    :cond_0
    :goto_0
    return-void

    .line 3982
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3983
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2557
    .local v0, action:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v8, :cond_0

    .line 2558
    iget-object v8, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v8, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2559
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    move v8, v10

    .line 2617
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 2564
    :cond_0
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 2617
    goto :goto_0

    .line 2566
    :pswitch_1
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2568
    .local v4, touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 2569
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 2570
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2572
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 2573
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_2

    if-ltz v2, :cond_2

    .line 2576
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2577
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2578
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 2579
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 2580
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2581
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2582
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2584
    .end local v5           #v:Landroid/view/View;
    :cond_2
    const/high16 v8, -0x8000

    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 2585
    if-ne v4, v12, :cond_1

    move v8, v10

    .line 2586
    goto :goto_0

    .line 2592
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 2594
    :pswitch_3
    iget v8, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2595
    .local v3, pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 2596
    .restart local v7       #y:I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v8, v7, v8

    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    .line 2597
    goto :goto_0

    .line 2605
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2606
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2607
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 2612
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 2564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 2592
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1908
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1913
    sparse-switch p1, :sswitch_data_0

    .line 1933
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1916
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 1917
    goto :goto_0

    .line 1919
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1923
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1924
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1925
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1926
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1928
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    move v1, v5

    .line 1929
    goto :goto_0

    .line 1913
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1249
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1250
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 1251
    if-eqz p1, :cond_1

    .line 1252
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1253
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1254
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1256
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 1259
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1260
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 1261
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1233
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1234
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 1236
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1237
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1238
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1239
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1240
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1241
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 987
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    move-object v1, v0

    .line 989
    .local v1, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 990
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 992
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 994
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 995
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 996
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 997
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 998
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 999
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1011
    :cond_0
    :goto_0
    iget-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1014
    return-void

    .line 1000
    :cond_1
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 1001
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1003
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1004
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1005
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1006
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1007
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1008
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 941
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 943
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 945
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v4, v5}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 947
    .local v4, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    move v1, v8

    .line 948
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 949
    .local v2, selectedId:J
    iput-wide v2, v4, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 950
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->height:I

    .line 952
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    .line 954
    iget v8, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 955
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->position:I

    .line 956
    iput-wide v11, v4, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 971
    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 972
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 973
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 974
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 975
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 976
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 982
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v10

    .line 947
    goto :goto_0

    .line 958
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 960
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 961
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 962
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->position:I

    .line 963
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 965
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iput v10, v4, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 966
    iput-wide v11, v4, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 967
    iput v10, v4, Landroid/widget/AbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1491
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1493
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1496
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 1499
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4002
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4003
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4004
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4005
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4007
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 4008
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 4014
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4015
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4017
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4018
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4025
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4009
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4011
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4012
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 4020
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .parameter "ev"

    .prologue
    .line 2079
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v29

    if-nez v29, :cond_2

    .line 2082
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v29

    if-nez v29, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v29

    if-eqz v29, :cond_1

    :cond_0
    const/16 v29, 0x1

    .line 2427
    :goto_0
    return v29

    .line 2082
    :cond_1
    const/16 v29, 0x0

    goto :goto_0

    .line 2085
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 2087
    .local v17, intercepted:Z
    if-eqz v17, :cond_3

    .line 2088
    const/16 v29, 0x1

    goto :goto_0

    .line 2092
    .end local v17           #intercepted:Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2097
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-nez v29, :cond_4

    .line 2098
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2100
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2104
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v29, v0

    if-nez v29, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v29, v0

    if-eqz v29, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 2109
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->start()V

    .line 2112
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/VelocityTracker;->clear()V

    .line 2120
    :cond_6
    move v0, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 2427
    .end local v4           #action:I
    :cond_7
    :goto_1
    :pswitch_0
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 2122
    .restart local v4       #action:I
    :pswitch_1
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 2123
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 2124
    .local v27, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 2125
    .local v28, y:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v20

    .line 2126
    .local v20, motionPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mExcessScrollDecelerateRunnable:Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 2128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v29, v0

    if-nez v29, :cond_9

    .line 2129
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    if-ltz v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .end local v4           #action:I
    check-cast v4, Landroid/widget/ListAdapter;

    move-object v0, v4

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v29, v0

    if-nez v29, :cond_b

    .line 2133
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    if-nez v29, :cond_8

    .line 2136
    new-instance v29, Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2138
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2160
    :cond_9
    :goto_2
    if-ltz v20, :cond_a

    .line 2162
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v29, v20, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 2163
    .local v25, v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2165
    .end local v25           #v:Landroid/view/View;
    :cond_a
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 2166
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2167
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2168
    const/high16 v29, -0x8000

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 2140
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v29

    if-eqz v29, :cond_c

    if-gez v20, :cond_c

    .line 2144
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 2147
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 2149
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v29, v0

    if-nez v29, :cond_d

    .line 2150
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 2152
    :cond_d
    const/16 v29, 0x3

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2153
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2154
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v20

    .line 2155
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2173
    .end local v20           #motionPosition:I
    .end local v27           #x:I
    .end local v28           #y:I
    .restart local v4       #action:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 2174
    .local v23, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 2175
    .restart local v28       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v29, v0

    sub-int v9, v28, v29

    .line 2176
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_1

    goto/16 :goto_1

    .line 2182
    :pswitch_3
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    .line 2184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v29, v0

    if-nez v29, :cond_7

    .line 2185
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 2187
    move/from16 v24, v9

    .line 2188
    .local v24, tempY:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 2189
    .local v7, childCount:I
    if-lez v7, :cond_7

    .line 2190
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v14, v29, v30

    .line 2191
    .local v14, height:I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v12

    .line 2192
    .local v12, firstTop:I
    const/16 v29, 0x1

    sub-int v29, v7, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 2193
    .local v18, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 2194
    .local v19, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v10, v29, v30

    .line 2196
    .local v10, end:I
    if-gez v24, :cond_f

    .line 2197
    const/16 v29, 0x1

    sub-int v29, v14, v29

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 2202
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v11, v0

    .line 2204
    .local v11, firstPosition:I
    if-nez v11, :cond_e

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move v0, v12

    move/from16 v1, v29

    if-lt v0, v1, :cond_e

    if-ltz v9, :cond_e

    .line 2205
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v29, v0

    if-nez v29, :cond_10

    .line 2206
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v29, v0

    add-int v29, v29, v24

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 2212
    :cond_e
    :goto_4
    add-int v29, v11, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    move/from16 v0, v18

    move v1, v10

    if-gt v0, v1, :cond_7

    if-gtz v9, :cond_7

    .line 2213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v29, v0

    if-nez v29, :cond_11

    .line 2214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v29, v0

    add-int v29, v29, v24

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    goto/16 :goto_1

    .line 2199
    .end local v11           #firstPosition:I
    :cond_f
    const/16 v29, 0x1

    sub-int v29, v14, v29

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto :goto_3

    .line 2208
    .restart local v11       #firstPosition:I
    :cond_10
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    goto :goto_4

    .line 2216
    :cond_11
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    goto/16 :goto_1

    .line 2232
    .end local v7           #childCount:I
    .end local v10           #end:I
    .end local v11           #firstPosition:I
    .end local v12           #firstTop:I
    .end local v14           #height:I
    .end local v18           #lastBottom:I
    .end local v19           #listPadding:Landroid/graphics/Rect;
    .end local v24           #tempY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 2233
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move/from16 v29, v0

    sub-int v9, v9, v29

    .line 2234
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v29, v0

    const/high16 v30, -0x8000

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v29, v0

    sub-int v29, v28, v29

    move/from16 v15, v29

    .line 2237
    .local v15, incrementalDeltaY:I
    :goto_5
    const/4 v5, 0x0

    .line 2238
    .local v5, atEdge:Z
    if-eqz v15, :cond_12

    .line 2239
    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v5

    .line 2243
    :cond_12
    if-eqz v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    if-lez v29, :cond_14

    .line 2248
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v20

    .line 2249
    .restart local v20       #motionPosition:I
    if-ltz v20, :cond_13

    .line 2250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v29, v20, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2251
    .local v21, motionView:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2253
    .end local v21           #motionView:Landroid/view/View;
    :cond_13
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2254
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2255
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2257
    .end local v20           #motionPosition:I
    :cond_14
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .end local v5           #atEdge:Z
    .end local v15           #incrementalDeltaY:I
    :cond_15
    move v15, v9

    .line 2234
    goto :goto_5

    .line 2266
    .end local v9           #deltaY:I
    .end local v23           #pointerIndex:I
    .end local v28           #y:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_2

    .line 2361
    :goto_6
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2364
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2366
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v13

    .line 2367
    .local v13, handler:Landroid/os/Handler;
    if-eqz v13, :cond_16

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v29, v0

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2371
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/VelocityTracker;->recycle()V

    .line 2373
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2376
    :cond_17
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2270
    .end local v13           #handler:Landroid/os/Handler;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    .line 2271
    .restart local v20       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v29, v20, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2272
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v29

    if-nez v29, :cond_20

    .line 2273
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    if-eqz v29, :cond_18

    .line 2274
    const/16 v29, 0x0

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2277
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v29, v0

    if-nez v29, :cond_19

    .line 2278
    new-instance v29, Landroid/widget/AbsListView$PerformClick;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 2281
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v22, v0

    .line 2282
    .local v22, performClick:Landroid/widget/AbsListView$PerformClick;
    move-object v0, v6

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/widget/AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2283
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 2284
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2286
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2288
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    .line 2289
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v13

    .line 2290
    .restart local v13       #handler:Landroid/os/Handler;
    if-eqz v13, :cond_1b

    .line 2291
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v29, v0

    if-nez v29, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    :goto_7
    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2294
    :cond_1b
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v29, v0

    if-nez v29, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 2296
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2299
    const/16 v29, 0x1

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2300
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 2301
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 2303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2304
    .local v8, d:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1c

    move-object v0, v8

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 2305
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2308
    :cond_1c
    new-instance v29, Landroid/widget/AbsListView$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2321
    :goto_8
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 2291
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v29, v0

    goto/16 :goto_7

    .line 2319
    :cond_1e
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_8

    .line 2322
    .end local v13           #handler:Landroid/os/Handler;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v29, v0

    if-nez v29, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 2323
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2326
    .end local v22           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_20
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_6

    .line 2329
    .end local v6           #child:Landroid/view/View;
    .end local v20           #motionPosition:I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 2330
    .restart local v7       #childCount:I
    if-lez v7, :cond_24

    .line 2331
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    if-nez v29, :cond_21

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_21

    const/16 v29, 0x1

    sub-int v29, v7, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_21

    .line 2335
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2336
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 2338
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    .line 2339
    .local v26, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v29, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2340
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2342
    .local v16, initialVelocity:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_23

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v29, v0

    if-nez v29, :cond_22

    .line 2344
    new-instance v29, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2346
    :cond_22
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v29, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_6

    .line 2350
    :cond_23
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2351
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 2355
    .end local v16           #initialVelocity:I
    .end local v26           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_24
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2356
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 2388
    .end local v7           #childCount:I
    :pswitch_8
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2389
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2390
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2391
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_25

    .line 2392
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2394
    :cond_25
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2396
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v13

    .line 2397
    .restart local v13       #handler:Landroid/os/Handler;
    if-eqz v13, :cond_26

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v29, v0

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2401
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    if-eqz v29, :cond_27

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/VelocityTracker;->recycle()V

    .line 2403
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2406
    :cond_27
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2411
    .end local v13           #handler:Landroid/os/Handler;
    .end local v21           #motionView:Landroid/view/View;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2412
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v27, v0

    .line 2413
    .restart local v27       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v28, v0

    .line 2414
    .restart local v28       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v20

    .line 2415
    .restart local v20       #motionPosition:I
    if-ltz v20, :cond_7

    .line 2417
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    sub-int v29, v20, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 2418
    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2419
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    goto/16 :goto_1

    .line 2120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 2176
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2266
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2063
    if-eqz p1, :cond_0

    .line 2065
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2069
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2075
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1714
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 1716
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1718
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1719
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1720
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_0

    .line 1721
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1724
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$200(Landroid/widget/AbsListView$FlingRunnable;)V

    .line 1725
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1726
    iput v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 1727
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1731
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1733
    if-ne v0, v4, :cond_1

    .line 1735
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 1759
    :cond_1
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 1760
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v4

    .line 1716
    goto :goto_0

    .line 1738
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v1, :cond_4

    .line 1740
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 1744
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1746
    if-ne v0, v4, :cond_5

    .line 1748
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 1752
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1753
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1754
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1951
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1952
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1953
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1954
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1957
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1958
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1959
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1960
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1961
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1962
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1963
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1967
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 1958
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1967
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1980
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 1981
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1982
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1984
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1441
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1442
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1443
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 1446
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1447
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1448
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1449
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 1451
    :cond_0
    return-void

    .line 1448
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4120
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4121
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$2300(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 4124
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4125
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4126
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 4128
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4129
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4130
    if-eqz v3, :cond_0

    .line 4132
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4136
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4137
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 4138
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 3408
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 3409
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3410
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3412
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3413
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3414
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2690
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2691
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2692
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2693
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 2696
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1070
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1071
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1073
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 864
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 865
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 866
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 868
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1079
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1080
    iput v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1081
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1082
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1083
    iput v3, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 1084
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 1085
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1086
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1087
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1088
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1089
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1090
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 3464
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 3466
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 3467
    const/16 v18, 0x0

    .line 3558
    :goto_0
    return v18

    .line 3470
    :cond_0
    const/4 v14, 0x0

    .line 3472
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 3473
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 3474
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v8, v0

    .line 3475
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 3476
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 3478
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 3479
    move v13, v15

    .line 3481
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3482
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3483
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 3486
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 3487
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 3543
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3545
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3546
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3547
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 3548
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 3549
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 3550
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3551
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 3552
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 3556
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3558
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3488
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 3489
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 3493
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 3495
    move v13, v8

    .line 3496
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 3497
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3498
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3500
    .local v16, top:I
    if-nez v9, :cond_5

    .line 3502
    move/from16 v14, v16

    .line 3504
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 3507
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 3510
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 3512
    add-int v13, v8, v9

    .line 3513
    move/from16 v14, v16

    .line 3514
    goto/16 :goto_1

    .line 3496
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3518
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move v10, v0

    .line 3519
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 3520
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 3522
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 3523
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3524
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3525
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 3527
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3528
    move/from16 v14, v16

    .line 3529
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 3530
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 3534
    :cond_9
    if-gt v3, v5, :cond_a

    .line 3535
    add-int v13, v8, v9

    .line 3536
    move/from16 v14, v16

    .line 3537
    goto/16 :goto_1

    .line 3522
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 3554
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 3558
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3792
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 3850
    :goto_0
    return v4

    .line 3796
    :cond_0
    const/4 v2, 0x0

    .line 3797
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 3798
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 3827
    :goto_1
    if-eqz v3, :cond_2

    .line 3828
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 3830
    move-object v1, p3

    .line 3831
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 3832
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 3835
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3836
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_2
    move v4, v2

    .line 3850
    goto :goto_0

    .line 3805
    :sswitch_0
    const/4 v3, 0x0

    .line 3806
    goto :goto_1

    .line 3808
    :sswitch_1
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3809
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 3811
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 3812
    const/4 v2, 0x1

    .line 3819
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 3820
    goto :goto_1

    .line 3813
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3815
    const/4 v2, 0x1

    .line 3816
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3823
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 3838
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3839
    goto :goto_2

    .line 3842
    :pswitch_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3843
    goto :goto_2

    .line 3846
    :pswitch_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 3798
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3836
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 4092
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 4093
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 4094
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4095
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4096
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4095
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4098
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4100
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1545
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1546
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 585
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    .line 586
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 669
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 670
    if-eqz p1, :cond_1

    .line 671
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1029
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1030
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1033
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1035
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1038
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1039
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1043
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1044
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1047
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1270
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1275
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 1280
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1274
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 741
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 742
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 743
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4209
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$2302(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 4210
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1628
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 1629
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 1630
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 785
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 786
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 788
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 789
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1556
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1560
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1561
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1562
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1565
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1566
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1567
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 1568
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 1569
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 1570
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 1571
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1572
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1573
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 720
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 721
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 856
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 857
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 858
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 860
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 802
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 803
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4067
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 4068
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1524
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 1885
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1886
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1887
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1888
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1890
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1894
    :cond_0
    if-nez v6, :cond_1

    .line 1895
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1898
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 1903
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3142
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 3143
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3147
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    .line 3148
    return-void

    .line 3145
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$200(Landroid/widget/AbsListView$FlingRunnable;)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3114
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3115
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3117
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3118
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3130
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3131
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 3133
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 3134
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1507
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1512
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1510
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 27
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3187
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 3188
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 3189
    const/16 v25, 0x1

    .line 3354
    :goto_0
    return v25

    .line 3192
    :cond_0
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    .line 3193
    .local v12, firstTop:I
    const/16 v25, 0x1

    sub-int v25, v6, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v18

    .line 3195
    .local v18, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3198
    .local v19, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v21, v25, v12

    .line 3199
    .local v21, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    .line 3200
    .local v10, end:I
    sub-int v22, v18, v10

    .line 3202
    .local v22, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v26, v0

    sub-int v15, v25, v26

    .line 3203
    .local v15, height:I
    if-gez p1, :cond_1

    .line 3204
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3209
    :goto_1
    if-gez p2, :cond_2

    .line 3210
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3215
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v11, v0

    .line 3217
    .local v11, firstPosition:I
    if-nez v11, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    if-lez p2, :cond_4

    .line 3221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 3222
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 3223
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 3224
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3229
    :goto_3
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 3206
    .end local v11           #firstPosition:I
    :cond_1
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 3212
    :cond_2
    const/16 v25, 0x1

    sub-int v25, v15, v25

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 3226
    .restart local v11       #firstPosition:I
    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    goto :goto_3

    .line 3232
    :cond_4
    add-int v25, v11, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    move/from16 v0, v18

    move v1, v10

    if-gt v0, v1, :cond_7

    if-gez p2, :cond_7

    .line 3236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mExcessScrollEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBlockExcessScroll:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 3237
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 3238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_5

    .line 3239
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3245
    :cond_5
    :goto_4
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 3242
    :cond_6
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    goto :goto_4

    .line 3249
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 3250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    .line 3251
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    add-int v25, v25, p2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 3252
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v25

    if-nez v25, :cond_8

    .line 3253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3255
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 3257
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    add-int p2, p2, v25

    .line 3258
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    move/from16 v25, v0

    add-int p1, p1, v25

    .line 3259
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 3266
    :cond_a
    if-gez p2, :cond_12

    const/16 v25, 0x1

    move/from16 v9, v25

    .line 3268
    .local v9, down:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v17

    .line 3269
    .local v17, inTouchMode:Z
    if-eqz v17, :cond_b

    .line 3270
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3273
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 3274
    .local v14, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v26

    sub-int v13, v25, v26

    .line 3276
    .local v13, footerViewsStart:I
    const/16 v23, 0x0

    .line 3277
    .local v23, start:I
    const/4 v8, 0x0

    .line 3279
    .local v8, count:I
    if-eqz v9, :cond_15

    .line 3280
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v25, p2

    .line 3281
    .local v24, top:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_c

    .line 3282
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3283
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_13

    .line 3322
    .end local v5           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v25, v0

    add-int v25, v25, p1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 3324
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 3326
    if-lez v8, :cond_d

    .line 3327
    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 3329
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 3331
    if-eqz v9, :cond_e

    .line 3332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v25, v0

    add-int v25, v25, v8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3335
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3337
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3338
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_f

    move/from16 v0, v22

    move v1, v3

    if-ge v0, v1, :cond_10

    .line 3339
    :cond_f
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 3342
    :cond_10
    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 3343
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v7, v25, v26

    .line 3344
    .local v7, childIndex:I
    if-ltz v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v25

    move v0, v7

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 3345
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 3349
    .end local v7           #childIndex:I
    :cond_11
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 3351
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 3352
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 3354
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 3266
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v13           #footerViewsStart:I
    .end local v14           #headerViewsCount:I
    .end local v16           #i:I
    .end local v17           #inTouchMode:Z
    .end local v23           #start:I
    :cond_12
    const/16 v25, 0x0

    move/from16 v9, v25

    goto/16 :goto_5

    .line 3286
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v13       #footerViewsStart:I
    .restart local v14       #headerViewsCount:I
    .restart local v16       #i:I
    .restart local v17       #inTouchMode:Z
    .restart local v23       #start:I
    .restart local v24       #top:I
    :cond_13
    add-int/lit8 v8, v8, 0x1

    .line 3287
    add-int v20, v11, v16

    .line 3288
    .local v20, position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_14

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_14

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3281
    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 3300
    .end local v5           #child:Landroid/view/View;
    .end local v16           #i:I
    .end local v20           #position:I
    .end local v24           #top:I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v4, v25, p2

    .line 3301
    .local v4, bottom:I
    const/16 v25, 0x1

    sub-int v16, v6, v25

    .restart local v16       #i:I
    :goto_7
    if-ltz v16, :cond_c

    .line 3302
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3303
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    move v1, v4

    if-le v0, v1, :cond_c

    .line 3306
    move/from16 v23, v16

    .line 3307
    add-int/lit8 v8, v8, 0x1

    .line 3308
    add-int v20, v11, v16

    .line 3309
    .restart local v20       #position:I
    move/from16 v0, v20

    move v1, v14

    if-lt v0, v1, :cond_16

    move/from16 v0, v20

    move v1, v13

    if-ge v0, v1, :cond_16

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3301
    :cond_16
    add-int/lit8 v16, v16, -0x1

    goto :goto_7
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1290
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1293
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1296
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1297
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1298
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1299
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1303
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1308
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1311
    .local v3, count:I
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1314
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1315
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1316
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1319
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1293
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1299
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1303
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1311
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1316
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1319
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1676
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
