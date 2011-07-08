.class public Landroid/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScreenView$1;,
        Landroid/widget/ScreenView$SavedState;,
        Landroid/widget/ScreenView$ScaleDetectorListener;,
        Landroid/widget/ScreenView$SliderTouchListener;,
        Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;
    }
.end annotation


# static fields
.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x64

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

#the value of this static final field might be set in the static constructor
.field protected static final INDICATOR_MEASURE_SPEC:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_SCREEN:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x4

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3


# instance fields
.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Landroid/widget/ImageView;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field private mCamera:Landroid/graphics/Camera;

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenPadding:Landroid/graphics/Rect;

.field private mScreenSeekBar:Landroid/widget/LinearLayout;

.field private mScreenSnapDuration:I

.field public mScreenTransitionType:I

.field private mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollRightBound:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSlideBar:Landroid/widget/FrameLayout;

.field private mSlideBarBackground:Landroid/widget/FrameLayout;

.field private mSlidePoint:Landroid/widget/ImageView;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisibleRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 35
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Landroid/widget/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Landroid/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    .line 52
    const v0, 0x1080451

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x1080452

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x1080453

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x1080454

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    .line 69
    iput v2, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 72
    const v0, 0x3eaaaaab

    iput v0, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    .line 87
    iput v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 92
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 98
    iput v2, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 105
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 107
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    .line 124
    iput v1, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    .line 127
    const v0, 0x3fa66666

    iput v0, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    .line 1140
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    .line 175
    invoke-direct {p0}, Landroid/widget/ScreenView;->initScreenView()V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    .line 52
    const v0, 0x1080451

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x1080452

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x1080453

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x1080454

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    .line 69
    iput v2, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 72
    const v0, 0x3eaaaaab

    iput v0, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    .line 87
    iput v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 92
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 98
    iput v2, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 105
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 107
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    .line 124
    iput v1, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    .line 127
    const v0, 0x3fa66666

    iput v0, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    .line 1140
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    .line 197
    invoke-direct {p0}, Landroid/widget/ScreenView;->initScreenView()V

    .line 198
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ScreenView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1068
    .local v0, seekPoint:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1069
    const v1, 0x1080455

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1071
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    .line 204
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 206
    new-instance v1, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Landroid/widget/ScreenView;)V

    iput-object v1, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 207
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 208
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 210
    iget-object v1, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 211
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mTouchSlop:I

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mMaximumVelocity:I

    .line 214
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/widget/ScreenView$ScaleDetectorListener;-><init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Landroid/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 215
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 723
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 724
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 729
    iget v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_2

    .line 730
    :cond_1
    iget-object v0, p0, Landroid/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 732
    :cond_2
    return-void
.end method

.method private sanpByVelocity(I)V
    .locals 6
    .parameter "pointerId"

    .prologue
    const/4 v5, 0x1

    .line 838
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 839
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    iget v4, p0, Landroid/widget/ScreenView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v1, v3

    .line 842
    .local v1, velocityX:I
    const/16 v3, 0x258

    if-le v1, v3, :cond_1

    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-lez v3, :cond_1

    .line 845
    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3, v1, v5}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    const/16 v3, -0x258

    if-ge v1, v3, :cond_2

    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 849
    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v1, v5}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 851
    :cond_2
    iget v3, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    if-lez v3, :cond_0

    .line 852
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    iget v4, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int v2, v3, v4

    .line 853
    .local v2, whichScreen:I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v5}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 446
    iget-object v0, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-gtz p1, :cond_1

    iget v1, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    iget-object v0, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    iget v1, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    :cond_0
    return-void

    .line 447
    :cond_1
    iget v1, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 451
    :cond_2
    iget v1, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 21
    .parameter "scrollX"

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getWidth()I

    move-result v18

    if-lez v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->isLayoutRequested()Z

    move-result v18

    if-nez v18, :cond_1

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v8

    .line 363
    .local v8, indexOffset:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScreenView;->mIndicatorCount:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 364
    add-int v18, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 365
    .local v9, indicator:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 367
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getWidth()I

    move-result v16

    .line 368
    .local v16, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getHeight()I

    move-result v15

    .line 369
    .local v15, screenHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 370
    .local v13, indicatorWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 372
    .local v10, indicatorHeight:I
    const/4 v11, 0x0

    .line 373
    .local v11, indicatorLeft:I
    const/4 v12, 0x0

    .line 375
    .local v12, indicatorTop:I
    iget v5, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 377
    .local v5, gravity:I
    const/16 v18, -0x1

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 378
    and-int/lit8 v6, v5, 0x7

    .line 379
    .local v6, horizontalGravity:I
    and-int/lit8 v17, v5, 0x70

    .line 381
    .local v17, verticalGravity:I
    packed-switch v6, :pswitch_data_0

    .line 393
    :pswitch_0
    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 396
    :goto_1
    sparse-switch v17, :sswitch_data_0

    .line 408
    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 412
    .end local v6           #horizontalGravity:I
    .end local v17           #verticalGravity:I
    :cond_0
    :goto_2
    add-int v18, p1, v11

    add-int v19, p1, v11

    add-int v19, v19, v13

    add-int v20, v12, v10

    move-object v0, v9

    move/from16 v1, v18

    move v2, v12

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 383
    .restart local v6       #horizontalGravity:I
    .restart local v17       #verticalGravity:I
    :pswitch_1
    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    goto :goto_1

    .line 386
    :pswitch_2
    sub-int v18, v16, v13

    div-int/lit8 v18, v18, 0x2

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 388
    goto :goto_1

    .line 390
    :pswitch_3
    sub-int v18, v16, v13

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 391
    goto :goto_1

    .line 398
    :sswitch_0
    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 399
    goto :goto_2

    .line 401
    :sswitch_1
    sub-int v18, v15, v10

    div-int/lit8 v18, v18, 0x2

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 403
    goto :goto_2

    .line 405
    :sswitch_2
    sub-int v18, v15, v10

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 406
    goto :goto_2

    .line 419
    .end local v5           #gravity:I
    .end local v6           #horizontalGravity:I
    .end local v7           #i:I
    .end local v8           #indexOffset:I
    .end local v9           #indicator:Landroid/view/View;
    .end local v10           #indicatorHeight:I
    .end local v11           #indicatorLeft:I
    .end local v12           #indicatorTop:I
    .end local v13           #indicatorWidth:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v15           #screenHeight:I
    .end local v16           #screenWidth:I
    .end local v17           #verticalGravity:I
    :cond_1
    return-void

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 396
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v4, 0x0

    .line 1075
    iget-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1076
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1077
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    if-ge v2, v0, :cond_0

    .line 1078
    iget-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1081
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v2

    iget v3, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1082
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1083
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    if-ge v2, v0, :cond_1

    .line 1084
    iget-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1087
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 9
    .parameter "scrollX"

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 424
    .local v0, screenCount:I
    iget-object v5, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 425
    iget-object v5, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 426
    .local v2, slideBarWidth:I
    div-int v5, v2, v0

    iget v6, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 430
    .local v3, slidePointWidth:I
    iget v5, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 431
    .local v1, screenViewContentWidth:I
    if-gt v1, v2, :cond_1

    const/4 v5, 0x0

    move v4, v5

    .line 437
    .local v4, slidePointX:I
    :goto_0
    iget-object v5, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    add-int v7, v4, v3

    iget-object v8, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 443
    .end local v1           #screenViewContentWidth:I
    .end local v2           #slideBarWidth:I
    .end local v3           #slidePointWidth:I
    .end local v4           #slidePointX:I
    :cond_0
    return-void

    .line 431
    .restart local v1       #screenViewContentWidth:I
    .restart local v2       #slideBarWidth:I
    .restart local v3       #slidePointWidth:I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int/2addr v5, v6

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "indicator"
    .parameter "params"

    .prologue
    .line 987
    iget v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 988
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 989
    return-void
.end method

.method public addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2
    .parameter "indicator"
    .parameter "params"
    .parameter "index"

    .prologue
    .line 992
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 993
    if-ltz p3, :cond_0

    .line 994
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 997
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 998
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 999
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 950
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 951
    .local v0, currentCount:I
    if-gez p2, :cond_1

    .line 952
    move p2, v0

    .line 957
    :goto_0
    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ScreenView;->mScrollRightBound:I

    .line 959
    iget-object v1, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 963
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 964
    return-void

    .line 955
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const v5, 0x4e6e6b28

    .line 480
    iget-object v3, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    iget-object v3, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 482
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 483
    iget-object v3, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Landroid/widget/ScreenView;->mScrollY:I

    .line 484
    invoke-virtual {p0}, Landroid/widget/ScreenView;->postInvalidate()V

    .line 501
    :cond_0
    :goto_0
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Landroid/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 502
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Landroid/widget/ScreenView;->updateSlidePointPosition(I)V

    .line 503
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Landroid/widget/ScreenView;->updateArrowIndicatorResource(I)V

    .line 504
    return-void

    .line 485
    :cond_1
    iget v3, p0, Landroid/widget/ScreenView;->mNextScreen:I

    if-eq v3, v7, :cond_2

    .line 486
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v5

    iget v6, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 487
    iput v7, p0, Landroid/widget/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 488
    :cond_2
    iget v3, p0, Landroid/widget/ScreenView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 489
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v2, v3, v5

    .line 490
    .local v2, now:F
    iget v3, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Landroid/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 491
    .local v1, e:F
    iget v3, p0, Landroid/widget/ScreenView;->mTouchX:F

    iget v4, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 492
    .local v0, dx:F
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    .line 493
    iput v2, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 496
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 497
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 613
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 614
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_1

    .line 615
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->snapToScreen(I)V

    move v0, v2

    .line 624
    :goto_0
    return v0

    .line 618
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 619
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 620
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->snapToScreen(I)V

    move v0, v2

    .line 621
    goto :goto_0

    .line 624
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 860
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 861
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 12
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1144
    iget v8, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1147
    :cond_0
    const/4 v8, 0x0

    .line 1227
    :goto_0
    return v8

    .line 1149
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1150
    .local v1, childW:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v0, v8

    .line 1151
    .local v0, childH:F
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float v4, v8, v9

    .line 1152
    .local v4, halfScreenW:F
    const/high16 v8, 0x4000

    div-float v3, v1, v8

    .line 1153
    .local v3, halfChildW:F
    const/high16 v8, 0x4000

    div-float v2, v0, v8

    .line 1154
    .local v2, halfChildH:F
    iget v8, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v3

    add-float v9, v4, v3

    div-float/2addr v8, v9

    const/high16 v9, -0x4080

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1156
    .local v5, interpolation:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 1157
    .local v6, m:Landroid/graphics/Matrix;
    iget v8, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v8, :pswitch_data_0

    .line 1227
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1159
    :pswitch_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1161
    :pswitch_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1163
    :pswitch_2
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_2

    .line 1164
    const/4 v8, 0x0

    goto :goto_0

    .line 1166
    :cond_2
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3f333333

    mul-float/2addr v8, v9

    const v9, 0x3e99999a

    add-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1167
    sget v8, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 1170
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    neg-float v9, v5

    const/high16 v10, 0x4234

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9, v3, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1171
    sget v8, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 1174
    :pswitch_4
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_3

    .line 1175
    const/4 v8, 0x0

    goto :goto_0

    .line 1177
    :cond_3
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1178
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1179
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1180
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, -0x3d4c

    mul-float/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1181
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    neg-float v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1182
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1183
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1184
    neg-float v8, v3

    neg-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1185
    const/high16 v8, 0x3f80

    const/high16 v9, 0x4000

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1186
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1189
    :pswitch_5
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1190
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1191
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    neg-float v9, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x4040

    div-float/2addr v9, v10

    neg-float v10, v3

    mul-float/2addr v10, v5

    invoke-virtual {v8, v9, v2, v10}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1192
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x41f0

    neg-float v10, v5

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1193
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1194
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1195
    mul-float v8, v1, v5

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1196
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1199
    :pswitch_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1201
    :pswitch_7
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_4

    .line 1202
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1204
    :cond_4
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v5

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1205
    const v8, 0x3f19999a

    const v9, 0x3ecccccd

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v5

    mul-float/2addr v9, v10

    add-float v7, v8, v9

    .line 1206
    .local v7, scale:F
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1207
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v7

    mul-float/2addr v8, v1

    const/high16 v9, 0x4040

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1208
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1211
    .end local v7           #scale:F
    :pswitch_8
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_5

    .line 1212
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1214
    :cond_5
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1215
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1216
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    mul-float v9, v1, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1217
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x4234

    mul-float/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1218
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1219
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1220
    neg-float v8, v3

    neg-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1221
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1222
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1225
    :pswitch_9
    invoke-virtual {p0, p1, p2, v5}, Landroid/widget/ScreenView;->getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z

    move-result v8

    goto/16 :goto_0

    .line 1157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 1
    .parameter "child"
    .parameter "t"
    .parameter "interpolation"

    .prologue
    .line 1231
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 908
    iget v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 909
    iget v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    iput v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    .line 911
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 939
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 940
    :cond_0
    const/4 v0, 0x0

    .line 942
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenCount()I
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 508
    invoke-virtual {p0}, Landroid/widget/ScreenView;->computeScroll()V

    .line 509
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 714
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 715
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 718
    :cond_1
    iget-boolean v2, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-eq v2, v6, :cond_4

    :cond_2
    move v2, v5

    :goto_1
    return v2

    .line 669
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 670
    iget v2, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    .line 671
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 672
    .local v0, dx:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Landroid/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 673
    .local v1, dy:F
    iget v2, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 675
    invoke-virtual {p0, p1, v5}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 682
    .end local v0           #dx:F
    .end local v1           #dy:F
    :pswitch_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 683
    iget-object v2, p0, Landroid/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 684
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 686
    iput-boolean v4, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 687
    iput-boolean v4, p0, Landroid/widget/ScreenView;->mTouchIntercepted:Z

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/ScreenView;->mLastMotionY:F

    .line 693
    iget-object v2, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 694
    iput-boolean v5, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 702
    :cond_3
    iget-object v2, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 703
    invoke-virtual {p0, p1, v5}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 710
    :pswitch_2
    invoke-virtual {p0, p1, v4}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    move v2, v4

    .line 718
    goto :goto_1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 576
    iget v4, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    add-int/2addr v4, p2

    iget-object v5, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int p2, v4, v5

    .line 577
    iget v4, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    sub-int v4, p4, v4

    iget-object v5, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int p4, v4, v5

    .line 578
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/ScreenView;->setFrame(IIII)Z

    .line 580
    iget v4, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v4}, Landroid/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 583
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v2

    .line 584
    .local v2, count:I
    const/4 v1, 0x0

    .line 585
    .local v1, childLeft:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 586
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 588
    iget v4, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget-object v5, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget-object v7, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 593
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 585
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 513
    const/4 v6, 0x0

    .line 514
    .local v6, maxHeight:I
    const/4 v7, 0x0

    .line 516
    .local v7, maxWidth:I
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v3

    .line 519
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v8, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    if-ge v4, v8, :cond_0

    .line 520
    add-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 524
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 526
    .local v2, childWidthMeasureSpec:I
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 529
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 530
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 531
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 519
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 535
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 536
    invoke-virtual {p0, v4}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 540
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 542
    .restart local v2       #childWidthMeasureSpec:I
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 545
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 547
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 535
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 551
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 552
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 554
    invoke-static {v7, p1}, Landroid/widget/ScreenView;->resolveSize(II)I

    move-result v8

    invoke-static {v6, p2}, Landroid/widget/ScreenView;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/widget/ScreenView;->setMeasuredDimension(II)V

    .line 558
    if-lez v3, :cond_2

    .line 559
    invoke-virtual {p0, v10}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iput v8, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    .line 560
    iget v8, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 561
    iget v8, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    if-lez v8, :cond_2

    .line 562
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iget v9, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v8, v9

    iput v8, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    .line 566
    :cond_2
    iget-boolean v8, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    if-eqz v8, :cond_3

    iget v8, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    if-lez v8, :cond_3

    .line 567
    iput-boolean v10, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    .line 568
    invoke-virtual {p0, v10}, Landroid/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 569
    iget v8, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 570
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 572
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 1095
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1097
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1282
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1285
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1334
    move-object v0, p1

    check-cast v0, Landroid/widget/ScreenView$SavedState;

    move-object v1, v0

    .line 1335
    .local v1, savedState:Landroid/widget/ScreenView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1336
    iget v2, v1, Landroid/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1337
    iget v2, v1, Landroid/widget/ScreenView$SavedState;->currentScreen:I

    iput v2, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    .line 1339
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1090
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1327
    new-instance v0, Landroid/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1328
    .local v0, state:Landroid/widget/ScreenView$SavedState;
    iget v1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Landroid/widget/ScreenView$SavedState;->currentScreen:I

    .line 1329
    return-object v0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 803
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 804
    iget v0, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 805
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 806
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 807
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 812
    :goto_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 813
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 814
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 824
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 825
    .local v1, x:F
    iget v2, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v2, v1

    .line 826
    .local v0, deltaX:F
    iput v1, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 828
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 829
    iget v2, p0, Landroid/widget/ScreenView;->mTouchX:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScreenView;->scrollTo(II)V

    .line 834
    :goto_0
    iget-object v2, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 835
    return-void

    .line 831
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 817
    invoke-direct {p0, p2}, Landroid/widget/ScreenView;->sanpByVelocity(I)V

    .line 818
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 820
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 821
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 736
    iget-boolean v5, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v5, :cond_0

    move v5, v7

    .line 799
    :goto_0
    return v5

    .line 738
    :cond_0
    iget-boolean v5, p0, Landroid/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v5, :cond_1

    .line 739
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 742
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 798
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v7, p0, Landroid/widget/ScreenView;->mTouchIntercepted:Z

    move v5, v7

    .line 799
    goto :goto_0

    .line 747
    :pswitch_1
    iget v5, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-nez v5, :cond_3

    .line 748
    invoke-virtual {p0, p1, v7}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 750
    :cond_3
    iget v5, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_2

    .line 752
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 753
    .local v3, pointerIndex:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 754
    invoke-virtual {p0, p1, v7}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 755
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 757
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 758
    .local v4, x:F
    iget v5, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v5, v4

    .line 759
    .local v0, deltaX:F
    iput v4, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 761
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_5

    .line 762
    iget v5, p0, Landroid/widget/ScreenView;->mTouchX:F

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5, v8}, Landroid/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 764
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 770
    .end local v0           #deltaX:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    :pswitch_2
    iget v5, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_6

    .line 771
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v5}, Landroid/widget/ScreenView;->sanpByVelocity(I)V

    .line 773
    :cond_6
    invoke-virtual {p0, p1, v8}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 777
    :pswitch_3
    invoke-virtual {p0, p1, v8}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 781
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x8

    .line 783
    .restart local v3       #pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 784
    .local v2, pointerId:I
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    if-ne v2, v5, :cond_2

    .line 788
    if-nez v3, :cond_7

    move v1, v7

    .line 789
    .local v1, newPointerIndex:I
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 790
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 791
    iget-object v5, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 792
    iget-object v5, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .end local v1           #newPointerIndex:I
    :cond_7
    move v1, v8

    .line 788
    goto :goto_2

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "indicator"

    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1003
    .local v0, index:I
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1004
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    :cond_0
    iget v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 1008
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1009
    return-void
.end method

.method public removeScreen(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1013
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1017
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 1020
    :cond_1
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1024
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1025
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1028
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1031
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    .line 1034
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 971
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 980
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 977
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 600
    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 601
    .local v0, screen:I
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 602
    iget v1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->snapToScreen(I)V

    .line 604
    const/4 v1, 0x1

    .line 608
    :goto_0
    return v1

    .line 606
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 608
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 470
    iget v0, p0, Landroid/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Landroid/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 472
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 473
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 474
    iget v0, p0, Landroid/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 475
    iget v0, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v0}, Landroid/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 476
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 465
    iget v0, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScreenView;->scrollTo(II)V

    .line 466
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1049
    iput-boolean p1, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 1050
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 223
    if-eqz p1, :cond_2

    .line 227
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 232
    .local v0, leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    .line 233
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 236
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 240
    .local v1, rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    .line 241
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 249
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 258
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 245
    :cond_1
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .restart local v0       #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1       #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 252
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 254
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 255
    iput-object v3, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    .line 256
    iput-object v3, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0
    .parameter "leftOn"
    .parameter "leftOff"
    .parameter "rightOn"
    .parameter "rightOff"

    .prologue
    .line 265
    iput p1, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    .line 266
    iput p2, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    .line 267
    iput p3, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    .line 268
    iput p4, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    .line 269
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 136
    iput p1, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 137
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "screenIndex"

    .prologue
    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 925
    iget-boolean v0, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 926
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 927
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->scrollToScreen(I)V

    .line 928
    invoke-virtual {p0}, Landroid/widget/ScreenView;->invalidate()V

    .line 930
    :cond_1
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 933
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ScreenView;->updateSeekPoints(II)V

    .line 934
    iput p1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    .line 935
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 936
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1059
    iput-object p1, p0, Landroid/widget/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1060
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1061
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1062
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1061
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    .line 459
    iput p1, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    .line 460
    iget v0, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ScreenView;->mScrollLeftBound:I

    .line 461
    iget v0, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ScreenView;->mScrollRightBound:I

    .line 462
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1
    .parameter "tension"

    .prologue
    .line 129
    iput p1, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    .line 130
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-static {v0, p1}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;->access$002(Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 133
    :cond_0
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    iput-object p1, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    .line 353
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 140
    iput p1, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    .line 141
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/16 v4, 0x5a

    const/4 v0, 0x1

    const/16 v3, 0x78

    const v2, 0x3fa66666

    const/4 v1, 0x0

    .line 1100
    iput p1, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    .line 1101
    if-nez p1, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setStaticTransformationsEnabled(Z)V

    .line 1103
    iget v0, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1138
    :goto_1
    :pswitch_0
    return-void

    .line 1101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1105
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1106
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1110
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1111
    invoke-virtual {p0, v4}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1114
    :pswitch_3
    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1115
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1118
    :pswitch_4
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1119
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1122
    :pswitch_5
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1123
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1128
    :pswitch_6
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1129
    invoke-virtual {p0, v4}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1132
    :pswitch_7
    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1133
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 276
    if-eqz p1, :cond_2

    .line 277
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    .line 279
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 280
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/ScreenView$SliderTouchListener;-><init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 288
    iput-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setSeekBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Call setSeekBarPosition first to enable the seek bar support."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 8
    .parameter "params"
    .parameter "paddingBottom"

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 298
    if-eqz p1, :cond_2

    .line 299
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 300
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    .line 301
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/ScreenView$SliderTouchListener;

    invoke-direct {v3, p0, v4}, Landroid/widget/ScreenView$SliderTouchListener;-><init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6, v6, v6, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 304
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    .line 305
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    const v3, 0x1080459

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 306
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 310
    .local v0, slideBarBackgroundParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    .line 313
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    const v3, 0x1080458

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 315
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 319
    .local v1, slidePointParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 324
    .end local v0           #slideBarBackgroundParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #slidePointParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 328
    iput-object v4, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    .line 329
    iput-object v4, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    .line 330
    iput-object v4, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 342
    iget-object v0, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Call setSlideBarPosition first to enable the slide bar support."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 346
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 3
    .parameter "ev"
    .parameter "touchState"

    .prologue
    const/4 v2, 0x0

    .line 632
    iput p2, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 634
    iget v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-nez v1, :cond_1

    .line 635
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 636
    iput-boolean v2, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 638
    iget-object v1, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    if-eqz p1, :cond_2

    .line 645
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 649
    :cond_2
    iget-boolean v1, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_3

    .line 650
    iput-boolean v2, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 654
    iget v1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, currentScreen:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 658
    .end local v0           #currentScreen:Landroid/view/View;
    :cond_3
    iget v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 659
    iget v1, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 660
    iget v1, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 661
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    .line 865
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v2, 0x0

    .line 868
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 870
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 871
    .local v7, screenDelta:I
    iget v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int v6, v0, v1

    .line 872
    .local v6, newX:I
    iget v0, p0, Landroid/widget/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 873
    .local v3, delta:I
    add-int/lit8 v0, v7, 0x1

    iget v1, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    mul-int v5, v0, v1

    .line 875
    .local v5, duration:I
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 879
    :cond_0
    if-eqz p3, :cond_1

    .line 880
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(I)V

    .line 885
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 886
    if-lez p2, :cond_2

    .line 887
    int-to-float v0, v5

    int-to-float v1, v5

    int-to-float v4, p2

    const v8, 0x451c4000

    div-float/2addr v4, v8

    div-float/2addr v1, v4

    const v4, 0x3ecccccd

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 893
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/ScreenView;->awakenScrollBars(I)Z

    .line 894
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/widget/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 895
    invoke-virtual {p0}, Landroid/widget/ScreenView;->invalidate()V

    .line 896
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_0

    .line 890
    :cond_2
    iget v0, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    add-int/2addr v5, v0

    goto :goto_1
.end method
