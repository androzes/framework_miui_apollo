.class public abstract Lcom/nemustech/tiffany/widget/TFAbsListView;
.super Lcom/nemustech/tiffany/widget/TFAdapterView;
.source "TFAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;
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

.field protected static final DEBUG_EXCESS_SCROLL:Z = false

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

.field private static final TAG:Ljava/lang/String; = "TFAbsListView"

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

.field private mClearScrollingCache:Ljava/lang/Runnable;

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

.field private mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

.field mFastScrollEnabled:Z

.field private mFiltered:Z

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

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

.field private mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

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

    .line 602
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;)V

    .line 203
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 218
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 228
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 234
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 239
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 244
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 249
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 254
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 259
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 264
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 311
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 337
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 375
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 395
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 406
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 409
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollProfilingStarted:Z

    .line 412
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingProfilingStarted:Z

    .line 454
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 529
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 564
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    .line 574
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 579
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 595
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    .line 603
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initAbsListView()V

    .line 605
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 606
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 607
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 608
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 609
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 615
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 616
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 622
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 218
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 228
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 234
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 239
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 244
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 249
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 254
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 259
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 264
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 311
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 337
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 375
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 395
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 397
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 406
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 409
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollProfilingStarted:Z

    .line 412
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingProfilingStarted:Z

    .line 454
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 529
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 564
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    .line 574
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 579
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 595
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    .line 623
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initAbsListView()V

    .line 625
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 628
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 629
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 636
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 637
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setStackFromBottom(Z)V

    .line 639
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 640
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setScrollingCacheEnabled(Z)V

    .line 642
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 643
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setTextFilterEnabled(Z)V

    .line 645
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 647
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setTranscriptMode(I)V

    .line 649
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 650
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setCacheColorHint(I)V

    .line 652
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 653
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFastScrollEnabled(Z)V

    .line 655
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 656
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 658
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 659
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

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

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1600(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$1800(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    return-object v0
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

    .line 3856
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 3874
    :goto_0
    return v4

    .line 3857
    :cond_0
    const/4 v2, 0x1

    .line 3859
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3860
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 3861
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3862
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3863
    const/4 v2, 0x0

    .line 3864
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

    .line 3867
    :cond_1
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 3868
    const/4 v2, 0x0

    .line 3869
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

    .line 3860
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #view:Landroid/view/View;
    :cond_3
    move v4, v2

    .line 3874
    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2848
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$3;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2865
    return-void
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2839
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2840
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2841
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2842
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 2844
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

    .line 3609
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3610
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3611
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3612
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3614
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3619
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3621
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3622
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3623
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3624
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3625
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3626
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3627
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3628
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3629
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3630
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3631
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3632
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3634
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3635
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3639
    :goto_0
    return-void

    .line 3637
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 3431
    sparse-switch p2, :sswitch_data_0

    .line 3457
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3433
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3434
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3435
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3436
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3460
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 3461
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 3462
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3439
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

    .line 3440
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3441
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3442
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3443
    .restart local v1       #dY:I
    goto :goto_0

    .line 3445
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3446
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3447
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3448
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3449
    .restart local v1       #dY:I
    goto :goto_0

    .line 3451
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

    .line 3452
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3453
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3454
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3455
    .restart local v1       #dY:I
    goto :goto_0

    .line 3431
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

    .line 663
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setClickable(Z)V

    .line 664
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFocusableInTouchMode(Z)V

    .line 665
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setWillNotDraw(Z)V

    .line 666
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 667
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setScrollingCacheEnabled(Z)V

    .line 669
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 670
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchSlop:I

    .line 671
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    .line 672
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    .line 673
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDensityScale:F

    .line 674
    return-void
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3404
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3405
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 3406
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getLocationOnScreen([I)V

    .line 3409
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 3410
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3411
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3416
    :goto_0
    return-void

    .line 3414
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 1505
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1507
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3395
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3396
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3397
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionPopup()V

    .line 3399
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkFocus()V

    .line 3401
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2082
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2083
    .local v0, distance:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchSlop:I

    if-le v0, v3, :cond_2

    .line 2084
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createScrollingCache()V

    .line 2085
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2086
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    .line 2087
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2091
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2092
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2094
    :cond_0
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2095
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2096
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2097
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2099
    :cond_1
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2102
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v3, v6

    .line 2106
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
    .line 853
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 855
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
    .line 2625
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    .line 2626
    .local v2, count:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    .line 2627
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2629
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2640
    :cond_0
    return-void

    .line 2633
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2634
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2635
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2636
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2633
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3719
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3681
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 3740
    instance-of v0, p1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3645
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3646
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 3648
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3649
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 3652
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1170
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 1171
    .local v1, count:I
    if-lez v1, :cond_4

    .line 1172
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3

    .line 1173
    mul-int/lit8 v2, v1, 0x64

    .line 1175
    .local v2, extent:I
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1176
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1177
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1178
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1179
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1182
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1183
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1184
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1185
    if-lez v3, :cond_1

    .line 1186
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1189
    :cond_1
    move v5, v2

    .line 1192
    .local v5, retVal:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1194
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1195
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1198
    .end local v4           #ratio:F
    :cond_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1204
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

    .line 1201
    goto :goto_0

    :cond_4
    move v8, v9

    .line 1204
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 18

    .prologue
    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move v5, v0

    .line 1210
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    .line 1211
    .local v2, childCount:I
    if-ltz v5, :cond_5

    if-lez v2, :cond_5

    .line 1212
    const/4 v9, 0x0

    .line 1213
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1214
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1215
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1216
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1217
    .local v6, height:I
    if-lez v6, :cond_0

    .line 1218
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1222
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move v14, v0

    if-gez v14, :cond_1

    .line 1223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move v10, v0

    .line 1224
    .local v10, savedExcessScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1225
    .local v11, shrinkedScrollExtent:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1227
    .local v8, normalScrollExtent:I
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 1229
    sub-int v4, v8, v11

    .line 1231
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedExcessScroll:I
    .end local v11           #shrinkedScrollExtent:I
    :cond_1
    move v14, v9

    .line 1248
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_0
    return v14

    .line 1237
    .restart local v9       #retVal:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move v3, v0

    .line 1238
    .local v3, count:I
    if-nez v5, :cond_3

    .line 1239
    const/4 v7, 0x0

    .line 1245
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

    .line 1240
    .end local v7           #index:I
    :cond_3
    add-int v14, v5, v2

    if-ne v14, v3, :cond_4

    .line 1241
    move v7, v3

    .restart local v7       #index:I
    goto :goto_1

    .line 1243
    .end local v7           #index:I
    :cond_4
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_1

    .line 1248
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1824
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3386
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3388
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1511
    const/4 v2, 0x0

    .line 1512
    .local v2, saveCount:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1513
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1515
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollX:I

    .line 1516
    .local v3, scrollX:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    .line 1517
    .local v4, scrollY:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1520
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    .line 1523
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 1524
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1525
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1528
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1530
    if-eqz v1, :cond_2

    .line 1531
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1534
    :cond_2
    if-eqz v0, :cond_3

    .line 1535
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1536
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    .line 1538
    :cond_3
    return-void

    .line 1512
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
    .line 1987
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2555
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2560
    return-void
.end method

.method drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1581
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1582
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1584
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1685
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->drawableStateChanged()V

    .line 1686
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1689
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
    .line 96
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3730
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3735
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1280
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 1281
    .local v1, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1282
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1292
    :goto_0
    return v5

    .line 1285
    :cond_0
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1286
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1289
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v6, v1, v7

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getExcessScrollDrawShift(I)I

    move-result v6

    add-int v0, v5, v6

    .line 1290
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v4

    .line 1291
    .local v4, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1292
    .local v3, fadeLength:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

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
    .line 3789
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1257
    const/4 v0, 0x0

    return v0
.end method

.method protected getExcessScrollMode()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 841
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 844
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 845
    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3093
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3083
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1384
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1385
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3769
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1121
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

    .line 1262
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    .line 1263
    .local v0, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1264
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1274
    :goto_0
    return v4

    .line 1267
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1268
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1271
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getExcessScrollDrawShift(I)I

    move-result v5

    add-int v3, v4, v5

    .line 1272
    .local v3, top:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    if-lt v3, v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1274
    .local v2, fadeLength:F
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

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
    .line 3764
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

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

    .line 3268
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    .line 3269
    .local v0, count:I
    if-lez v0, :cond_a

    .line 3276
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 3278
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 3280
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 3283
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3379
    :cond_1
    :goto_0
    return-void

    .line 3287
    :cond_2
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 3335
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3337
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 3340
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 3341
    sub-int v1, v0, v5

    .line 3343
    :cond_4
    if-gez v1, :cond_5

    .line 3344
    const/4 v1, 0x0

    .line 3348
    :cond_5
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3350
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 3351
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3289
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3294
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3295
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 3301
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findSyncPosition()I

    move-result v1

    .line 3302
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 3304
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3305
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 3307
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    .line 3309
    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 3312
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3320
    :goto_1
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3316
    :cond_7
    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 3328
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3329
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 3355
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3356
    if-ltz v2, :cond_a

    .line 3357
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3364
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 3372
    :cond_a
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3373
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    .line 3374
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedRowId:J

    .line 3375
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    .line 3376
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedRowId:J

    .line 3377
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 3378
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 3372
    goto :goto_2

    .line 3287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3658
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3107
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3108
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3109
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3110
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3112
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 3113
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 3114
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 3115
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3117
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 3147
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->rememberSyncState()V

    .line 3148
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 3149
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 3150
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;->onScroll(Lcom/nemustech/tiffany/widget/TFAbsListView;III)V

    .line 775
    :cond_0
    return-void
.end method

.method public isExcessScrollEnabled()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3467
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1641
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1646
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1647
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1650
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1652
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1653
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1654
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1656
    :cond_3
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1658
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v1

    .line 1659
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1660
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1661
    if-eqz v1, :cond_6

    .line 1662
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1668
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1669
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1670
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    .line 1672
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1673
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1665
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
    .line 1345
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 1451
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1454
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1460
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1467
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 1468
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1469
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1470
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1488
    :cond_0
    :goto_0
    return-object v0

    .line 1478
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1479
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1480
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1732
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onAttachedToWindow()V

    .line 1734
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1735
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1737
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 1738
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1741
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 3825
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 3827
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 3829
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 3831
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2100(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 3832
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 3833
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 3834
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 3835
    const/4 v4, 0x0

    .line 3836
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

    .line 3833
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3827
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 3843
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2200(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3844
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 3845
    :cond_3
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v7}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2300(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 3846
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 3847
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 3848
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 3847
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3852
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

    .line 1694
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1696
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1722
    :goto_0
    return-object v4

    .line 1702
    :cond_0
    sget-object v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1707
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1708
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1709
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1710
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1711
    move v0, v2

    .line 1717
    :cond_1
    if-ltz v0, :cond_2

    .line 1718
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1722
    goto :goto_0

    .line 1709
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 3545
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3549
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3550
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3551
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3552
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$4;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$4;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3586
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3588
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3589
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3591
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1745
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onDetachedFromWindow()V

    .line 1748
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1750
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1751
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1753
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 1754
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1755
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1758
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3722
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3723
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3724
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 3726
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1126
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1127
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 1130
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3662
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3664
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3665
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 3674
    :cond_0
    :goto_0
    return-void

    .line 3669
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3670
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2565
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 2566
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 2577
    .local v4, y:I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v6

    .line 2617
    :goto_1
    return v5

    .line 2580
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findMotionRow(I)I

    move-result v1

    .line 2581
    .local v1, motionPosition:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eq v5, v8, :cond_1

    if-ltz v1, :cond_1

    .line 2584
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2585
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2586
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionX:I

    .line 2587
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    .line 2588
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2589
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2590
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 2592
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    .line 2593
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v5, :cond_0

    :cond_2
    move v5, v7

    .line 2594
    goto :goto_1

    .line 2600
    .end local v1           #motionPosition:I
    :pswitch_1
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 2602
    :pswitch_2
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    sub-int v5, v4, v5

    invoke-direct {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->startScrollIfNeeded(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 2603
    goto :goto_1

    .line 2611
    :pswitch_3
    const/4 v5, -0x1

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2612
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2600
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1957
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

    .line 1962
    sparse-switch p1, :sswitch_data_0

    .line 1980
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1965
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 1966
    goto :goto_0

    .line 1968
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1972
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1973
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1974
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1975
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    move v1, v5

    .line 1976
    goto :goto_0

    .line 1962
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
    .line 1315
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onLayout(ZIIII)V

    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mInLayout:Z

    .line 1317
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 1318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mInLayout:Z

    .line 1319
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1299
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->useDefaultSelector()V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1303
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1304
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1305
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1306
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1307
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1070
    sget-object v2, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1072
    instance-of v2, p1, Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1075
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 1077
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 7
    .parameter "b"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1022
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 1024
    const-class v1, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1025
    const-string v1, "com.nemustech.tiffany.tfabslistview.savedstate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    .line 1027
    .local v0, ss:Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncHeight:J

    .line 1029
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 1030
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 1031
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncRowId:J

    .line 1032
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    .line 1033
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSpecificTop:I

    .line 1034
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncMode:I

    .line 1046
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 1049
    return-void

    .line 1035
    :cond_1
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1036
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 1038
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 1039
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 1040
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncRowId:J

    .line 1041
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncPosition:I

    .line 1042
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSpecificTop:I

    .line 1043
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1057
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1059
    .local v0, ignoreThis:Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1061
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 1063
    return-object v1
.end method

.method protected onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 12
    .parameter "b"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 971
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 974
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    invoke-direct {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;-><init>()V

    .line 976
    .local v4, ss:Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 977
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 978
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    .line 979
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->height:I

    .line 981
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_2

    .line 983
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 984
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    .line 985
    iput-wide v10, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    .line 1000
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1001
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v7, :cond_0

    .line 1002
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1003
    .local v5, textFilter:Landroid/widget/EditText;
    if-eqz v5, :cond_0

    .line 1004
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1005
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1011
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v5           #textFilter:Landroid/widget/EditText;
    :cond_0
    const-string v7, "com.nemustech.tiffany.tfabslistview.savedstate"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1012
    return-void

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v9

    .line 976
    goto :goto_0

    .line 987
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 989
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 990
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 991
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    .line 992
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 994
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iput v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 995
    iput-wide v10, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    .line 996
    iput v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onScrollBumpedAgainstLimits(Z)V
    .locals 2
    .parameter "fling"

    .prologue
    .line 2549
    const-string v0, "TFAbsListView"

    const-string v1, "onScrollBumpedAgainstLimits"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 1544
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->rememberSyncState()V

    .line 1550
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
    .line 3689
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3690
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3691
    .local v1, length:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3692
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3694
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 3695
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 3701
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 3702
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3704
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 3705
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3712
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 3696
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3698
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 3699
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    goto :goto_0

    .line 3707
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 2127
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v19

    if-nez v19, :cond_2

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    const/16 v19, 0x1

    .line 2420
    :goto_0
    return v19

    .line 2130
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 2140
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2141
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2142
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2147
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 2148
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2150
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 2160
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->start()V

    .line 2163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->clear()V

    .line 2171
    :cond_5
    packed-switch v4, :pswitch_data_0

    .line 2420
    .end local v4           #action:I
    :cond_6
    :goto_1
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2174
    .restart local v4       #action:I
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->pointToPosition(II)I

    move-result v12

    .line 2175
    .local v12, motionPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 2177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    if-ltz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .end local v4           #action:I
    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 2181
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 2184
    new-instance v19, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2186
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2206
    :cond_8
    :goto_2
    if-ltz v12, :cond_9

    .line 2208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2209
    .local v15, v:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2210
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionX:I

    .line 2211
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    .line 2212
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2214
    .end local v15           #v:Landroid/view/View;
    :cond_9
    const/high16 v19, -0x8000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 2188
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    if-eqz v19, :cond_b

    if-gez v12, :cond_b

    .line 2192
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2196
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 2197
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createScrollingCache()V

    .line 2199
    :cond_c
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2200
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    .line 2201
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findMotionRow(I)I

    move-result v12

    .line 2202
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2219
    .end local v12           #motionPosition:I
    .restart local v4       #action:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 2220
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    goto/16 :goto_1

    .line 2226
    :pswitch_2
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2236
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 2238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    move/from16 v19, v0

    sub-int v8, v8, v19

    .line 2239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move/from16 v10, v19

    .line 2241
    .local v10, incrementalDeltaY:I
    :goto_3
    if-eqz v10, :cond_d

    .line 2242
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->trackMotionScroll(II)V

    .line 2262
    :cond_d
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    goto/16 :goto_1

    .end local v10           #incrementalDeltaY:I
    :cond_e
    move v10, v8

    .line 2239
    goto :goto_3

    .line 2272
    .end local v8           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_2

    .line 2374
    :goto_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2377
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2379
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2380
    .local v9, handler:Landroid/os/Handler;
    if-eqz v9, :cond_f

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2384
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 2386
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2276
    .end local v9           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    move v12, v0

    .line 2277
    .restart local v12       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2278
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_18

    .line 2279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 2280
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2283
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    move-object/from16 v19, v0

    if-nez v19, :cond_11

    .line 2284
    new-instance v19, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    .line 2287
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    move-object v14, v0

    .line 2288
    .local v14, performClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;
    iput-object v5, v14, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2289
    iput v12, v14, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2290
    invoke-virtual {v14}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2292
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 2294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 2295
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2296
    .restart local v9       #handler:Landroid/os/Handler;
    if-eqz v9, :cond_13

    .line 2297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    :goto_5
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2300
    :cond_13
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2301
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2302
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_16

    .line 2303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2305
    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2306
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2307
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2310
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_14

    move-object v0, v7

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 2311
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2314
    :cond_14
    new-instance v19, Lcom/nemustech/tiffany/widget/TFAbsListView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2333
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2297
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    move-object/from16 v19, v0

    goto/16 :goto_5

    .line 2330
    :cond_16
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto :goto_6

    .line 2335
    .end local v9           #handler:Landroid/os/Handler;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 2336
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2340
    .end local v14           #performClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;
    :cond_18
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 2343
    .end local v5           #child:Landroid/view/View;
    .end local v12           #motionPosition:I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v6

    .line 2344
    .local v6, childCount:I
    if-lez v6, :cond_1c

    .line 2345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v19, :cond_19

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    const/16 v19, 0x1

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_19

    .line 2349
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2350
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2352
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 2353
    .local v16, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2354
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v11, v0

    .line 2356
    .local v11, initialVelocity:I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1b

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    move-object/from16 v19, v0

    if-nez v19, :cond_1a

    .line 2358
    new-instance v19, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    .line 2360
    :cond_1a
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    move-object/from16 v19, v0

    move v0, v11

    neg-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 2364
    :cond_1b
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2365
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2369
    .end local v11           #initialVelocity:I
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_1c
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2370
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2399
    .end local v6           #childCount:I
    :pswitch_7
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2400
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2402
    .local v13, motionView:Landroid/view/View;
    if-eqz v13, :cond_1d

    .line 2403
    const/16 v19, 0x0

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2405
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 2407
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2408
    .restart local v9       #handler:Landroid/os/Handler;
    if-eqz v9, :cond_1e

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    move-object/from16 v19, v0

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2412
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 2414
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2220
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2272
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
    .line 2110
    if-eqz p1, :cond_0

    .line 2112
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 2116
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2119
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2120
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2123
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1762
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onWindowFocusChanged(Z)V

    .line 1764
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1766
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1767
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1768
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1770
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1772
    if-ne v0, v4, :cond_0

    .line 1774
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 1778
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v1, :cond_1

    .line 1779
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1809
    :cond_1
    :goto_1
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 1810
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v4

    .line 1764
    goto :goto_0

    .line 1788
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v1, :cond_4

    .line 1790
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 1794
    :cond_4
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1796
    if-ne v0, v4, :cond_5

    .line 1798
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 1802
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 1803
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 1804
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1911
    const/4 v6, 0x0

    .line 1913
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1917
    :cond_0
    if-nez v6, :cond_1

    .line 1918
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1919
    invoke-super {p0, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1921
    :cond_1
    if-eqz v6, :cond_2

    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performHapticFeedback(I)Z

    .line 1924
    :cond_2
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1998
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1999
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2000
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2001
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2004
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 2005
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2006
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2007
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2008
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2009
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2010
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2014
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2005
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2014
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
    .line 2027
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->pointToPosition(II)I

    move-result v0

    .line 2028
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2029
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2031
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
    .line 1492
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1493
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

    .line 1494
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(IIII)V

    .line 1497
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    .line 1498
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1499
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    .line 1500
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->refreshDrawableState()V

    .line 1502
    :cond_0
    return-void

    .line 1499
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
    .line 3800
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 3801
    .local v1, childCount:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2000(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    move-result-object v3

    .line 3804
    .local v3, listener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3805
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3806
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 3808
    .local v4, lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    iget v6, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3809
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3810
    if-eqz v3, :cond_0

    .line 3812
    invoke-interface {v3, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 3804
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3816
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 3817
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeAllViewsInLayout()V

    .line 3818
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 3125
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedPosition:I

    .line 3126
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3127
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3129
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3130
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3131
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2650
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2652
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/nemustech/tiffany/widget/TFAbsListView;I)V

    .line 2653
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 2656
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1135
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 1137
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resetList()V

    .line 885
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 886
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 888
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1143
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeAllViewsInLayout()V

    .line 1144
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    .line 1145
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    .line 1146
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mNeedSync:Z

    .line 1147
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOldSelectedPosition:I

    .line 1148
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOldSelectedRowId:J

    .line 1149
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 1150
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 1151
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 1152
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1153
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 1154
    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->rememberSyncState()V

    .line 1162
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeAllViewsInLayout()V

    .line 1163
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clear()V

    .line 1164
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 1166
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 3165
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    .line 3167
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 3168
    const/16 v18, 0x0

    .line 3259
    :goto_0
    return v18

    .line 3171
    :cond_0
    const/4 v14, 0x0

    .line 3173
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 3174
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 3175
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move v8, v0

    .line 3176
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 3177
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 3179
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 3180
    move v13, v15

    .line 3182
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3183
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3184
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 3187
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 3188
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 3244
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3246
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 3247
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 3248
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSpecificTop:I

    .line 3249
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 3250
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 3251
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3252
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectionInt(I)V

    .line 3253
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 3257
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 3259
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3189
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 3190
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 3194
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 3196
    move v13, v8

    .line 3197
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 3198
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3199
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3201
    .local v16, top:I
    if-nez v9, :cond_5

    .line 3203
    move/from16 v14, v16

    .line 3205
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 3208
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 3211
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 3213
    add-int v13, v8, v9

    .line 3214
    move/from16 v14, v16

    .line 3215
    goto/16 :goto_1

    .line 3197
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3219
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move v10, v0

    .line 3220
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 3221
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 3223
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 3224
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3225
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3226
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 3228
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3229
    move/from16 v14, v16

    .line 3230
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 3231
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 3235
    :cond_9
    if-gt v3, v5, :cond_a

    .line 3236
    add-int v13, v8, v9

    .line 3237
    move/from16 v14, v16

    .line 3238
    goto/16 :goto_1

    .line 3223
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 3255
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 3259
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

    .line 3479
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 3537
    :goto_0
    return v4

    .line 3483
    :cond_0
    const/4 v2, 0x0

    .line 3484
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 3485
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 3514
    :goto_1
    if-eqz v3, :cond_2

    .line 3515
    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3517
    move-object v1, p3

    .line 3518
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 3519
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 3522
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3523
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_2
    move v4, v2

    .line 3537
    goto :goto_0

    .line 3492
    :sswitch_0
    const/4 v3, 0x0

    .line 3493
    goto :goto_1

    .line 3495
    :sswitch_1
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3496
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 3498
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 3499
    const/4 v2, 0x1

    .line 3506
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 3507
    goto :goto_1

    .line 3500
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

    .line 3502
    const/4 v2, 0x1

    .line 3503
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 3510
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    goto :goto_1

    .line 3525
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3526
    goto :goto_2

    .line 3529
    :pswitch_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3530
    goto :goto_2

    .line 3533
    :pswitch_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 3485
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

    .line 3523
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
    .line 3779
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    .line 3780
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1596
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 1597
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 586
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFastScrollEnabled:Z

    .line 698
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1093
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1094
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 1097
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1099
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1103
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1107
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 1108
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1111
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
    .line 1326
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1328
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1333
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionPopup()V

    .line 1338
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1332
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    .line 761
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 762
    return-void
.end method

.method public setRecyclerListener(Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2002(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;)Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    .line 3890
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    .line 1680
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    .line 1681
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 806
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 808
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    .line 809
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1608
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1613
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1615
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1616
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1617
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1618
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 1619
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 1620
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 1621
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 1622
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1623
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1624
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 740
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 877
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    .line 878
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayoutIfNecessary()V

    .line 880
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    .line 823
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3754
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    .line 3755
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->touchModeDrawsInPressedState()Z

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
    .line 1934
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1935
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1936
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1937
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1939
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1943
    :cond_0
    if-nez v6, :cond_1

    .line 1944
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1947
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 1952
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected stopFling()V
    .locals 0

    .prologue
    .line 3263
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 3264
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1558
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1563
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1561
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 22
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2878
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v5

    .line 2879
    .local v5, childCount:I
    if-nez v5, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 2883
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2884
    .local v10, firstTop:I
    const/16 v20, 0x1

    sub-int v20, v5, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 2886
    .local v15, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2890
    .local v16, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 2893
    .local v8, end:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 2894
    .local v13, height:I
    if-gez p1, :cond_2

    .line 2895
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2900
    :goto_1
    if-gez p2, :cond_3

    .line 2901
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2921
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move v9, v0

    .line 2936
    .local v9, firstPosition:I
    if-nez v9, :cond_5

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    if-lez p2, :cond_5

    .line 2943
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 2944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2946
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 2947
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2948
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 2897
    .end local v9           #firstPosition:I
    :cond_2
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2903
    :cond_3
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2951
    .restart local v9       #firstPosition:I
    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 2958
    :cond_5
    add-int v20, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    if-gt v15, v8, :cond_7

    if-gez p2, :cond_7

    .line 2965
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 2966
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2968
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 2969
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2970
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 2973
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 2983
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 2984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 2985
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2986
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 2987
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2988
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 2992
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int p2, p2, v20

    .line 2993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int p1, p1, v20

    .line 2994
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 3004
    :cond_9
    if-gez p2, :cond_c

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 3006
    .local v7, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 3008
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 3009
    .local v12, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getFooterViewsCount()I

    move-result v21

    sub-int v11, v20, v21

    .line 3011
    .local v11, footerViewsStart:I
    const/16 v18, 0x0

    .line 3012
    .local v18, start:I
    const/4 v6, 0x0

    .line 3014
    .local v6, count:I
    if-eqz v7, :cond_f

    .line 3015
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v20, p2

    .line 3016
    .local v19, top:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v5, :cond_a

    .line 3017
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3018
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    .line 3057
    .end local v4           #child:Landroid/view/View;
    .end local v19           #top:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    move/from16 v20, v0

    add-int v20, v20, p1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewNewTop:I

    .line 3059
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockLayoutRequests:Z

    .line 3060
    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->detachViewsFromParent(II)V

    .line 3061
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 3063
    if-eqz v7, :cond_b

    .line 3064
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    .line 3067
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 3068
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->fillGap(Z)V

    .line 3069
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockLayoutRequests:Z

    .line 3071
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 3072
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 3004
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v11           #footerViewsStart:I
    .end local v12           #headerViewsCount:I
    .end local v14           #i:I
    .end local v18           #start:I
    :cond_c
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_3

    .line 3021
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v11       #footerViewsStart:I
    .restart local v12       #headerViewsCount:I
    .restart local v14       #i:I
    .restart local v18       #start:I
    .restart local v19       #top:I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 3022
    add-int v17, v9, v14

    .line 3023
    .local v17, position:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_e

    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_e

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3016
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 3035
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v17           #position:I
    .end local v19           #top:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v3, v20, p2

    .line 3036
    .local v3, bottom:I
    const/16 v20, 0x1

    sub-int v14, v5, v20

    .restart local v14       #i:I
    :goto_5
    if-ltz v14, :cond_a

    .line 3037
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3038
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move v1, v3

    if-le v0, v1, :cond_a

    .line 3041
    move/from16 v18, v14

    .line 3042
    add-int/lit8 v6, v6, 0x1

    .line 3043
    add-int v17, v9, v14

    .line 3044
    .restart local v17       #position:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_10

    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_10

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3036
    :cond_10
    add-int/lit8 v14, v14, -0x1

    goto :goto_5
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1348
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1351
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1354
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1355
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1356
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1357
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1361
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1366
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v3

    .line 1369
    .local v3, count:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1372
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1373
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1374
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBottom:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1377
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1351
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1357
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1361
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1369
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1374
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1377
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

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
