.class public abstract Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.super Lcom/nemustech/tiffany/widget/TFAdapterView;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nemustech/tiffany/widget/TFAdapterView",
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

.field protected static final EXCESS_SCROLL_MODE_DECELERATE:I = 0x1

.field protected static final EXCESS_SCROLL_MODE_DRAG:I = 0x0

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DECELERATE:I = 0x3

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DRAG:I = 0x2

.field private static final EXCESS_SCROLL_RECOVER_DURATION:I = 0x96

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "TFAbsHorizontalListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

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
.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBlockExcessScroll:Z

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
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

.field private mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

.field mFastScrollEnabled:Z

.field private mFiltered:Z

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 582
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;)V

    .line 188
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 203
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 213
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 219
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    .line 224
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionLeftPadding:I

    .line 229
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionTopPadding:I

    .line 234
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionRightPadding:I

    .line 239
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionBottomPadding:I

    .line 244
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 249
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mHeightMeasureSpec:I

    .line 296
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 322
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedTop:I

    .line 360
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 380
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 391
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastTouchMode:I

    .line 394
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 397
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 439
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastScrollState:I

    .line 509
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 544
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    .line 554
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    .line 559
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockExcessScroll:Z

    .line 575
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    .line 583
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->initAbsListView()V

    .line 585
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 586
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 587
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 588
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 589
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 595
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 602
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 203
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 213
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 219
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    .line 224
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionLeftPadding:I

    .line 229
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionTopPadding:I

    .line 234
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionRightPadding:I

    .line 239
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionBottomPadding:I

    .line 244
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 249
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mHeightMeasureSpec:I

    .line 296
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 322
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedTop:I

    .line 360
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 380
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 382
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 391
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastTouchMode:I

    .line 394
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 397
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 439
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastScrollState:I

    .line 509
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 544
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    .line 554
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    .line 559
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockExcessScroll:Z

    .line 575
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    .line 603
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->initAbsListView()V

    .line 605
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 608
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 609
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 613
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 616
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 617
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setStackFromBottom(Z)V

    .line 619
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 620
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 622
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 623
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setTextFilterEnabled(Z)V

    .line 625
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 627
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setTranscriptMode(I)V

    .line 629
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 630
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setCacheColorHint(I)V

    .line 632
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 633
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 635
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 636
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSmoothScrollbarEnabled(Z)V

    .line 638
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 646
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 647
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 648
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setVerticalScrollBarEnabled(Z)V

    .line 649
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 650
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1026
    :cond_0
    const/4 v0, 0x0

    .line 1028
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$902(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollMode:I

    return p1
.end method

.method private clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2663
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2664
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2665
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2666
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2668
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2669
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 2671
    :cond_1
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCachingStarted:Z

    .line 2673
    :cond_2
    return-void
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2655
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2656
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2657
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2658
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCachingStarted:Z

    .line 2660
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

    .line 3368
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3369
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3370
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3371
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3373
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 3378
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3380
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3381
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3382
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3383
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3384
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3385
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3386
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3387
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3388
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3389
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3390
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3392
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3393
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3397
    :goto_0
    return-void

    .line 3395
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1487
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1488
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1490
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
    .line 3196
    sparse-switch p2, :sswitch_data_0

    .line 3222
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3198
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3199
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3200
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3201
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3225
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 3226
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 3227
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3204
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

    .line 3205
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3206
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3207
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3208
    .restart local v1       #dY:I
    goto :goto_0

    .line 3210
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3211
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3212
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3213
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3214
    .restart local v1       #dY:I
    goto :goto_0

    .line 3216
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

    .line 3217
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3218
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3219
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3220
    .restart local v1       #dY:I
    goto :goto_0

    .line 3196
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setFocusableInTouchMode(Z)V

    .line 831
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setWillNotDraw(Z)V

    .line 832
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 833
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 835
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchSlop:I

    .line 836
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDensityScale:F

    .line 837
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1791
    const/4 v6, 0x0

    .line 1793
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1797
    :cond_0
    if-nez v6, :cond_1

    .line 1798
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1799
    invoke-super {p0, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1801
    :cond_1
    if-eqz v6, :cond_2

    .line 1802
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->performHapticFeedback(I)Z

    .line 1804
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3169
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3170
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 3171
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getLocationOnScreen([I)V

    .line 3174
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 3175
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3176
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3181
    :goto_0
    return-void

    .line 3179
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 1411
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1413
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3160
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createTextFilter(Z)V

    .line 3162
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->positionPopup()V

    .line 3164
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->checkFocus()V

    .line 3166
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1951
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1952
    .local v0, distance:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchSlop:I

    if-le v0, v3, :cond_2

    .line 1953
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createScrollingCache()V

    .line 1954
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 1955
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionCorrection:I

    .line 1956
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1960
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1961
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1963
    :cond_0
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 1964
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1965
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1966
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1968
    :cond_1
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 1971
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    move v3, v6

    .line 1975
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 3

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 842
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
    .line 2458
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 2459
    .local v2, count:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    .line 2460
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2462
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2473
    :cond_0
    return-void

    .line 2466
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2467
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2468
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2469
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2466
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3477
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3439
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 3498
    instance-of v0, p1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3403
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    .line 3406
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3407
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dismissPopup()V

    .line 3410
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1116
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 1117
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1118
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_2

    .line 1119
    mul-int/lit8 v2, v1, 0x64

    .line 1121
    .local v2, extent:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1122
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1123
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1124
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1125
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1128
    :cond_0
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1129
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1130
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1131
    if-lez v3, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    :cond_1
    move v6, v2

    .line 1140
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :goto_0
    return v6

    :cond_2
    move v6, v8

    .line 1137
    goto :goto_0

    :cond_3
    move v6, v7

    .line 1140
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 1145
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    .line 1146
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 1147
    .local v0, childCount:I
    if-ltz v2, :cond_3

    if-lez v0, :cond_3

    .line 1148
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_0

    .line 1149
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1150
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1151
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1152
    .local v3, height:I
    if-lez v3, :cond_3

    .line 1153
    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1168
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :goto_0
    return v7

    .line 1157
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    .line 1158
    .local v1, count:I
    if-nez v2, :cond_1

    .line 1159
    const/4 v4, 0x0

    .line 1165
    .local v4, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1160
    .end local v4           #index:I
    :cond_1
    add-int v7, v2, v0

    if-ne v7, v1, :cond_2

    .line 1161
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1163
    .end local v4           #index:I
    :cond_2
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1

    .end local v1           #count:I
    .end local v4           #index:I
    :cond_3
    move v7, v9

    .line 1168
    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1705
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3153
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1417
    const/4 v2, 0x0

    .line 1418
    .local v2, saveCount:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1419
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1421
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollX:I

    .line 1422
    .local v3, scrollX:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollY:I

    .line 1423
    .local v4, scrollY:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1426
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mGroupFlags:I

    .line 1429
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 1430
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1431
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1434
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1436
    if-eqz v1, :cond_2

    .line 1437
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1440
    :cond_2
    if-eqz v0, :cond_3

    .line 1441
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1442
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mGroupFlags:I

    .line 1444
    :cond_3
    return-void

    .line 1418
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
    .line 1856
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2392
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2397
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1587
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->drawableStateChanged()V

    .line 1588
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1591
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3488
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3493
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 3547
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getExcessScrollMode()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollMode:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 817
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 821
    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 826
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2862
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2852
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 1179
    .local v0, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1180
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1189
    :goto_0
    return v4

    .line 1183
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1184
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1187
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1188
    .local v3, top:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1189
    .local v2, fadeLength:F
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingLeft:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1195
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 1196
    .local v1, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getRightFadingEdgeStrength()F

    move-result v2

    .line 1197
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1207
    :goto_0
    return v5

    .line 1200
    :cond_0
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1201
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1204
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1205
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWidth()I

    move-result v4

    .line 1206
    .local v4, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1207
    .local v3, fadeLength:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1290
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1291
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3527
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1067
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 3522
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTranscriptMode:I

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

    .line 3033
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    .line 3034
    .local v0, count:I
    if-lez v0, :cond_a

    .line 3041
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 3043
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNeedSync:Z

    .line 3045
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 3048
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 3144
    :cond_1
    :goto_0
    return-void

    .line 3052
    :cond_2
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 3100
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3102
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v1

    .line 3105
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 3106
    sub-int v1, v0, v5

    .line 3108
    :cond_4
    if-gez v1, :cond_5

    .line 3109
    const/4 v1, 0x0

    .line 3113
    :cond_5
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3115
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 3116
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3054
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3059
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 3060
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    goto :goto_0

    .line 3066
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->findSyncPosition()I

    move-result v1

    .line 3067
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 3069
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3070
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 3072
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    .line 3074
    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWidth()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 3077
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 3085
    :goto_1
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3081
    :cond_7
    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    goto :goto_1

    .line 3093
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 3094
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    goto :goto_0

    .line 3120
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3121
    if-ltz v2, :cond_a

    .line 3122
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3129
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 3137
    :cond_a
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 3138
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    .line 3139
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedRowId:J

    .line 3140
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNextSelectedPosition:I

    .line 3141
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNextSelectedRowId:J

    .line 3142
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNeedSync:Z

    .line 3143
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 3137
    goto :goto_2

    .line 3052
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3416
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2876
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 2877
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 2878
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 2879
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 2881
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2882
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2883
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedTop:I

    .line 2884
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2886
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    .line 2916
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->rememberSyncState()V

    .line 2917
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->requestLayout()V

    .line 2918
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 2919
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 748
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;->onScroll(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;III)V

    .line 751
    :cond_0
    return-void
.end method

.method public isExcessScrollEnabled()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3232
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1547
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1548
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1549
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1552
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1554
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1555
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1578
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1556
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1558
    :cond_3
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 1560
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isLongClickable()Z

    move-result v1

    .line 1561
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1562
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1563
    if-eqz v1, :cond_6

    .line 1564
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1570
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1571
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1572
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;

    .line 1574
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1575
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1567
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
    .line 1251
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 1357
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1360
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1366
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1373
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 1374
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1375
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1376
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1394
    :cond_0
    :goto_0
    return-object v0

    .line 1384
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1385
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1386
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 2676
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2677
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2676
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2679
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1634
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onAttachedToWindow()V

    .line 1636
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1637
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1640
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1596
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1598
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1624
    :goto_0
    return-object v4

    .line 1604
    :cond_0
    sget-object v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1609
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1610
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1611
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1612
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1613
    move v0, v2

    .line 1619
    :cond_1
    if-ltz v0, :cond_2

    .line 1620
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1624
    goto :goto_0

    .line 1611
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 3304
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3308
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createTextFilter(Z)V

    .line 3309
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3310
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3311
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3345
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3347
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3348
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3350
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1644
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onDetachedFromWindow()V

    .line 1646
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1647
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1650
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3480
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3481
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 3482
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->resurrectSelection()Z

    .line 3484
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1072
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1073
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->resurrectSelection()Z

    .line 1076
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3420
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3422
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3423
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->showPopup()V

    .line 3432
    :cond_0
    :goto_0
    return-void

    .line 3427
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3428
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    .line 2401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2402
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 2403
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 2414
    .local v4, y:I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v7

    .line 2450
    :goto_1
    return v5

    .line 2416
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 2417
    .local v1, motionPosition:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    if-ltz v1, :cond_1

    .line 2420
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2421
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    .line 2422
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionX:I

    .line 2423
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionY:I

    .line 2424
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    .line 2425
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2426
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->clearScrollingCache()V

    .line 2428
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastX:I

    goto :goto_0

    .line 2433
    .end local v1           #motionPosition:I
    :pswitch_1
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 2435
    :pswitch_2
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionX:I

    sub-int v5, v3, v5

    invoke-direct {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->startScrollIfNeeded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2436
    const/4 v5, 0x1

    goto :goto_1

    .line 2444
    :pswitch_3
    const/4 v5, -0x1

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2445
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2433
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 1837
    sparse-switch p1, :sswitch_data_0

    .line 1849
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1840
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1842
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1843
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1844
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 1845
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1846
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1837
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1226
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onLayout(ZIIII)V

    .line 1227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mInLayout:Z

    .line 1228
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->layoutChildren()V

    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mInLayout:Z

    .line 1230
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1215
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->useDefaultSelector()V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 1218
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1219
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1220
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1221
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1222
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 994
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;

    move-object v1, v0

    .line 996
    .local v1, ss:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 997
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    .line 999
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncHeight:J

    .line 1001
    iget-wide v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 1002
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNeedSync:Z

    .line 1003
    iget-wide v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncRowId:J

    .line 1004
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->position:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    .line 1005
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->viewTop:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSpecificTop:I

    .line 1006
    const/4 v2, 0x0

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncMode:I

    .line 1018
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setFilterText(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->requestLayout()V

    .line 1021
    return-void

    .line 1007
    :cond_1
    iget-wide v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 1008
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 1010
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1011
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNeedSync:Z

    .line 1012
    iget-wide v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncRowId:J

    .line 1013
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->position:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncPosition:I

    .line 1014
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->viewTop:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSpecificTop:I

    .line 1015
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 948
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dismissPopup()V

    .line 950
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 952
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;

    invoke-direct {v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 954
    .local v4, ss:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    move v1, v8

    .line 955
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getSelectedItemId()J

    move-result-wide v2

    .line 956
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->selectedId:J

    .line 957
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHeight()I

    move-result v8

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->height:I

    .line 959
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    .line 961
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedTop:I

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->viewTop:I

    .line 962
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->position:I

    .line 963
    iput-wide v11, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->firstId:J

    .line 978
    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 979
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 980
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 981
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 982
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 983
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 989
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v10

    .line 954
    goto :goto_0

    .line 965
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 967
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 968
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->viewTop:I

    .line 969
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->position:I

    .line 970
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->firstId:J

    goto :goto_1

    .line 972
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iput v10, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->viewTop:I

    .line 973
    iput-wide v11, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->firstId:J

    .line 974
    iput v10, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onScrollBumpedAgainstLimits(Z)V
    .locals 2
    .parameter "fling"

    .prologue
    .line 2386
    const-string v0, "TFAbsHorizontalListView"

    const-string v1, "onScrollBumpedAgainstLimits"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    .line 1450
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->rememberSyncState()V

    .line 1456
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3447
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3448
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3449
    .local v1, length:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3450
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3452
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->showPopup()V

    .line 3453
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    .line 3459
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 3460
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3462
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 3463
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3470
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 3454
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3456
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dismissPopup()V

    .line 3457
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    goto :goto_0

    .line 3465
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 2004
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2005
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2006
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2011
    .local v17, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2012
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2014
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2019
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockExcessScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 2024
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->start()V

    .line 2027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    .line 2035
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 2253
    .end local v4           #action:I
    :cond_3
    :goto_0
    const/16 v18, 0x1

    :goto_1
    return v18

    .line 2037
    .restart local v4       #action:I
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->pointToPosition(II)I

    move-result v11

    .line 2038
    .local v11, motionPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2039
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 2040
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    if-ltz v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .end local v4           #action:I
    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v11}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2044
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2047
    new-instance v18, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2049
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2065
    :cond_5
    :goto_2
    if-ltz v11, :cond_6

    .line 2067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2068
    .local v14, v:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    .line 2069
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionX:I

    .line 2070
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionY:I

    .line 2071
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    .line 2073
    .end local v14           #v:Landroid/view/View;
    :cond_6
    const/high16 v18, -0x8000

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastX:I

    goto/16 :goto_0

    .line 2051
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    if-eqz v18, :cond_8

    if-gez v11, :cond_8

    .line 2055
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2058
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createScrollingCache()V

    .line 2059
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2060
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->findMotionRow(I)I

    move-result v11

    .line 2061
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2078
    .end local v11           #motionPosition:I
    .restart local v4       #action:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionX:I

    move/from16 v18, v0

    sub-int v7, v16, v18

    .line 2079
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    goto/16 :goto_0

    .line 2085
    :pswitch_2
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_0

    .line 2095
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastX:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 2096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionCorrection:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 2097
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastX:I

    move/from16 v18, v0

    const/high16 v19, -0x8000

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastX:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    move/from16 v9, v18

    .line 2098
    .local v9, incrementalDeltaX:I
    :goto_3
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->trackMotionScroll(II)V

    .line 2101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2102
    .local v12, motionView:Landroid/view/View;
    if-eqz v12, :cond_9

    .line 2105
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewNewTop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 2108
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->findMotionRow(I)I

    move-result v11

    .line 2110
    .restart local v11       #motionPosition:I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionCorrection:I

    .line 2111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2112
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    .line 2113
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionX:I

    .line 2114
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    .line 2117
    .end local v11           #motionPosition:I
    :cond_9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastX:I

    goto/16 :goto_0

    .end local v9           #incrementalDeltaX:I
    .end local v12           #motionView:Landroid/view/View;
    :cond_a
    move v9, v7

    .line 2097
    goto :goto_3

    .line 2126
    .end local v7           #deltaX:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_2

    .line 2207
    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 2210
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 2213
    .local v8, handler:Landroid/os/Handler;
    if-eqz v8, :cond_b

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2217
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 2219
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2130
    .end local v8           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    move v11, v0

    .line 2131
    .restart local v11       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2132
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-nez v18, :cond_14

    .line 2133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 2134
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2137
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 2138
    new-instance v18, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

    .line 2141
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;

    move-object v13, v0

    .line 2142
    .local v13, performClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;
    iput-object v5, v13, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->mChild:Landroid/view/View;

    .line 2143
    iput v11, v13, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 2144
    invoke-virtual {v13}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->rememberWindowAttachCount()V

    .line 2146
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 2148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 2149
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 2150
    .restart local v8       #handler:Landroid/os/Handler;
    if-eqz v8, :cond_f

    .line 2151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    :goto_5
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2154
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 2155
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 2157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->layoutChildren()V

    .line 2159
    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2160
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->positionSelector(Landroid/view/View;)V

    .line 2161
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2164
    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_10

    move-object v0, v6

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 2165
    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2168
    :cond_10
    new-instance v18, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2179
    :cond_11
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2151
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    move-object/from16 v18, v0

    goto/16 :goto_5

    .line 2181
    .end local v8           #handler:Landroid/os/Handler;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 2182
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2186
    .end local v13           #performClick:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    goto/16 :goto_4

    .line 2189
    .end local v5           #child:Landroid/view/View;
    .end local v11           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    .line 2190
    .local v15, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2191
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v10, v0

    .line 2193
    .local v10, initialVelocity:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_16

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_15

    .line 2197
    new-instance v18, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

    .line 2199
    :cond_15
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    move v0, v10

    neg-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 2202
    :cond_16
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2203
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2232
    .end local v10           #initialVelocity:I
    .end local v15           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2233
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 2234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2235
    .restart local v12       #motionView:Landroid/view/View;
    if-eqz v12, :cond_17

    .line 2236
    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2238
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->clearScrollingCache()V

    .line 2240
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 2241
    .restart local v8       #handler:Landroid/os/Handler;
    if-eqz v8, :cond_18

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2245
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 2247
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2035
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2079
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2126
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 1979
    if-eqz p1, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->hideSelector()V

    .line 1985
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1988
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 1989
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->layoutChildren()V

    .line 1992
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1654
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onWindowFocusChanged(Z)V

    .line 1656
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 1658
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_2

    .line 1659
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1660
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1662
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dismissPopup()V

    .line 1664
    if-ne v0, v4, :cond_0

    .line 1666
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 1690
    :cond_0
    :goto_1
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastTouchMode:I

    .line 1691
    return-void

    .end local v0           #touchMode:I
    :cond_1
    move v0, v4

    .line 1656
    goto :goto_0

    .line 1669
    .restart local v0       #touchMode:I
    :cond_2
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    if-eqz v1, :cond_3

    .line 1671
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->showPopup()V

    .line 1675
    :cond_3
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1677
    if-ne v0, v4, :cond_4

    .line 1679
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->resurrectSelection()Z

    goto :goto_1

    .line 1683
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->hideSelector()V

    .line 1684
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 1685
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1867
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1868
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1869
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1870
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1873
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 1874
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1875
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1876
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1877
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1878
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1879
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1883
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 1874
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1883
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
    .line 1896
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 1897
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1898
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1900
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
    .line 1398
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1399
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

    .line 1400
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->positionSelector(IIII)V

    .line 1403
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 1404
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1405
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 1406
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->refreshDrawableState()V

    .line 1408
    :cond_0
    return-void

    .line 1405
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
    .line 3558
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 3559
    .local v1, childCount:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->access$1700(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    move-result-object v3

    .line 3562
    .local v3, listener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3563
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3564
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 3566
    .local v4, lp:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    iget v6, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3567
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3568
    if-eqz v3, :cond_0

    .line 3570
    invoke-interface {v3, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 3562
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3574
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 3575
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeAllViewsInLayout()V

    .line 3576
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 2894
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    .line 2895
    .local v0, position:I
    if-gez v0, :cond_0

    .line 2896
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 2898
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2899
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2900
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2483
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2484
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2485
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;I)V

    .line 2486
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLastScrollState:I

    .line 2489
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1081
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 1083
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->resetList()V

    .line 872
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->requestLayout()V

    .line 873
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 875
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1089
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeAllViewsInLayout()V

    .line 1090
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    .line 1091
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    .line 1092
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mNeedSync:Z

    .line 1093
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOldSelectedPosition:I

    .line 1094
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOldSelectedRowId:J

    .line 1095
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 1096
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1097
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedTop:I

    .line 1098
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1099
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 1100
    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->rememberSyncState()V

    .line 1108
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeAllViewsInLayout()V

    .line 1109
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->clear()V

    .line 1110
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->setViewTypeCount(I)V

    .line 1111
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->requestLayout()V

    .line 1112
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 2934
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v4

    .line 2936
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 2937
    const/16 v18, 0x0

    .line 3028
    :goto_0
    return v18

    .line 2940
    :cond_0
    const/4 v14, 0x0

    .line 2942
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    .line 2943
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 2944
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move v8, v0

    .line 2945
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    move v15, v0

    .line 2946
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 2948
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 2949
    move v13, v15

    .line 2951
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2952
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 2953
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v12

    .line 2956
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 2957
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 3013
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mResurrectToPosition:I

    .line 3014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3015
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 3016
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->clearScrollingCache()V

    .line 3017
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSpecificTop:I

    .line 3018
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 3019
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 3020
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 3021
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelectionInt(I)V

    .line 3022
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 3026
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 3028
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2958
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 2959
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 2963
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 2965
    move v13, v8

    .line 2966
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 2967
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2968
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 2970
    .local v16, top:I
    if-nez v9, :cond_5

    .line 2972
    move/from16 v14, v16

    .line 2974
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 2977
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 2980
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 2982
    add-int v13, v8, v9

    .line 2983
    move/from16 v14, v16

    .line 2984
    goto/16 :goto_1

    .line 2966
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2988
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    move v10, v0

    .line 2989
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 2990
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 2992
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 2993
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2994
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 2995
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2997
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2998
    move/from16 v14, v16

    .line 2999
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 3000
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 3004
    :cond_9
    if-gt v3, v5, :cond_a

    .line 3005
    add-int v13, v8, v9

    .line 3006
    move/from16 v14, v16

    .line 3007
    goto/16 :goto_1

    .line 2992
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 3024
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 3028
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 3244
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 3296
    :goto_0
    return v4

    .line 3248
    :cond_0
    const/4 v2, 0x0

    .line 3249
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 3250
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 3273
    :goto_1
    if-eqz v3, :cond_2

    .line 3274
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createTextFilter(Z)V

    .line 3276
    move-object v1, p3

    .line 3277
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 3278
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 3281
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3282
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_2
    move v4, v2

    .line 3296
    goto :goto_0

    .line 3257
    :sswitch_0
    const/4 v3, 0x0

    .line 3258
    goto :goto_1

    .line 3260
    :sswitch_1
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 3262
    const/4 v2, 0x1

    .line 3263
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3265
    :cond_3
    const/4 v3, 0x0

    .line 3266
    goto :goto_1

    .line 3269
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    goto :goto_1

    .line 3284
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3285
    goto :goto_2

    .line 3288
    :pswitch_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3289
    goto :goto_2

    .line 3292
    :pswitch_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 3250
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

    .line 3282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 3537
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mCacheColorHint:I

    .line 3538
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1502
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 1503
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    .line 566
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFastScrollEnabled:Z

    .line 674
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1039
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1040
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createTextFilter(Z)V

    .line 1043
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1045
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1049
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1053
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    .line 1054
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1057
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1237
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1242
    .local v0, changed:Z
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->positionPopup()V

    .line 1247
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$OnScrollListener;

    .line 737
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 738
    return-void
.end method

.method public setRecyclerListener(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->access$1702(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    .line 3591
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollUp:Landroid/view/View;

    .line 1582
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollDown:Landroid/view/View;

    .line 1583
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->clearScrollingCache()V

    .line 784
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollingCacheEnabled:Z

    .line 785
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1513
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1517
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1519
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1521
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1522
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1523
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1524
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionLeftPadding:I

    .line 1525
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionTopPadding:I

    .line 1526
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionRightPadding:I

    .line 1527
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectionBottomPadding:I

    .line 1528
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1529
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1530
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 716
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 864
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mStackFromBottom:Z

    .line 865
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->requestLayoutIfNecessary()V

    .line 867
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 798
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTextFilterEnabled:Z

    .line 799
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3512
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTranscriptMode:I

    .line 3513
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->touchModeDrawsInPressedState()Z

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
    .line 1814
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1815
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1816
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1817
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1819
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1823
    :cond_0
    if-nez v6, :cond_1

    .line 1824
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1827
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 1832
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1464
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1469
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1467
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 25
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2689
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v6

    .line 2690
    .local v6, childCount:I
    if-nez v6, :cond_0

    .line 2843
    :goto_0
    return-void

    .line 2694
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 2695
    .local v11, firstTop:I
    const/16 v23, 0x1

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v16

    .line 2697
    .local v16, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 2700
    .local v17, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v19, v23, v11

    .line 2701
    .local v19, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWidth()I

    move-result v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v9, v23, v24

    .line 2702
    .local v9, end:I
    sub-int v20, v16, v9

    .line 2704
    .local v20, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mPaddingLeft:I

    move/from16 v24, v0

    sub-int v14, v23, v24

    .line 2705
    .local v14, height:I
    if-gez p1, :cond_1

    .line 2706
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2711
    :goto_1
    if-gez p2, :cond_2

    .line 2712
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2717
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2719
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_3

    move/from16 v0, v20

    move v1, v3

    if-lt v0, v1, :cond_3

    .line 2720
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->hideSelector()V

    .line 2721
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 2722
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 2723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    move/from16 v23, v0

    add-int v23, v23, p1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 2708
    .end local v3           #absIncrementalDeltaY:I
    :cond_1
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2714
    :cond_2
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2725
    .restart local v3       #absIncrementalDeltaY:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move v10, v0

    .line 2727
    .local v10, firstPosition:I
    if-nez v10, :cond_5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move v0, v11

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    if-lez p1, :cond_5

    .line 2731
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockExcessScroll:Z

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 2732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    add-int v23, v23, p2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 2733
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollMode:I

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    goto/16 :goto_0

    .line 2736
    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 2741
    :cond_5
    add-int v23, v10, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    move/from16 v0, v16

    move v1, v9

    if-gt v0, v1, :cond_7

    if-gez p1, :cond_7

    .line 2745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockExcessScroll:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 2746
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    add-int v23, v23, p2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 2747
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollMode:I

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    goto/16 :goto_0

    .line 2750
    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 2757
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 2758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 2759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    add-int v23, v23, p2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 2760
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollMode:I

    .line 2761
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    goto/16 :goto_0

    .line 2764
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    add-int p2, p2, v23

    .line 2765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    move/from16 v23, v0

    add-int p1, p1, v23

    .line 2766
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 2774
    :cond_9
    if-gez p2, :cond_c

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 2776
    .local v8, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->hideSelector()V

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHeaderViewsCount()I

    move-result v13

    .line 2779
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getFooterViewsCount()I

    move-result v24

    sub-int v12, v23, v24

    .line 2781
    .local v12, footerViewsStart:I
    const/16 v21, 0x0

    .line 2782
    .local v21, start:I
    const/4 v7, 0x0

    .line 2784
    .local v7, count:I
    if-eqz v8, :cond_f

    .line 2785
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v23, p2

    .line 2786
    .local v22, top:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    if-ge v15, v6, :cond_a

    .line 2787
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2788
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    .line 2827
    .end local v5           #child:Landroid/view/View;
    .end local v22           #top:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    move/from16 v23, v0

    add-int v23, v23, p1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewNewTop:I

    .line 2829
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 2830
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->detachViewsFromParent(II)V

    .line 2831
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 2833
    if-eqz v8, :cond_b

    .line 2834
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    .line 2837
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 2838
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->fillGap(Z)V

    .line 2839
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 2841
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 2774
    .end local v7           #count:I
    .end local v8           #down:Z
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v15           #i:I
    .end local v21           #start:I
    :cond_c
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_3

    .line 2791
    .restart local v5       #child:Landroid/view/View;
    .restart local v7       #count:I
    .restart local v8       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v21       #start:I
    .restart local v22       #top:I
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 2792
    add-int v18, v10, v15

    .line 2793
    .local v18, position:I
    move/from16 v0, v18

    move v1, v13

    if-lt v0, v1, :cond_e

    move/from16 v0, v18

    move v1, v12

    if-ge v0, v1, :cond_e

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2786
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2805
    .end local v5           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #position:I
    .end local v22           #top:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getWidth()I

    move-result v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v4, v23, p2

    .line 2806
    .local v4, bottom:I
    const/16 v23, 0x1

    sub-int v15, v6, v23

    .restart local v15       #i:I
    :goto_5
    if-ltz v15, :cond_a

    .line 2807
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2808
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v0, v23

    move v1, v4

    if-le v0, v1, :cond_a

    .line 2811
    move/from16 v21, v15

    .line 2812
    add-int/lit8 v7, v7, 0x1

    .line 2813
    add-int v18, v10, v15

    .line 2814
    .restart local v18       #position:I
    move/from16 v0, v18

    move v1, v13

    if-lt v0, v1, :cond_10

    move/from16 v0, v18

    move v1, v12

    if-ge v0, v1, :cond_10

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2806
    :cond_10
    add-int/lit8 v15, v15, -0x1

    goto :goto_5
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1254
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1257
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1260
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1261
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1262
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1263
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1267
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1272
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 1275
    .local v3, count:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1278
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1279
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1280
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mRight:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1283
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1257
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1263
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1267
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1275
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1280
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1283
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
