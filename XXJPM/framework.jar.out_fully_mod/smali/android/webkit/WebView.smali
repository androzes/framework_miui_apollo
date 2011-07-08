.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$ScaleDetectorListener;,
        Landroid/webkit/WebView$DragTracker;,
        Landroid/webkit/WebView$DragTrackerHandler;,
        Landroid/webkit/WebView$PostScale;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$WebTextSelectionListener;,
        Landroid/webkit/WebView$WebSelectRequest;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final CONTROLER_RADIUS_MAX:I = 0xa

.field private static final CONTROLER_RADIUS_MID:I = 0x6

.field private static final CONTROLER_RADIUS_MIN:I = 0x4

.field private static final DEBUG_DRAG_TRACKER:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x320

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_INPUT_ACTION:I = 0x83

.field public static final FORM_INPUT_DONE:I = 0x20

.field public static final FORM_INPUT_GO:I = 0x10

.field public static final FORM_INPUT_NEXT_SELECT:I = 0x8

.field public static final FORM_INPUT_NEXT_TEXT:I = 0x4

.field public static final FORM_INPUT_NONE:I = 0x0

.field public static final FORM_INPUT_PREV_SELECT:I = 0x2

.field public static final FORM_INPUT_PREV_TEXT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final IMMEDIATE_REPAINT_MSG_ID:I = 0x7b

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x81

.field private static final LAST_PRIVATE_MSG_ID:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_ADAPTIVE_ZOOM_ANIMATION_LENGTH:I = 0x2bc

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MIN_SCROLL_AMOUNT_TO_DISABLE_DRAG_TRACKER:I = 0x4

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MOVE_OUT_OF_PLUGIN:I = 0x6e

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field private static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field private static final PREVENT_DEFAULT_NO:I = 0x0

.field private static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field private static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REQUEST_CLEAR_CURSOR:I = 0x85

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final REQUEST_LISTBOX:I = 0x84

.field private static final RESUME_WEBCORE_PRIORITY:I = 0x7

.field static final RETURN_LABEL:I = 0x7d

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field static final SCROLL_BY_MSG_ID:I = 0x66

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_CONTROLS_NOTIFY:I = 0x8d

.field static final SELECTION_POS_CHANGED_DELAY:I = 0x320

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field static final SET_ROOT_LAYER_MSG_ID:I = 0x7c

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0x67

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0x68

.field private static final TAP_TIMEOUT:I = 0xc8

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x9

.field private static final TOUCH_SELECT_MODE:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x32

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_SELECTION_MSG_ID:I = 0x8c

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field public static final WEBTEXTSELECT_CHARACTER_GRANULARITY:I = 0x0

.field private static final WEBTEXTSELECT_CHAR_CONTROLER_MAIN:I = 0x1

.field private static final WEBTEXTSELECT_NO_CONTROLER:I = 0x0

.field public static final WEBTEXTSELECT_PARAGRAPH_GRANULARITY:I = 0x4

.field private static final WEBTEXTSELECT_PARA_CONTROLER_BM:I = 0x4

.field private static final WEBTEXTSELECT_PARA_CONTROLER_LM:I = 0x2

.field private static final WEBTEXTSELECT_PARA_CONTROLER_RM:I = 0x3

.field public static final WEBTEXTSELECT_WORD_GRANULARITY:I = 0x1

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:J = 0x0L

.field static final ZOOM_ON_DOUBLE_TAP:I = 0x82

.field private static final mAdaptiveZoomPadding:I = 0xa

.field static mLogEvent:Z = false

.field private static final mMaxAdaptiveZoomScale:F = 2.0f

.field static sMaxViewportWidth:I


# instance fields
.field private bWebSelectDialogIsUp:Z

.field private mActionMove:Z

.field private mActualScale:F

.field private mAdaptiveZoom:Z

.field private mAdaptiveZoomAnimationLength:F

.field private mAnchorX:I

.field private mAnchorY:I

.field private mAutoRedraw:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mController:I

.field private mControllerRaidus:I

.field mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelayedDeleteRootLayer:Z

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDragTracker:Landroid/webkit/WebView$DragTracker;

.field private mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mExtendSelection:Z

.field private mExtendSelectionPressed:Z

.field private mFindHeight:I

.field private mFindIsUp:Z

.field private mFocusSizeChanged:Z

.field private mFocusedNodeName:Ljava/lang/String;

.field private mFocusedNodePointer:I

.field private mForwardTouchEvents:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGotCenterDown:Z

.field private mGotKeyDown:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field mInZoomOverview:Z

.field private mInitialScaleInPercent:I

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mIsPaused:Z

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mLongPress:Z

.field private mMagnifier:Landroid/webkit/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedToAdjustControlerView:Z

.field private mNeedToAdjustWebTextView:Z

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPreventDefault:I

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mShiftIsPressed:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mStopSelection:Z

.field private mSupportMultiTouch:Z

.field private mTextGeneration:I

.field mTextWrapScale:F

.field private mTitleBar:Landroid/view/View;

.field private mTitleShadow:Landroid/graphics/drawable/Drawable;

.field private mTouchMode:I

.field private mTouchSelection:Z

.field private mTouchSelectionHandler:Z

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field private mViewCenterYCorrection:F

.field final mViewManager:Landroid/webkit/ViewManager;

.field private mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

.field private mWebSelectDialog:Landroid/webkit/WebSelectDialog;

.field private mWebSelectionOn:Z

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 526
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 645
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 658
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "SCROLL_BY_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v5

    const-string v1, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOVE_OUT_OF_PLUGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IMMEDIATE_REPAINT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_ROOT_LAYER_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ZOOM_ON_DOUBLE_TAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "FORM_INPUT_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "REQUEST_LISTBOX"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "REQUEST_CLEAR_CURSOR"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 704
    const/16 v0, 0x320

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 732
    const v0, 0x3c23d70a

    sput v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    .line 783
    sput-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1181
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V

    .line 1192
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1208
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 438
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 452
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 464
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 475
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 486
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 495
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 549
    iput-boolean v2, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 550
    iput-boolean v1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 712
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 715
    iput v1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 721
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 725
    const/16 v0, 0x320

    iput v0, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 735
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 753
    iput-boolean v1, p0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 754
    iput v5, p0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 757
    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 759
    iput v1, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 777
    iput v1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 778
    iput v1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 786
    iput-wide v3, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 801
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 926
    new-instance v0, Landroid/webkit/WebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 953
    iput v2, p0, Landroid/webkit/WebView;->mController:I

    .line 954
    iput-object v6, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 955
    iput v1, p0, Landroid/webkit/WebView;->mControllerRaidus:I

    .line 956
    iput-boolean v1, p0, Landroid/webkit/WebView;->mNeedToAdjustControlerView:Z

    .line 965
    new-instance v0, Landroid/webkit/WebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 3881
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 3882
    iput-object v6, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3883
    iput v1, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3884
    iput v1, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 4178
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5707
    iput-wide v3, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 5708
    iput-wide v3, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5709
    iput v5, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5710
    iput v5, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 5711
    iput v1, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5712
    iput v1, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 5713
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5714
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelection:Z

    .line 5717
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 5718
    iput-boolean v1, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 5719
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 5720
    iput-boolean v1, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 5721
    iput-boolean v1, p0, Landroid/webkit/WebView;->mActionMove:Z

    .line 5722
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 5735
    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5736
    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5737
    iput-boolean v1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 5738
    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5739
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5740
    iput-wide v3, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 5741
    iput-wide v3, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 5747
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 7795
    iput-boolean v1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 7796
    iput-object v6, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 1209
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1211
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1212
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1213
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1214
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1215
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    .line 1217
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1220
    new-instance v0, Landroid/webkit/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkit/WebMagnifier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    .line 1222
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2491
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 2492
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    return-void
.end method

.method static synthetic access$10602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$10702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->doAdaptiveZoom(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    return-object v0
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$11102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return p1
.end method

.method static synthetic access$11200()F
    .locals 1

    .prologue
    .line 300
    sget v0, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    return v0
.end method

.method static synthetic access$11300()F
    .locals 1

    .prologue
    .line 300
    sget v0, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    return v0
.end method

.method static synthetic access$11402(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mControllerRaidus:I

    return p1
.end method

.method static synthetic access$11500(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    return-object v0
.end method

.method static synthetic access$11600(Landroid/webkit/WebView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$11700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$12100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$12302(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-object p1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$12400(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return p1
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mAnchorX:I

    return p1
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2302(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2400(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2402(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2700()F
    .locals 1

    .prologue
    .line 300
    sget v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$2800(Landroid/webkit/WebView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$2902(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 300
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;FFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500()J
    .locals 2

    .prologue
    .line 300
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return v0
.end method

.method static synthetic access$3602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return p1
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$3702(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$3902(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->selectClosestWord(II)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;IIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return v0
.end method

.method static synthetic access$5202(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return p1
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return v0
.end method

.method static synthetic access$5602(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return p1
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetRootLayer(I)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mFindHeight:I

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$6700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$6902(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    return p1
.end method

.method static synthetic access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;IIZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 300
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$7602(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    return v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$8202(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$8302(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8402(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$8502(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$8602(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$8700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$8702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->doDoubleTap()V

    return-void
.end method

.method static synthetic access$9700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$9800(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$9902(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 2643
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2645
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2650
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2651
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2652
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2653
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2661
    .local v0, ri:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2663
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 2668
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 2669
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 2670
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 2671
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2633
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2634
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2635
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2636
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_0

    .line 2637
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2639
    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 5684
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 5685
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 5690
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 5691
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5692
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5694
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_2

    .line 5695
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 5696
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5698
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5699
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5700
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5701
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5702
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5703
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5704
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 5705
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v2, 0x8d

    .line 5602
    invoke-direct {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5603
    if-eqz p3, :cond_0

    .line 5604
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5606
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5607
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5608
    iput p2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5609
    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5610
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5611
    const/4 v1, 0x4

    iput v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5613
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1
    return-void
.end method

.method private centerFitRect(IIII)V
    .locals 22
    .parameter "docX"
    .parameter "docY"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 6396
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v17

    .line 6397
    .local v17, viewWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    .line 6398
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 6400
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_1

    .line 6401
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v15, v0

    .line 6405
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 6406
    div-int/lit8 v18, p3, 0x2

    add-int v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, p4, 0x2

    add-int v19, v19, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 6439
    :goto_1
    return-void

    .line 6402
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_0

    .line 6403
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v15, v0

    goto :goto_0

    .line 6410
    :cond_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 6411
    .local v9, oldScreenX:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v13, v18, v15

    .line 6412
    .local v13, rectViewX:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v18, v15

    .line 6413
    .local v12, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v15

    .line 6414
    .local v6, newMaxWidth:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v7, v18, v19

    .line 6416
    .local v7, newScreenX:F
    cmpl-float v18, v7, v13

    if-lez v18, :cond_5

    .line 6417
    move v7, v13

    .line 6421
    :cond_3
    :goto_2
    mul-float v18, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6423
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v10, v18, v19

    .line 6425
    .local v10, oldScreenY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 6426
    .local v14, rectViewY:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v11, v18, v15

    .line 6427
    .local v11, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 6428
    .local v5, newMaxHeight:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 6430
    .local v8, newScreenY:F
    cmpl-float v18, v8, v14

    if-lez v18, :cond_6

    .line 6431
    move v8, v14

    .line 6435
    :cond_4
    :goto_3
    mul-float v18, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6437
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_1

    .line 6418
    .end local v5           #newMaxHeight:F
    .end local v8           #newScreenY:F
    .end local v10           #oldScreenY:F
    .end local v11           #rectViewHeight:F
    .end local v14           #rectViewY:F
    :cond_5
    sub-float v18, v6, v13

    sub-float v18, v18, v12

    cmpl-float v18, v7, v18

    if-lez v18, :cond_3

    .line 6419
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v6, v13

    sub-float v7, v18, v19

    goto/16 :goto_2

    .line 6432
    .restart local v5       #newMaxHeight:F
    .restart local v8       #newScreenY:F
    .restart local v10       #oldScreenY:F
    .restart local v11       #rectViewHeight:F
    .restart local v14       #rectViewY:F
    :cond_6
    sub-float v18, v5, v14

    sub-float v18, v18, v11

    cmpl-float v18, v8, v18

    if-lez v18, :cond_4

    .line 6433
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v5, v14

    sub-float v8, v18, v19

    goto :goto_3
.end method

.method private commitCopy()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4457
    const/4 v1, 0x0

    .line 4458
    .local v1, copiedSomething:Z
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_1

    .line 4459
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v3

    .line 4460
    .local v3, selection:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 4464
    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v5, 0x10402eb

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4467
    const/4 v1, 0x1

    .line 4469
    :try_start_0
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 4471
    .local v0, clip:Landroid/text/IClipboard;
    invoke-interface {v0, v3}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4476
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_0
    :goto_0
    iput-boolean v6, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4478
    .end local v3           #selection:Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4479
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4480
    iget v4, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 4481
    const/4 v4, 0x1

    iput v4, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 4483
    :cond_2
    return v1

    .line 4472
    .restart local v3       #selection:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 4473
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v4, "webview"

    const-string v5, "Clipboard failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 3134
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3135
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 3136
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeMaxScrollX()I
    .locals 2

    .prologue
    .line 6009
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeMaxScrollY()I
    .locals 2

    .prologue
    .line 6013
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 3314
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3333
    :cond_0
    :goto_0
    return-void

    .line 3318
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 3319
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 3321
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 3323
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 3324
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 3326
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 3331
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 2442
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 3

    .prologue
    .line 6161
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6163
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$10;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 6172
    new-instance v1, Landroid/webkit/WebView$11;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 6181
    return-object v0
.end method

.method private didUpdateTextViewBounds(Z)Z
    .locals 9
    .parameter "allowIntersect"

    .prologue
    const/4 v8, 0x0

    .line 3658
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3659
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3660
    .local v1, vBox:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3661
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3665
    if-eqz p1, :cond_1

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3667
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 3669
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 3672
    const/4 v3, 0x1

    .line 3680
    :goto_0
    return v3

    .line 3665
    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3679
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->remove()V

    move v3, v8

    .line 3680
    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1558
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1559
    return-void
.end method

.method private dismissWebSelectDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2138
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 2140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 2141
    iput-boolean v3, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 2143
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2145
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x85

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2148
    :cond_0
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 6
    .parameter "isTextView"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3960
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3964
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v1, v5

    .line 3965
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3966
    iput-boolean v4, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3967
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3968
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3970
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 3972
    :cond_0
    if-eqz p1, :cond_3

    .line 3973
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 3974
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3975
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3976
    if-eqz v1, :cond_1

    .line 3977
    invoke-direct {p0, v5}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    .line 3988
    :cond_1
    :goto_1
    return-void

    .end local v1           #zoom:Z
    :cond_2
    move v1, v4

    .line 3964
    goto :goto_0

    .line 3987
    .restart local v1       #zoom:Z
    :cond_3
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method private doAdaptiveZoom(Landroid/graphics/Rect;)V
    .locals 23
    .parameter "blockRect"

    .prologue
    .line 6577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v19

    if-nez v19, :cond_1

    .line 6697
    :cond_0
    :goto_0
    return-void

    .line 6581
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 6585
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6586
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6587
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 6588
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 6597
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    .line 6599
    .local v14, settings:Landroid/webkit/WebSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 6600
    .local v5, blockWidth:I
    if-lez v5, :cond_0

    .line 6601
    const/16 v18, 0x0

    .line 6602
    .local v18, zoomToMin:Z
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    const/16 v20, 0xa

    sub-int v17, v19, v20

    .line 6604
    .local v17, viewWidth:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v8, v19, v20

    .line 6606
    .local v8, newScale:F
    const/high16 v19, 0x4000

    cmpl-float v19, v8, v19

    if-lez v19, :cond_2

    .line 6608
    const/high16 v8, 0x4000

    .line 6615
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v19, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3d4ccccd

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_4

    .line 6617
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6619
    new-instance v10, Landroid/graphics/Rect;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6620
    .local v10, scaledRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 6625
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6627
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v9, v19, v8

    .line 6629
    .local v9, scaledHeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v9, v19

    if-gtz v19, :cond_3

    .line 6633
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6635
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    .line 6641
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 6642
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 6644
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->zoomWithPreviewEx(F)Z

    .line 6681
    .end local v9           #scaledHeight:F
    :goto_1
    if-eqz v18, :cond_0

    .line 6682
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6689
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6690
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 6692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 6694
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_0

    .line 6648
    .end local v10           #scaledRect:Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move v13, v0

    .line 6649
    .local v13, scrollYwithoutTitle:F
    new-instance v10, Landroid/graphics/Rect;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6650
    .restart local v10       #scaledRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 6652
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move v11, v0

    .line 6653
    .local v11, scrollCentreX:F
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move v12, v0

    .line 6655
    .local v12, scrollCentreY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move v15, v0

    .line 6656
    .local v15, viewCentreX:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v16, v13, v19

    .line 6658
    .local v16, viewCentreY:F
    sub-float v19, v11, v15

    move/from16 v0, v19

    float-to-int v0, v0

    move v6, v0

    .line 6659
    .local v6, dx:I
    sub-float v19, v12, v16

    move/from16 v0, v19

    float-to-int v0, v0

    move v7, v0

    .line 6666
    .local v7, dy:I
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v19, v13

    if-ltz v19, :cond_5

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v13

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_5

    .line 6667
    const/4 v7, 0x0

    .line 6669
    :cond_5
    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_6

    .line 6670
    const/4 v6, 0x0

    .line 6672
    :cond_6
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 6673
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v20, v0

    add-int v20, v20, v7

    const/16 v21, 0x1

    const/16 v22, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto/16 :goto_1

    .line 6677
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method private doDoubleTap()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 6474
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6545
    :cond_0
    :goto_0
    return-void

    .line 6478
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_2

    .line 6479
    invoke-direct {p0}, Landroid/webkit/WebView;->prepareForAdaptiveZoom()V

    goto :goto_0

    .line 6483
    :cond_2
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6484
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6485
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6486
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6487
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 6488
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v11}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 6490
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6491
    iget-object v7, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v9, p0, Landroid/webkit/WebView;->mAnchorY:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v3

    .line 6492
    .local v3, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v3, :cond_5

    .line 6493
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6494
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6496
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_3

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6497
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto :goto_0

    .line 6500
    :cond_4
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6501
    iget v7, v3, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v8, v3, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v9, v3, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v10, v3, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-direct {p0, v7, v8, v9, v10}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    goto :goto_0

    .line 6505
    :cond_5
    const/4 v6, 0x0

    .line 6506
    .local v6, zoomToDefault:Z
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_8

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_8

    .line 6508
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v10, v10}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 6509
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 6510
    .local v2, overviewScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 6511
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6526
    .end local v2           #overviewScale:F
    :cond_6
    :goto_1
    if-eqz v6, :cond_0

    .line 6527
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6528
    iget v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 6529
    .local v0, left:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    .line 6531
    if-ge v0, v12, :cond_c

    move v7, v11

    :goto_2
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v5, v7, v8

    .line 6535
    .local v5, viewLeft:I
    if-lez v5, :cond_d

    .line 6536
    int-to-float v7, v5

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6543
    .end local v5           #viewLeft:I
    :cond_7
    :goto_3
    iget v7, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v7, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_0

    .line 6513
    .end local v0           #left:I
    :cond_8
    iget-boolean v7, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v7, :cond_b

    .line 6514
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 6515
    .local v1, newScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_a

    .line 6516
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6518
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_9

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6519
    :cond_9
    invoke-direct {p0, v1, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto :goto_1

    .line 6520
    :cond_a
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_6

    .line 6521
    const/4 v6, 0x1

    goto :goto_1

    .line 6524
    .end local v1           #newScale:F
    :cond_b
    const/4 v6, 0x1

    goto :goto_1

    .line 6531
    .restart local v0       #left:I
    :cond_c
    sub-int v7, v0, v12

    goto :goto_2

    .line 6539
    .restart local v5       #viewLeft:I
    :cond_d
    invoke-virtual {p0, v5, v11}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 6540
    const/4 v7, 0x0

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    goto :goto_3
.end method

.method private doDrag(II)V
    .locals 5
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 5653
    or-int v1, p1, p2

    if-eqz v1, :cond_0

    .line 5654
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 5656
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5657
    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 5658
    .local v0, showPlusMinus:Z
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5659
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 5660
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5664
    :goto_1
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v3, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5668
    .end local v0           #showPlusMinus:Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 5657
    goto :goto_0

    .line 5662
    .restart local v0       #showPlusMinus:Z
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto :goto_1
.end method

.method private doFling()V
    .locals 15

    .prologue
    .line 6024
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6085
    :goto_0
    return-void

    .line 6027
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    .line 6028
    .local v6, maxX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .line 6030
    .local v8, maxY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/webkit/WebView;->mMaximumFling:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6031
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v13, v0

    .line 6032
    .local v13, vx:I
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v14, v0

    .line 6034
    .local v14, vy:I
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v0, :cond_1

    .line 6035
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 6036
    const/4 v14, 0x0

    .line 6043
    :cond_1
    :goto_1
    mul-int/lit8 v0, v13, 0x3

    div-int/lit8 v13, v0, 0x4

    .line 6044
    mul-int/lit8 v0, v14, 0x3

    div-int/lit8 v14, v0, 0x4

    .line 6046
    if-nez v6, :cond_2

    if-eqz v14, :cond_3

    :cond_2
    if-nez v8, :cond_5

    if-nez v13, :cond_5

    .line 6047
    :cond_3
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6048
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 6038
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 6051
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v10

    .line 6052
    .local v10, currentVelocity:F
    iget v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_7

    .line 6053
    iget v0, p0, Landroid/webkit/WebView;->mLastVelY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/webkit/WebView;->mLastVelX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    int-to-double v2, v14

    int-to-double v4, v13

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v11, v0

    .line 6055
    .local v11, deltaR:F
    const v9, 0x40c90fdb

    .line 6056
    .local v9, circle:F
    const v0, 0x40b4f4ab

    cmpl-float v0, v11, v0

    if-gtz v0, :cond_6

    const v0, 0x3f20d97c

    cmpg-float v0, v11, v0

    if-gez v0, :cond_7

    .line 6057
    :cond_6
    int-to-float v0, v13

    iget v1, p0, Landroid/webkit/WebView;->mLastVelX:F

    mul-float/2addr v1, v10

    iget v2, p0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v13, v0

    .line 6058
    int-to-float v0, v14

    iget v1, p0, Landroid/webkit/WebView;->mLastVelY:F

    mul-float/2addr v1, v10

    iget v2, p0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v14, v0

    .line 6072
    .end local v9           #circle:F
    .end local v11           #deltaR:F
    :cond_7
    int-to-float v0, v13

    iput v0, p0, Landroid/webkit/WebView;->mLastVelX:F

    .line 6073
    int-to-float v0, v14

    iput v0, p0, Landroid/webkit/WebView;->mLastVelY:F

    .line 6074
    int-to-double v0, v13

    int-to-double v2, v14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 6076
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    neg-int v3, v13

    neg-int v4, v14

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 6081
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v12

    .line 6082
    .local v12, time:I
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    int-to-long v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6083
    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 6084
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0
.end method

.method private doMotionUp(II)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 6354
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6355
    const v0, 0x11206

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6357
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6358
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 6360
    :cond_1
    return-void
.end method

.method private doShortPress()V
    .locals 5

    .prologue
    .line 6327
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 6351
    :cond_0
    :goto_0
    return-void

    .line 6330
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 6333
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6334
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6336
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6337
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6338
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6339
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 6341
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 6342
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 6343
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 6344
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 6345
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 6346
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 6349
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(J)V
    .locals 26
    .parameter "time"

    .prologue
    .line 5928
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 5929
    .local v13, elapsed:I
    if-nez v13, :cond_0

    .line 5930
    const/16 v13, 0xc8

    .line 5932
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 5933
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 5934
    .local v25, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 5935
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    .line 5936
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    move v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5937
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 5939
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 6006
    :cond_2
    :goto_0
    return-void

    .line 5942
    :cond_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 5943
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 5944
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 5952
    .local v16, maxA:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    sub-int v21, v5, v20

    .line 5953
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    sub-int v14, v5, v19

    .line 5954
    .local v14, height:I
    if-gez v21, :cond_4

    const/16 v21, 0x0

    .line 5955
    :cond_4
    if-gez v14, :cond_5

    const/4 v14, 0x0

    .line 5956
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 5957
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 5958
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 5959
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5960
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    .line 5961
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    .line 5962
    .local v18, oldScrollY:I
    if-lez v7, :cond_b

    .line 5963
    cmpg-float v5, v11, v12

    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    const/16 v5, 0x13

    move v6, v5

    .line 5967
    .local v6, selectKeyCode:I
    :goto_1
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5974
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5975
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v7, :cond_9

    .line 5976
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 5975
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 5963
    .end local v6           #selectKeyCode:I
    .end local v15           #i:I
    :cond_6
    const/16 v5, 0x14

    move v6, v5

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/16 v5, 0x15

    move v6, v5

    goto :goto_1

    :cond_8
    const/16 v5, 0x16

    move v6, v5

    goto :goto_1

    .line 5978
    .restart local v6       #selectKeyCode:I
    .restart local v15       #i:I
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 5982
    .end local v15           #i:I
    :cond_a
    :goto_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5984
    .end local v6           #selectKeyCode:I
    :cond_b
    const/4 v5, 0x5

    if-lt v7, v5, :cond_2

    .line 5985
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 5986
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 5995
    .local v24, yMove:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_c

    .line 5996
    const/16 v22, 0x0

    .line 5998
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_d

    .line 5999
    const/16 v24, 0x0

    .line 6001
    :cond_d
    if-nez v22, :cond_e

    if-eqz v24, :cond_f

    .line 6002
    :cond_e
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 6004
    :cond_f
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_0

    .line 5979
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    .restart local v6       #selectKeyCode:I
    :cond_10
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5980
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    .prologue
    .line 2260
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2263
    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3564
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3567
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 3568
    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->drawWebSelectionControl(Landroid/graphics/Canvas;Z)V

    .line 3569
    return-void

    :cond_1
    move v0, v3

    .line 3564
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 26
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 3718
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 3719
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3724
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v13, v5

    .line 3725
    .local v13, animateZoom:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-eqz v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    :cond_4
    const/4 v5, 0x1

    move v12, v5

    .line 3731
    .local v12, animateScroll:Z
    :goto_2
    const/4 v14, 0x0

    .line 3732
    .local v14, correctionY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 3733
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3736
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 3738
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    if-nez v5, :cond_6

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3741
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 3744
    :cond_6
    if-eqz v13, :cond_13

    .line 3746
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomStart:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v17, v0

    .line 3747
    .local v17, interval:I
    const/16 v5, 0x1f4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_e

    .line 3748
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x43fa

    div-float v18, v5, v6

    .line 3749
    .local v18, ratio:F
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move v8, v0

    sub-float/2addr v7, v8

    mul-float v7, v7, v18

    add-float/2addr v6, v7

    div-float v25, v5, v6

    .line 3751
    .local v25, zoomScale:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3773
    .end local v18           #ratio:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move v5, v0

    mul-float v19, v25, v5

    .line 3776
    .local v19, scale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 3777
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float v23, v5, v6

    .line 3782
    .local v23, viewCentreX:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v6, v0

    add-float/2addr v5, v6

    mul-float v5, v5, v19

    sub-float v5, v5, v23

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 3784
    .local v21, tx:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v6, v0

    int-to-float v6, v6

    mul-float v6, v6, v25

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, v21

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v6, v0

    add-int v21, v5, v6

    .line 3786
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v20

    .line 3789
    .local v20, titleHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v5, v0

    if-eqz v5, :cond_11

    .line 3790
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float v24, v5, v6

    .line 3791
    .local v24, viewCentreY:F
    add-float v24, v24, v14

    .line 3796
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollY:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v6, v0

    add-float/2addr v5, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    sub-float/2addr v5, v6

    mul-float v5, v5, v19

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    sub-float v6, v24, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 3799
    .local v22, ty:I
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    const/4 v5, 0x0

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_6
    neg-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v6, v0

    add-int v22, v5, v6

    .line 3802
    move/from16 v0, v21

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3803
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3804
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move v5, v0

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    .line 3808
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 3811
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 3821
    .end local v17           #interval:I
    .end local v19           #scale:F
    .end local v20           #titleHeight:I
    .end local v21           #tx:I
    .end local v22           #ty:I
    .end local v23           #viewCentreX:F
    .end local v24           #viewCentreY:F
    .end local v25           #zoomScale:F
    :cond_7
    :goto_7
    const/4 v11, 0x0

    .line 3824
    .local v11, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3825
    const/4 v11, 0x1

    .line 3828
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3830
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v6, v0

    if-nez v6, :cond_9

    if-eqz v11, :cond_14

    :cond_9
    const/4 v6, 0x1

    :goto_8
    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v6

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 3833
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_0

    .line 3835
    const/4 v15, 0x0

    .line 3836
    .local v15, extras:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    move v5, v0

    if-eqz v5, :cond_15

    .line 3839
    if-nez v12, :cond_a

    .line 3840
    const/4 v15, 0x1

    .line 3853
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawExtras(Landroid/graphics/Canvas;IZ)V

    .line 3855
    const/4 v5, 0x3

    if-ne v15, v5, :cond_b

    .line 3856
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    .line 3857
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3858
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v16

    .line 3859
    .local v16, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v16, :cond_b

    invoke-static/range {v16 .. v16}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-nez v5, :cond_b

    .line 3869
    .end local v16           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 3870
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 3874
    if-nez v13, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3875
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    goto/16 :goto_0

    .line 3724
    .end local v11           #UIAnimationsRunning:Z
    .end local v12           #animateScroll:Z
    .end local v13           #animateZoom:Z
    .end local v14           #correctionY:F
    .end local v15           #extras:I
    :cond_c
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_1

    .line 3725
    .restart local v13       #animateZoom:Z
    :cond_d
    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_2

    .line 3753
    .restart local v12       #animateScroll:Z
    .restart local v14       #correctionY:F
    .restart local v17       #interval:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v25, v0

    .line 3755
    .restart local v25       #zoomScale:F
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScale:F

    .line 3756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 3758
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 3760
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 3761
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 3769
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    move v14, v0

    goto/16 :goto_3

    .line 3779
    .restart local v19       #scale:F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v23, v0

    .restart local v23       #viewCentreX:F
    goto/16 :goto_4

    .line 3794
    .restart local v20       #titleHeight:I
    .restart local v21       #tx:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v24, v0

    .restart local v24       #viewCentreY:F
    goto/16 :goto_5

    .line 3799
    .restart local v22       #ty:I
    :cond_12
    sub-int v5, v22, v20

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v7, v0

    int-to-float v7, v7

    mul-float v7, v7, v25

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v5

    add-int v5, v5, v20

    goto/16 :goto_6

    .line 3816
    .end local v17           #interval:I
    .end local v19           #scale:F
    .end local v20           #titleHeight:I
    .end local v21           #tx:I
    .end local v22           #ty:I
    .end local v23           #viewCentreX:F
    .end local v24           #viewCentreY:F
    .end local v25           #zoomScale:F
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3818
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    goto/16 :goto_7

    .line 3830
    .restart local v11       #UIAnimationsRunning:Z
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 3842
    .restart local v15       #extras:I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    move v5, v0

    if-eqz v5, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-nez v5, :cond_19

    .line 3843
    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v5, v0

    if-nez v5, :cond_a

    .line 3844
    const/4 v15, 0x2

    .line 3845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mTouchSelection:Z

    move v5, v0

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mExtendSelection:Z

    move v5, v0

    if-eqz v5, :cond_17

    :cond_16
    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSetSelectionRegion(Z)V

    .line 3846
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mTouchSelection:Z

    move v5, v0

    if-nez v5, :cond_18

    const/4 v5, 0x1

    move v6, v5

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v9

    sub-int v9, v5, v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mExtendSelection:Z

    move v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->nativeSetSelectionPointer(ZFIIZ)V

    goto/16 :goto_9

    .line 3845
    :cond_17
    const/4 v5, 0x0

    goto :goto_a

    .line 3846
    :cond_18
    const/4 v5, 0x0

    move v6, v5

    goto :goto_b

    .line 3849
    :cond_19
    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move v5, v0

    if-nez v5, :cond_a

    .line 3850
    const/4 v15, 0x3

    goto/16 :goto_9
.end method

.method private drawExtras(Landroid/graphics/Canvas;IZ)V
    .locals 1
    .parameter "canvas"
    .parameter "extras"
    .parameter "animationsRunning"

    .prologue
    .line 3709
    if-eqz p3, :cond_0

    .line 3710
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3712
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeDrawExtras(Landroid/graphics/Canvas;I)V

    .line 3713
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3714
    return-void
.end method

.method private drawWebSelectionControl(Landroid/graphics/Canvas;Z)V
    .locals 11
    .parameter "canvas"
    .parameter "pressed"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x40a0

    .line 3685
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2

    .line 3687
    sget v0, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    sub-float/2addr v0, v1

    div-float v9, v0, v2

    .line 3688
    .local v9, Scale1:F
    sget v0, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    div-float v10, v0, v2

    .line 3689
    .local v10, Scale2:F
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebView;->mControllerRaidus:I

    .line 3690
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_3

    .line 3691
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/WebView;->mControllerRaidus:I

    .line 3697
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mController:I

    .line 3698
    .local v8, nController:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    if-ne v3, v0, :cond_1

    .line 3699
    const/4 v8, 0x0

    .line 3701
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/webkit/WebView;->mControllerRaidus:I

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v7, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Landroid/webkit/WebView;->nativeDrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)V

    .line 3705
    .end local v8           #nController:I
    .end local v9           #Scale1:F
    .end local v10           #Scale2:F
    :cond_2
    return-void

    .line 3692
    .restart local v9       #Scale1:F
    .restart local v10       #Scale2:F
    :cond_3
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_0

    .line 3693
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mControllerRaidus:I

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1550
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1551
    return-void
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 2026
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 2027
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 2028
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    move v2, v3

    .line 2031
    :goto_0
    return v2

    .line 2029
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 2030
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->extendDuration(I)V

    .line 2031
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 3037
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3063
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCopyParams(IIIZZF)Landroid/webkit/WebViewCore$CopyParams;
    .locals 1
    .parameter "contentX"
    .parameter "contentY"
    .parameter "controller"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"

    .prologue
    .line 8487
    new-instance v0, Landroid/webkit/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CopyParams;-><init>()V

    .line 8488
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p1, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    .line 8489
    iput p2, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    .line 8490
    iput p3, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    .line 8491
    iput-boolean p4, v0, Landroid/webkit/WebViewCore$CopyParams;->mExtendSelection:Z

    .line 8492
    iput-boolean p5, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    .line 8493
    iput p6, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    .line 8494
    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3523
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 8325
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 8326
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 8333
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 8328
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8329
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 8330
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 8338
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 8339
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 8348
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 8341
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8342
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 8343
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getSelectionDirection(II)V
    .locals 22
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 8499
    const/16 v17, 0x0

    .local v17, selectX:I
    const/16 v18, 0x0

    .line 8500
    .local v18, selectY:I
    const/4 v15, 0x0

    .local v15, controllerWidth:I
    const/4 v14, 0x0

    .line 8502
    .local v14, controllerHeight:I
    const/16 v6, 0x28

    .line 8503
    .local v6, CONTROLLER_MAX_WIDTH:I
    const/16 v5, 0x3c

    .line 8506
    .local v5, CONTROLLER_MAX_HEIGHT:I
    const/16 v8, 0x14

    .line 8507
    .local v8, CONTROLLER_MID_WIDTH:I
    const/16 v7, 0x1e

    .line 8510
    .local v7, CONTROLLER_MID_HEIGHT:I
    const/16 v10, 0xa

    .line 8511
    .local v10, CONTROLLER_MIN_WIDTH:I
    const/16 v9, 0xf

    .line 8513
    .local v9, CONTROLLER_MIN_HEIGHT:I
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 8515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 8600
    :cond_0
    :goto_0
    return-void

    .line 8522
    :cond_1
    sget v20, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    sget v21, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    sub-float v13, v20, v21

    .line 8523
    .local v13, ScaleDiff:F
    const/high16 v20, 0x40a0

    div-float v11, v13, v20

    .line 8524
    .local v11, Scale1:F
    sub-float v12, v13, v11

    .line 8525
    .local v12, Scale3:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    cmpl-float v20, v20, v11

    if-ltz v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    cmpg-float v20, v20, v12

    if-gez v20, :cond_5

    .line 8526
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mControllerRaidus:I

    .line 8527
    const/16 v15, 0x14

    .line 8528
    const/16 v14, 0x1e

    .line 8539
    :goto_1
    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move v3, v15

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8541
    .local v19, selectionCtrl:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 8542
    const/16 v16, 0x0

    .line 8543
    .local v16, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 8544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 8546
    :cond_2
    if-eqz v16, :cond_0

    .line 8548
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    div-int/lit8 v17, v20, 0x2

    .line 8549
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 8550
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v21, v0

    sub-int v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8551
    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 8552
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mController:I

    .line 8553
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 8555
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 8557
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 8558
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    div-int/lit8 v18, v20, 0x2

    .line 8559
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v21, v0

    sub-int v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8560
    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 8561
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mController:I

    .line 8562
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 8565
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 8567
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 8568
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    div-int/lit8 v18, v20, 0x2

    .line 8569
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v21, v0

    sub-int v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8570
    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 8571
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mController:I

    .line 8572
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    goto/16 :goto_0

    .line 8529
    .end local v16           #selectRect:Landroid/graphics/Rect;
    .end local v19           #selectionCtrl:Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    cmpl-float v20, v20, v12

    if-ltz v20, :cond_6

    .line 8530
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mControllerRaidus:I

    .line 8531
    const/16 v15, 0xa

    .line 8532
    const/16 v14, 0xf

    goto/16 :goto_1

    .line 8534
    :cond_6
    const/16 v20, 0xa

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mControllerRaidus:I

    .line 8535
    const/16 v15, 0x28

    .line 8536
    const/16 v14, 0x3c

    goto/16 :goto_1

    .line 8577
    .restart local v19       #selectionCtrl:Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 8581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 8582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 8583
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move/from16 v21, v0

    sub-int v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8587
    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 8588
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mController:I

    .line 8589
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    goto/16 :goto_0
.end method

.method private getSelectionExtendPoint(IIII)Landroid/graphics/Point;
    .locals 7
    .parameter "contentX"
    .parameter "contentY"
    .parameter "controler"
    .parameter "ControlerRadius"

    .prologue
    .line 8604
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 8605
    .local v4, value:Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 8606
    .local v1, deltaX:I
    const/4 v2, 0x0

    .line 8607
    .local v2, deltaY:I
    const/4 v0, 0x0

    .line 8609
    .local v0, ControlerLength:I
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v5, :cond_0

    .line 8610
    const/4 v5, 0x0

    .line 8644
    :goto_0
    return-object v5

    .line 8612
    :cond_0
    iput p1, v4, Landroid/graphics/Point;->x:I

    .line 8613
    iput p2, v4, Landroid/graphics/Point;->y:I

    .line 8614
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 8616
    .local v3, selectRect:Landroid/graphics/Rect;
    const/16 v5, 0xa

    if-ne v5, p4, :cond_2

    .line 8617
    mul-int/lit8 v0, p4, 0x5

    .line 8624
    :goto_1
    const/4 v5, 0x1

    if-ne v5, p3, :cond_1

    .line 8625
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 8626
    if-le v2, v0, :cond_4

    .line 8627
    iput p2, v4, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_2
    move-object v5, v4

    .line 8644
    goto :goto_0

    .line 8618
    :cond_2
    const/4 v5, 0x6

    if-ne v5, p4, :cond_3

    .line 8619
    mul-int/lit8 v0, p4, 0x4

    goto :goto_1

    .line 8621
    :cond_3
    mul-int/lit8 v0, p4, 0x2

    goto :goto_1

    .line 8628
    :cond_4
    if-lez v2, :cond_5

    if-gt v2, v0, :cond_5

    .line 8629
    sub-int v5, p2, v2

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 8631
    :cond_5
    iput p2, v4, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method private getTitleHeight()I
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 1443
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1444
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 1445
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1447
    :cond_0
    return v0
.end method

.method private getVisibleTitleHeight()I
    .locals 2

    .prologue
    .line 1430
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    const/4 v2, 0x0

    .line 2016
    if-eqz p1, :cond_1

    .line 2017
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 2019
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2020
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2023
    :cond_1
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 3992
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3995
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3996
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 1
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 5098
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inEditingMode()Z
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 5109
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1261
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1262
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1263
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1264
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1265
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1267
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1268
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1269
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1270
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 1271
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1272
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1273
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1276
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1278
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1279
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1280
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1281
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1282
    iput v1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1283
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1284
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1285
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1286
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1287
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1289
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 2484
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 2485
    return-void
.end method

.method private isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z
    .locals 6
    .parameter "view"

    .prologue
    .line 6367
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 6368
    .local v2, viewWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    .line 6369
    .local v1, viewHeight:I
    int-to-float v3, v2

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6371
    .local v0, scale:F
    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 6372
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6376
    :cond_0
    :goto_0
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 6377
    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v1

    if-gt v3, v4, :cond_2

    .line 6383
    const/4 v3, 0x1

    .line 6386
    :goto_1
    return v3

    .line 6373
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 6374
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 6386
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 5912
    packed-switch p1, :pswitch_data_0

    .line 5922
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5914
    :pswitch_0
    const/4 v0, 0x2

    .line 5920
    :goto_0
    return v0

    .line 5916
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 5918
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 5920
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 5912
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPluginHandleNavKey(IJZ)V
    .locals 13
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"

    .prologue
    .line 8365
    if-eqz p4, :cond_0

    .line 8366
    const/4 v5, 0x0

    .line 8367
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 8368
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 8373
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v8, v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 8378
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8379
    return-void

    .line 8370
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_0
    const/4 v5, 0x1

    .line 8371
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_0

    .line 8373
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawExtras(Landroid/graphics/Canvas;I)V
.end method

.method private native nativeDrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;IZII)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations()Z
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextSize()I
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBlockLeftEdge(IIF)I
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(IIZ)V
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetRootLayer(I)V
.end method

.method private native nativeSetSelectionPointer(ZFIIZ)V
.end method

.method private native nativeSetSelectionRegion(Z)V
.end method

.method private native nativeSetTextSelectionColor(III)V
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private navHandledKey(IIZJ)Z
    .locals 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 8384
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_0

    .line 8385
    const/4 v8, 0x0

    .line 8433
    :goto_0
    return v8

    .line 8387
    :cond_0
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 8388
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 8389
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    move v1, v8

    .line 8396
    .local v1, keyHandled:Z
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v8, :cond_3

    :cond_1
    move v8, v1

    .line 8397
    goto :goto_0

    .line 8389
    .end local v1           #keyHandled:Z
    :cond_2
    const/4 v8, 0x0

    move v1, v8

    goto :goto_1

    .line 8399
    .restart local v1       #keyHandled:Z
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 8400
    .local v0, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_0

    .line 8401
    :cond_4
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 8402
    .local v6, viewCursorRingBounds:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 8403
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 8404
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8405
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 8406
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 8407
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 8408
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v1

    .line 8409
    goto :goto_0

    .line 8412
    :cond_5
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8414
    .local v2, maxH:I
    if-lez v2, :cond_7

    .line 8415
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 8423
    :cond_6
    :goto_2
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v1

    goto :goto_0

    .line 8417
    :cond_7
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8419
    if-gez v2, :cond_6

    .line 8420
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2

    .line 8424
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v1

    .line 8425
    goto/16 :goto_0

    .line 8431
    :cond_9
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 8432
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v8, v1

    .line 8433
    goto/16 :goto_0
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 6800
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 6801
    return-void
.end method

.method private static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2307
    if-ge p2, p1, :cond_1

    .line 2309
    const/4 p0, 0x0

    .line 2318
    :cond_0
    :goto_0
    return p0

    .line 2311
    :cond_1
    if-gez p0, :cond_2

    .line 2312
    const/4 p0, 0x0

    goto :goto_0

    .line 2314
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 2315
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 2323
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    return v0
.end method

.method private pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 2328
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    return v0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3142
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3147
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3148
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 3149
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, p1, v0

    .line 3150
    .local v3, dx:I
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v4, p2, v0

    .line 3152
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 3153
    const/4 v0, 0x0

    .line 3165
    :goto_0
    return v0

    .line 3155
    :cond_0
    if-eqz p3, :cond_2

    .line 3157
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3159
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 3160
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3165
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3157
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 3162
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3163
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private prepareForAdaptiveZoom()V
    .locals 6

    .prologue
    .line 6550
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6573
    :goto_0
    return-void

    .line 6554
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6555
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6557
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    .line 6558
    .local v2, touchX:I
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    .line 6560
    .local v3, touchY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 6563
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6565
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 6571
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 6572
    .local v0, pt:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xbb

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private recordNewContentSize(IIZ)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 2499
    or-int v2, p1, p2

    if-nez v2, :cond_0

    .line 2528
    :goto_0
    return-void

    .line 2504
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v2, p2, :cond_4

    .line 2506
    :cond_1
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2507
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2510
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v2, :cond_4

    .line 2512
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2513
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2514
    .local v1, oldY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2515
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2516
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 2517
    :cond_2
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2519
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2522
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 2523
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 2527
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_4
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    .locals 21
    .parameter "elementRect"
    .parameter "immediate"

    .prologue
    .line 6947
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 6950
    .local v8, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6960
    .local v5, content:Landroid/graphics/Rect;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v12

    .line 6961
    .local v12, screenTop:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v9

    .line 6962
    .local v9, screenBottom:I
    sub-int v6, v9, v12

    .line 6963
    .local v6, height:I
    const/4 v14, 0x0

    .line 6965
    .local v14, scrollYDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v9

    if-le v0, v1, :cond_3

    .line 6966
    div-int/lit8 v7, v6, 0x3

    .line 6967
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    mul-int/lit8 v17, v7, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 6970
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    .line 6980
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 6981
    .local v10, screenLeft:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v11

    .line 6982
    .local v11, screenRight:I
    sub-int v15, v11, v10

    .line 6983
    .local v15, width:I
    const/4 v13, 0x0

    .line 6985
    .local v13, scrollXDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-le v0, v1, :cond_5

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-le v0, v1, :cond_5

    .line 6986
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    move v1, v15

    if-le v0, v1, :cond_4

    .line 6987
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v16, v10

    add-int v13, v13, v16

    .line 7000
    :cond_1
    :goto_1
    or-int v16, v14, v13

    if-eqz v16, :cond_7

    .line 7001
    if-nez p2, :cond_6

    const/16 v16, 0x1

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7005
    :goto_3
    return-void

    .line 6974
    .end local v10           #screenLeft:I
    .end local v11           #screenRight:I
    .end local v13           #scrollXDelta:I
    .end local v15           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_2
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v17, v12, v7

    sub-int v14, v16, v17

    goto :goto_0

    .line 6976
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_3
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_0

    .line 6977
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    goto :goto_0

    .line 6989
    .restart local v10       #screenLeft:I
    .restart local v11       #screenRight:I
    .restart local v13       #scrollXDelta:I
    .restart local v15       #width:I
    :cond_4
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v11

    add-int v13, v13, v16

    goto :goto_1

    .line 6991
    :cond_5
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_1

    .line 6992
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    sub-int v13, v13, v16

    goto :goto_1

    .line 7001
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 7003
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_3
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 6
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 1692
    const-string v3, "scrollX"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1693
    .local v1, sx:I
    const-string v3, "scrollY"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1694
    .local v2, sy:I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1695
    .local v0, scale:F
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 1696
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 1697
    iput v1, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1698
    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1699
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 1700
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 1704
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1705
    div-float v3, v4, v0

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1706
    const-string/jumbo v3, "textwrapScale"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1707
    const-string v3, "overview"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 1708
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1709
    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 5884
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 5885
    .local v1, xMove:I
    move v0, v1

    .line 5886
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 5887
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 5888
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 5893
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5894
    return v1

    .line 5890
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 5891
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 5898
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 5899
    .local v1, yMove:I
    move v0, v1

    .line 5900
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 5901
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 5902
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 5907
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 5908
    return v1

    .line 5904
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 5905
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private selectClosestWord(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1033
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v8, :cond_0

    .line 1034
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1035
    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;->getCopyParams(IIIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v7

    .line 1037
    .local v7, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v7}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1039
    iput-boolean v3, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1040
    iput-boolean v8, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 1041
    iput-boolean v8, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1046
    .end local v7           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_0
    return-void
.end method

.method private sendMotionUp(IIIII)V
    .locals 3
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8313
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 8314
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 8315
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 8316
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 8317
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 8318
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 8319
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8320
    return-void
.end method

.method private sendMouseClick(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 8287
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbc

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8289
    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 8274
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8276
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8280
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8282
    return-void
.end method

.method private sendMoveMouseIfLatest(Z)V
    .locals 3
    .parameter "removeFocus"

    .prologue
    .line 8303
    if-eqz p1, :cond_0

    .line 8304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 8306
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x88

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8308
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 2603
    iget-boolean v3, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 2628
    :goto_0
    return-object v3

    .line 2605
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2606
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 2608
    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2609
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2610
    .local v1, pos:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x6b

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 2612
    iput-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 2614
    .end local v1           #pos:Landroid/graphics/Point;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2615
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2625
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2626
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    :cond_2
    move-object v3, v2

    .line 2628
    goto :goto_0
.end method

.method private sendViewSizeZoom()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2690
    iget-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v4, :cond_0

    move v4, v6

    .line 2722
    :goto_0
    return v4

    .line 2692
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 2693
    .local v3, viewWidth:I
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2694
    .local v2, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2703
    .local v1, newHeight:I
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v2, v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v4, :cond_1

    .line 2704
    const/4 v1, 0x0

    .line 2707
    :cond_1
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v1, v4, :cond_4

    .line 2708
    :cond_2
    new-instance v0, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v0}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2709
    .local v0, data:Landroid/webkit/WebView$ViewSizeData;
    iput v2, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2710
    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2711
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2712
    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2713
    iget v4, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v4, :cond_3

    move v4, v7

    :goto_1
    iput-boolean v4, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2714
    iget v4, p0, Landroid/webkit/WebView;->mAnchorX:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2715
    iget v4, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 2716
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x69

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2717
    iput v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 2718
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2719
    iput v6, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v6, p0, Landroid/webkit/WebView;->mAnchorX:I

    move v4, v7

    .line 2720
    goto :goto_0

    :cond_3
    move v4, v6

    .line 2713
    goto :goto_1

    .end local v0           #data:Landroid/webkit/WebView$ViewSizeData;
    :cond_4
    move v4, v6

    .line 2722
    goto :goto_0
.end method

.method private setActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4526
    if-eqz p1, :cond_2

    .line 4527
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4530
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4531
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4532
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4533
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4534
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4569
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4570
    return-void

    .line 4540
    :cond_1
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_0

    .line 4546
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4558
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-nez v0, :cond_4

    .line 4559
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4562
    :cond_4
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 4563
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4564
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_5

    .line 4565
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4567
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 3171
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 3195
    :goto_0
    return v1

    .line 3178
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 3179
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 3180
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_3

    .line 3182
    if-eqz p2, :cond_1

    .line 3183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3184
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3185
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3186
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 3193
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 3195
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3241
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 3290
    :goto_0
    return v2

    .line 3251
    :cond_0
    or-int v2, p1, p2

    if-nez v2, :cond_1

    .line 3255
    const/4 v0, 0x0

    .line 3256
    .local v0, vx:I
    const/4 v1, 0x0

    .line 3268
    .local v1, vy:I
    :goto_1
    if-nez p1, :cond_3

    if-ne p2, v5, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 3271
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 3275
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3276
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    :goto_2
    move v2, v4

    .line 3282
    goto :goto_0

    .line 3258
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3259
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_1

    .line 3278
    :cond_2
    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_2

    .line 3284
    :cond_3
    invoke-direct {p0, v0, v1, v4, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3287
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-eq v2, v0, :cond_4

    if-gez p1, :cond_5

    :cond_4
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v2, v1, :cond_6

    if-ltz p2, :cond_6

    :cond_5
    move v2, v5

    .line 3288
    goto :goto_0

    :cond_6
    move v2, v4

    .line 3290
    goto :goto_0
.end method

.method private setNewZoomScale(FZZ)V
    .locals 11
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    .line 2532
    iget v5, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    .line 2533
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 2535
    iget v5, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2539
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2540
    iput p1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2542
    iput v10, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2544
    :cond_1
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 2545
    :cond_2
    iget-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v5, :cond_6

    .line 2548
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_3

    .line 2549
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2551
    :cond_3
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2552
    div-float v5, v9, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2553
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 2596
    :cond_4
    :goto_1
    return-void

    .line 2536
    :cond_5
    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    .line 2537
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 2558
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2559
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2560
    .local v1, oldY:I
    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float v2, p1, v5

    .line 2561
    .local v2, ratio:F
    int-to-float v5, v0

    mul-float/2addr v5, v2

    sub-float v6, v2, v9

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 2562
    .local v3, sx:F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float v6, v2, v9

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 2566
    .local v4, sy:F
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_7

    .line 2567
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2569
    :cond_7
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2570
    div-float v5, v9, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2573
    iput-boolean v10, p0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 2576
    iget-object v5, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 2581
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2582
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2585
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v5, :cond_8

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v5, :cond_9

    .line 2586
    :cond_8
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2593
    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_1

    .line 2591
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private setNewZoomScaleEx(FZZ)V
    .locals 11
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"

    .prologue
    const/high16 v10, 0x3f80

    const/high16 v9, 0x3f00

    .line 6701
    iget v6, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 6702
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6710
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 6711
    iput p1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 6713
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 6715
    :cond_1
    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v6, p1, v6

    if-nez v6, :cond_2

    if-eqz p3, :cond_4

    .line 6716
    :cond_2
    iget-boolean v6, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v6, :cond_6

    .line 6719
    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v6, :cond_3

    .line 6720
    iget-object v6, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v6, v7, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 6722
    :cond_3
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6723
    div-float v6, v10, p1

    iput v6, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 6724
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 6769
    :cond_4
    :goto_1
    return-void

    .line 6703
    :cond_5
    iget v6, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    .line 6704
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 6729
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 6730
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6731
    .local v1, oldY:I
    iget v6, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float v2, p1, v6

    .line 6738
    .local v2, ratio:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v6

    int-to-float v5, v6

    .line 6739
    .local v5, titleHeight:F
    int-to-float v6, v0

    mul-float/2addr v6, v2

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    mul-float/2addr v7, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    add-float v3, v6, v7

    .line 6740
    .local v3, sx:F
    int-to-float v6, v1

    mul-float/2addr v6, v2

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    add-float v4, v6, v7

    .line 6743
    .local v4, sy:F
    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v6, :cond_7

    .line 6744
    iget-object v6, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v6, v7, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 6746
    :cond_7
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6747
    div-float v6, v10, p1

    iput v6, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 6749
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 6750
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 6753
    iget-object v6, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v6}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 6758
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 6759
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6765
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 6766
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_1
.end method

.method private setUpSelectXY()V
    .locals 3

    .prologue
    .line 4427
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4428
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4429
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4430
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4431
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4432
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 4440
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 4441
    return-void

    .line 4433
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 4434
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4435
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_0

    .line 4437
    :cond_1
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4438
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_0
.end method

.method private shouldForwardTouchEvent()Z
    .locals 2

    .prologue
    .line 5103
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sign(F)I
    .locals 2
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 4816
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private spawnContentScrollTo(II)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 3296
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 3304
    :goto_0
    return-void

    .line 3301
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3302
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 3303
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5628
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 5630
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5631
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v2, :cond_0

    .line 5632
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 5634
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 5635
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v2, v4, :cond_2

    .line 5641
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 5642
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 5643
    .local v0, count:I
    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 5644
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 5645
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v3, 0x10402df

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5650
    .end local v0           #count:I
    :cond_2
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 5617
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5618
    iput p2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5619
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5620
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5621
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5622
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    if-eqz v0, :cond_0

    .line 5623
    new-instance v0, Landroid/webkit/WebView$DragTrackerHandler;

    iget-object v1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/webkit/WebView$DragTrackerHandler;-><init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    .line 5625
    :cond_0
    return-void
.end method

.method private stopTouch()V
    .locals 1

    .prologue
    .line 5671
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 5672
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 5677
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 5678
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5679
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5681
    :cond_1
    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 20
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8650
    const/16 v16, 0x0

    .line 8651
    .local v16, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 8657
    .local v13, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8658
    const/4 v5, 0x0

    .line 8826
    :goto_0
    return v5

    .line 8659
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 8660
    const/4 v5, 0x0

    goto :goto_0

    .line 8662
    :cond_1
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xtend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8665
    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_1
    move/from16 v5, v16

    .line 8826
    goto :goto_0

    .line 8670
    :pswitch_0
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 8671
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 8672
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionDirection(II)V

    .line 8674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 8675
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 8676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 8677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8680
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 8681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 8682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 8685
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 8686
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8687
    const/16 v16, 0x1

    goto :goto_1

    .line 8691
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 8693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_1

    .line 8704
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_2

    .line 8706
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xtend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 8712
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v11, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->getCopyParams(IIIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v12

    .line 8715
    .local v12, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 8716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v12}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8760
    .end local v12           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_6

    .line 8761
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textSelectionTouchEvent : Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8766
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8767
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 8769
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 8719
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    .line 8721
    const/16 v17, 0x0

    .local v17, startX:I
    const/16 v18, 0x0

    .line 8722
    .local v18, startY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 8723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 8729
    const/4 v15, 0x0

    .line 8730
    .local v15, moveForward:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mController:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mControllerRaidus:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->getSelectionExtendPoint(IIII)Landroid/graphics/Point;

    move-result-object v19

    .line 8732
    .local v19, value:Landroid/graphics/Point;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 p3, v0

    .line 8733
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 p4, v0

    .line 8734
    move/from16 v0, p4

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 8735
    const/4 v15, 0x1

    .line 8740
    :cond_8
    :goto_3
    const/4 v5, 0x1

    if-ne v15, v5, :cond_5

    .line 8741
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mActionMove:Z

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->getCopyParams(IIIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v12

    .line 8744
    .restart local v12       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 8745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 8746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v12}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 8736
    .end local v12           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_8

    add-int/lit8 v5, v17, 0x5

    move v0, v5

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    .line 8738
    const/4 v15, 0x1

    goto :goto_3

    .line 8779
    .end local v15           #moveForward:Z
    .end local v17           #startX:I
    .end local v18           #startY:I
    .end local v19           #value:Landroid/graphics/Point;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 8780
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 8781
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 8782
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/16 v6, 0x9

    if-eq v5, v6, :cond_a

    .line 8784
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 8785
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v11, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->getCopyParams(IIIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v12

    .line 8788
    .restart local v12       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd3

    invoke-virtual {v5, v6, v12}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8790
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 8794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8798
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8822
    .end local v12           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :goto_4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mLongPress:Z

    goto/16 :goto_1

    .line 8801
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_c

    .line 8803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 8805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8813
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8814
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    .line 8815
    const/16 v16, 0x1

    goto :goto_4

    .line 8810
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 8819
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 8665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 6241
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 6250
    :goto_0
    return-void

    .line 6245
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6246
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6247
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6249
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 3
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 7787
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v0, :cond_0

    .line 7790
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 7792
    :cond_0
    return-void
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1245
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v5

    .line 1247
    .local v0, canZoomIn:Z
    :goto_1
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v2, :cond_2

    move v1, v5

    .line 1248
    .local v1, canZoomOut:Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 1251
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_1
    move v0, v4

    .line 1246
    goto :goto_1

    .restart local v0       #canZoomIn:Z
    :cond_2
    move v1, v4

    .line 1247
    goto :goto_2

    .line 1255
    .restart local v1       #canZoomOut:Z
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1256
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method

.method private updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 6
    .parameter "restoreState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"
    .parameter "updateZoomOverview"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8217
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 8218
    iget-boolean v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    if-eqz v1, :cond_3

    .line 8219
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_2

    .line 8220
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8221
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 8222
    if-eqz p4, :cond_0

    .line 8223
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 8224
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8239
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_1
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_5

    .line 8240
    sget v1, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 8244
    :goto_2
    return-void

    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1
    move v1, v3

    .line 8224
    goto :goto_0

    .line 8228
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8229
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 8232
    :cond_3
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8233
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 8236
    :cond_4
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8237
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 8242
    :cond_5
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_2
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 8355
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8356
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2463
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2464
    .local v1, scale:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 2465
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 2469
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2474
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2475
    .local v8, scale:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 2476
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 2481
    return-void
.end method

.method private zoomWithPreview(FZ)Z
    .locals 5
    .parameter "scale"
    .parameter "updateTextWrapScale"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 6088
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6089
    .local v0, oldScale:F
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 6090
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 6093
    iget v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 6094
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 6097
    :cond_0
    invoke-direct {p0, p1, p2, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 6099
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 6101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 6102
    div-float v1, v3, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 6103
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v3, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 6104
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 6105
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6106
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6107
    const/4 v1, 0x1

    .line 6109
    :goto_0
    return v1

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method private zoomWithPreviewEx(F)Z
    .locals 10
    .parameter "scale"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const-wide v5, 0x3fa999999999999aL

    .line 6771
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6772
    .local v0, oldScale:F
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 6773
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 6776
    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 6777
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 6780
    :cond_0
    invoke-direct {p0, p1, v9, v8}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZ)V

    .line 6782
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 6784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 6785
    div-float v1, v7, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 6786
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v7, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 6787
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 6788
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    move v1, v9

    .line 6791
    :goto_0
    return v1

    :cond_1
    move v1, v8

    goto :goto_0
.end method


# virtual methods
.method public ClearWebTextSelection()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1064
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1065
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 1066
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_0

    .line 1067
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 1068
    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;->getCopyParams(IIIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v7

    .line 1069
    .local v7, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v7}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1070
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1076
    .end local v7           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_0
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 3460
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 3461
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 3462
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 3463
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3464
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3499
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3500
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3486
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3487
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1947
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1948
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1949
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1950
    monitor-exit v0

    move v1, v2

    .line 1952
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 1952
    goto :goto_1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 1993
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1994
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1995
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1996
    monitor-exit v0

    move v2, v3

    .line 1999
    :goto_0
    return v2

    .line 1998
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 1999
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 2001
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #newIndex:I
    :cond_1
    move v2, v3

    .line 1999
    goto :goto_1
.end method

.method public canGoForward()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1969
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1970
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1971
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1972
    monitor-exit v0

    move v1, v3

    .line 1974
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    move v1, v4

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v3

    .line 1974
    goto :goto_1
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_0
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    .prologue
    .line 6322
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6324
    return-void
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 2924
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2926
    return-void

    :cond_0
    move v2, v3

    .line 2924
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 2933
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2934
    const/4 v0, 0x0

    .line 2935
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 2937
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 2943
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 2944
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2945
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 3070
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 3071
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3075
    :goto_0
    return-void

    .line 3073
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3074
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 2952
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2953
    return-void
.end method

.method public clearTextEntry(Z)V
    .locals 1
    .parameter "disableFocusController"

    .prologue
    .line 2125
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 2127
    if-eqz p1, :cond_0

    .line 2128
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 2131
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2092
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2093
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2094
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2095
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 2727
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 2728
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2737
    :goto_0
    return v0

    .line 2729
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2734
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 2737
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 3119
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3120
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3121
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3122
    .local v1, oldY:I
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3123
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3124
    invoke-virtual {p0}, Landroid/webkit/WebView;->postInvalidate()V

    .line 3125
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_1

    .line 3126
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 3131
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    :goto_0
    return-void

    .line 3129
    :cond_2
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 2765
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 2760
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 2743
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 2744
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2754
    :goto_0
    return v0

    .line 2745
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2751
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 2754
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2422
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2430
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 2438
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    .prologue
    .line 3914
    new-instance v1, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 3915
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 3916
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 3917
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 3918
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 3919
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 3920
    return-object v1
.end method

.method public debugDump()V
    .locals 2

    .prologue
    .line 8447
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 8448
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 8449
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3931
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 3932
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 3934
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3936
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1517
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1519
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1520
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1524
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1526
    monitor-enter p0

    .line 1527
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1528
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1529
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1530
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1533
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1536
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1537
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1538
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1540
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_1

    .line 1541
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1542
    iput v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1544
    :cond_1
    return-void

    .line 1530
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1538
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method dismissZoomControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6442
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_2

    .line 6445
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_0

    .line 6446
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 6448
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 6449
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 6466
    :cond_1
    :goto_0
    return-void

    .line 6453
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 6454
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6455
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_1

    .line 6456
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 6459
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 6460
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6462
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 6463
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 4778
    const/4 v0, 0x1

    .line 4782
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4783
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 4784
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 4797
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 4798
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4801
    :goto_1
    return v1

    .line 4786
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_3

    .line 4791
    const/4 v0, 0x0

    .line 4793
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 4801
    goto :goto_1
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3437
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3438
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3111
    if-nez p1, :cond_0

    .line 3115
    :goto_0
    return-void

    .line 3114
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3547
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 3550
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3552
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 3888
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 8459
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 8460
    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 4142
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 4143
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 4152
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4153
    return-void

    :cond_0
    move v2, v3

    .line 4152
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 4162
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4163
    return-void

    :cond_0
    move v2, v3

    .line 4162
    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    .prologue
    .line 4173
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4174
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 2

    .prologue
    .line 4448
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 4454
    :cond_0
    :goto_0
    return-void

    .line 4451
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4453
    invoke-direct {p0}, Landroid/webkit/WebView;->setUpSelectXY()V

    goto :goto_0
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3429
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3430
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3539
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3543
    return-void

    .line 3541
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 3
    .parameter "find"

    .prologue
    const/4 v2, 0x0

    .line 2986
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    move v1, v2

    .line 2991
    :goto_0
    return v1

    .line 2987
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 2989
    .local v0, result:I
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2990
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    move v1, v0

    .line 2991
    goto :goto_0

    .end local v0           #result:I
    :cond_1
    move v0, v2

    .line 2987
    goto :goto_1
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 2975
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 2977
    :goto_0
    return-void

    .line 2976
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 9
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 6018
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 6020
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6021
    return-void
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 2911
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2912
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 2842
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 2850
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getDragTracker()Landroid/webkit/WebView$DragTracker;
    .locals 1

    .prologue
    .line 5005
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2817
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2818
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 10

    .prologue
    const/4 v6, 0x7

    const-string/jumbo v9, "tel:"

    const-string v8, "mailto:"

    const-string v7, "geo:0,0?q="

    .line 2211
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_0

    .line 2212
    const/4 v5, 0x0

    .line 2253
    :goto_0
    return-object v5

    .line 2215
    :cond_0
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2216
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2217
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2218
    const/16 v5, 0x9

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2239
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2240
    .local v4, type:I
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_3

    .line 2243
    :cond_2
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2244
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2245
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2246
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2247
    if-nez v4, :cond_8

    const/4 v5, 0x5

    :goto_2
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2250
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    :cond_3
    move-object v5, v2

    .line 2253
    goto :goto_0

    .line 2220
    .end local v4           #type:I
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 2221
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2222
    const-string/jumbo v5, "tel:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2223
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2224
    const-string/jumbo v5, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2225
    :cond_5
    const-string v5, "mailto:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2226
    const/4 v5, 0x4

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2227
    const-string v5, "mailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2228
    :cond_6
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2229
    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2230
    const-string v5, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2232
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2233
    invoke-static {v2, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2234
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2247
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #type:I
    :cond_8
    const/16 v5, 0x8

    goto :goto_2
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2797
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2798
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2156
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 3473
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2807
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2808
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2826
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2827
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2784
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2785
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 1439
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewWidth()I
    .locals 2

    .prologue
    .line 1411
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 1412
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1414
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 3412
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 3381
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 3392
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .locals 9

    .prologue
    .line 1010
    iget-object v2, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v2, :cond_0

    .line 1011
    const/4 v2, 0x0

    .line 1022
    :goto_0
    return-object v2

    .line 1012
    :cond_0
    new-instance v8, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1013
    .local v8, value:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, textSelected:Ljava/lang/String;
    new-instance v7, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1015
    .local v7, startRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1016
    .local v6, EndRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/webkit/WebTextSelectionControls;

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v7}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v6}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebTextSelectionControls;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/webkit/WebView;)V

    .local v0, controls:Landroid/webkit/WebTextSelectionControls;
    move-object v2, v0

    .line 1022
    goto :goto_0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 3351
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 7036
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 6

    .prologue
    .line 6193
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_0

    .line 6194
    new-instance v4, Landroid/widget/ZoomButtonsController;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 6195
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 6199
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 6200
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6201
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 6202
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v0

    .line 6203
    .local v2, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6206
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6128
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6129
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    const/4 v0, 0x0

    .line 6157
    :goto_0
    return-object v0

    .line 6132
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_1

    .line 6133
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 6140
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 6141
    new-instance v0, Landroid/webkit/WebView$9;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 6157
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1961
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1962
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 2012
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 2013
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1983
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1984
    return-void
.end method

.method inAnimateZoom()Z
    .locals 2

    .prologue
    .line 3645
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 6273
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6286
    :goto_0
    return-void

    .line 6276
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 6277
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 6278
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 6279
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6280
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 6281
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6283
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 6284
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6285
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 4

    .prologue
    .line 2177
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :goto_0
    return-void

    .line 2181
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 2182
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2183
    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 2185
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2186
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2903
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1878
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 1904
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :goto_0
    return-void

    .line 1908
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1909
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 1910
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1911
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 1912
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 1913
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 1914
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 1915
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1916
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1918
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1837
    if-nez p1, :cond_0

    .line 1841
    :goto_0
    return-void

    .line 1840
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1822
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1823
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 1824
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 1825
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 1826
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1827
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1829
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1830
    return-void
.end method

.method moveSelection(FF)V
    .locals 13
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v12, -0x10

    const/4 v11, 0x0

    const/16 v10, 0x10

    .line 5842
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_0

    .line 5881
    :goto_0
    return-void

    .line 5844
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 5845
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 5846
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5847
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5848
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int v1, v6, v7

    .line 5849
    .local v1, maxX:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int v2, v0, v7

    .line 5850
    .local v2, maxY:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5852
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5868
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    iget-boolean v9, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeMoveSelection(IIZ)V

    .line 5871
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ge v7, v8, :cond_1

    move v3, v12

    .line 5874
    .local v3, scrollX:I
    :goto_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ge v7, v8, :cond_3

    move v4, v12

    .line 5877
    .local v4, scrollY:I
    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v11}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 5878
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5879
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 5880
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 5871
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v10

    if-le v7, v8, :cond_2

    move v3, v10

    goto :goto_1

    :cond_2
    move v3, v11

    goto :goto_1

    .line 5874
    .restart local v3       #scrollX:I
    :cond_3
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v10

    if-le v7, v8, :cond_4

    move v4, v10

    goto :goto_2

    :cond_4
    move v4, v11

    goto :goto_2
.end method

.method native nativeClearCursor()V
.end method

.method native nativeCursorMatchesFocus()Z
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeInputFieldAction(Ljava/lang/String;I)I
.end method

.method native nativeMoveCursorToInput(Ljava/lang/String;II)I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method public notifyFindDialogDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3081
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3092
    :goto_0
    return-void

    .line 3084
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3085
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3086
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3090
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3091
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 4488
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 4489
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4490
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4507
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4514
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 4689
    const-string/jumbo v0, "webview"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v1, :cond_0

    .line 4693
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 4695
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_1

    .line 4696
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    .line 4698
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4700
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_2

    .line 4701
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4705
    :cond_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 3950
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3951
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3952
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4494
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 4496
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 4497
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 4498
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4499
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 4500
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 3574
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 3616
    :goto_0
    return-void

    .line 3581
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v3, :cond_1

    .line 3582
    iget v3, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 3586
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3587
    .local v1, saveCount:I
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 3588
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3590
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-nez v3, :cond_5

    .line 3591
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 3601
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3604
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    .line 3605
    .local v2, titleH:I
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 3606
    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 3608
    .local v0, height:I
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3610
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3615
    .end local v0           #height:I
    :cond_4
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    goto :goto_0

    .line 3593
    .end local v2           #titleH:I
    :cond_5
    iget-object v3, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView$DragTrackerHandler;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3595
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 3597
    :cond_6
    iget-object v3, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v3}, Landroid/webkit/WebView$DragTrackerHandler;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3598
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    goto :goto_1
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2773
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2774
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2775
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4615
    if-eqz p1, :cond_1

    .line 4618
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4619
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4620
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4621
    invoke-direct {p0, v2, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4641
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4642
    return-void

    .line 4631
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4632
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4633
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_2

    .line 4634
    invoke-direct {p0, v1, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4636
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 4638
    :cond_3
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4523
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x13

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4187
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    move v0, v3

    .line 4316
    :goto_0
    return v0

    .line 4203
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 4205
    goto :goto_0

    .line 4208
    :cond_2
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 4210
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4211
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4217
    :cond_4
    :goto_1
    if-lt p1, v4, :cond_d

    if-gt p1, v5, :cond_d

    .line 4219
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4220
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4221
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v0, v2

    .line 4222
    goto :goto_0

    .line 4212
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v0, :cond_4

    .line 4213
    invoke-direct {p0}, Landroid/webkit/WebView;->setUpSelectXY()V

    goto :goto_1

    .line 4224
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v0, :cond_b

    .line 4225
    const/16 v0, 0x15

    if-ne p1, v0, :cond_7

    move v7, v1

    .line 4227
    .local v7, xRate:I
    :goto_2
    if-ne p1, v4, :cond_9

    move v8, v1

    .line 4229
    .local v8, yRate:I
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 4230
    .local v6, multiplier:I
    mul-int v0, v7, v6

    int-to-float v0, v0

    mul-int v1, v8, v6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    move v0, v2

    .line 4231
    goto :goto_0

    .line 4225
    .end local v6           #multiplier:I
    .end local v7           #xRate:I
    .end local v8           #yRate:I
    :cond_7
    if-ne p1, v5, :cond_8

    move v7, v2

    goto :goto_2

    :cond_8
    move v7, v3

    goto :goto_2

    .line 4227
    .restart local v7       #xRate:I
    :cond_9
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a

    move v8, v2

    goto :goto_3

    :cond_a
    move v8, v3

    goto :goto_3

    .line 4233
    .end local v7           #xRate:I
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4234
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 4235
    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 4238
    goto/16 :goto_0

    .line 4241
    :cond_d
    const/16 v0, 0x17

    if-ne p1, v0, :cond_11

    .line 4242
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4243
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 4244
    iget-boolean v0, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    .line 4245
    goto/16 :goto_0

    .line 4247
    :cond_e
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 4248
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4252
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_4
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 4253
    goto/16 :goto_0

    :cond_f
    move v0, v3

    .line 4252
    goto :goto_4

    :cond_10
    move v0, v3

    .line 4256
    goto/16 :goto_0

    .line 4259
    :cond_11
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_12

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_12

    .line 4262
    iput-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    iput-boolean v3, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4264
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 4265
    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 4269
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4270
    packed-switch p1, :pswitch_data_0

    .line 4288
    :cond_13
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4291
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4295
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4297
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4298
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 4299
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4272
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    .line 4276
    :pswitch_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_14

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    :cond_14
    move v0, v3

    goto :goto_6

    .line 4280
    :pswitch_2
    const/16 v0, 0xe

    if-ne p1, v0, :cond_15

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    :cond_15
    move v0, v3

    goto :goto_7

    .line 4283
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 4284
    goto/16 :goto_0

    .line 4301
    :cond_16
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4304
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4305
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4306
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 4307
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4312
    :cond_17
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4314
    :cond_18
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v0, v2

    .line 4316
    goto/16 :goto_0

    .line 4270
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 4330
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    move v4, v6

    .line 4419
    :goto_0
    return v4

    .line 4335
    :cond_0
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4336
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v2

    .line 4337
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4339
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4340
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 4341
    goto :goto_0

    .line 4348
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v6

    .line 4349
    goto :goto_0

    .line 4352
    :cond_3
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_4

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_5

    .line 4354
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4355
    iput-boolean v6, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4361
    :cond_5
    const/16 v4, 0x13

    if-lt p1, v4, :cond_8

    const/16 v4, 0x16

    if-gt p1, v4, :cond_8

    .line 4363
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4364
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v4, v8

    .line 4365
    goto :goto_0

    .line 4356
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->commitCopy()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v8

    .line 4357
    goto :goto_0

    :cond_7
    move v4, v6

    .line 4369
    goto :goto_0

    .line 4372
    :cond_8
    const/16 v4, 0x17

    if-ne p1, v4, :cond_f

    .line 4374
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4375
    iput-boolean v6, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 4377
    iget-boolean v4, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v4, :cond_a

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-nez v4, :cond_a

    .line 4378
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_9

    .line 4379
    invoke-direct {p0}, Landroid/webkit/WebView;->commitCopy()Z

    :goto_1
    move v4, v8

    .line 4384
    goto/16 :goto_0

    .line 4381
    :cond_9
    iput-boolean v8, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4382
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 4388
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4391
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    .line 4392
    goto/16 :goto_0

    .line 4394
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 4395
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4396
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 4397
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4398
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4399
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4400
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4401
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_c
    move v4, v8

    .line 4403
    goto/16 :goto_0

    .line 4405
    :cond_d
    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 4406
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 4407
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 4408
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_e
    move v4, v8

    .line 4411
    goto/16 :goto_0

    .line 4415
    .end local v0           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_f
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_10

    .line 4417
    :cond_10
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v8

    .line 4419
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6842
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 6844
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 6845
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 6846
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 6847
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 6849
    .local v7, widthSize:I
    move v4, v3

    .line 6850
    .local v4, measuredHeight:I
    move v5, v7

    .line 6853
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 6854
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 6858
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 6859
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 6860
    move v4, v0

    .line 6861
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 6864
    if-le v4, v3, :cond_0

    .line 6865
    move v4, v3

    .line 6866
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 6872
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 6873
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 6876
    :cond_1
    if-nez v6, :cond_3

    .line 6877
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 6878
    move v5, v1

    .line 6883
    :goto_1
    monitor-enter p0

    .line 6884
    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 6885
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6886
    return-void

    .line 6870
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    .line 6880
    :cond_3
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    .line 6885
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 3204
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3208
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v0, :cond_0

    .line 3210
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3215
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2880
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 2881
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 2882
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2884
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2891
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 2892
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 2893
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2895
    :cond_0
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 8
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string/jumbo v7, "username"

    const-string v6, "password"

    const-string v5, "host"

    .line 1310
    const/4 v1, 0x0

    .line 1311
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1313
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :goto_0
    return v1

    .line 1315
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1317
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1322
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1324
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1329
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10402de

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402e6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402e7

    new-instance v5, Landroid/webkit/WebView$6;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402e8

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402e9

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$3;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1357
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 4766
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 4767
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 4770
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 4771
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4772
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 4774
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 4710
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 4712
    iget v2, p0, Landroid/webkit/WebView;->mZoomScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 4714
    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 4715
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 4716
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 4717
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 4723
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 4724
    .local v1, newMaxViewportWidth:I
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v1, v2, :cond_1

    .line 4725
    sput v1, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 4729
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v2, :cond_2

    .line 4734
    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 4737
    iget v2, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    if-lez v2, :cond_2

    .line 4739
    iget v2, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v0, v2, v3

    .line 4740
    .local v0, initialScale:F
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 4741
    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 4746
    .end local v0           #initialScale:F
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 4754
    new-instance v2, Landroid/webkit/WebView$PostScale;

    if-eq p1, p3, :cond_5

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, p0, v3}, Landroid/webkit/WebView$PostScale;-><init>(Landroid/webkit/WebView;Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 4757
    iget-boolean v2, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v2, :cond_3

    .line 4758
    iget-object v2, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v2}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    .line 4762
    :cond_3
    return-void

    .line 4734
    :cond_4
    iget v4, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    goto :goto_0

    .line 4754
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 5114
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5115
    :cond_0
    const/4 v5, 0x0

    .line 5598
    :goto_0
    return v5

    .line 5125
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    .line 5129
    .local v17, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    move v5, v0

    if-eqz v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    .line 5130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5133
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5134
    const/4 v5, 0x1

    goto :goto_0

    .line 5136
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v10

    .line 5137
    .local v10, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    .line 5138
    .local v11, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v7, v5, 0xff

    .line 5139
    .local v7, action:I
    const/4 v5, 0x5

    if-ne v7, v5, :cond_7

    .line 5140
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 5141
    const/4 v7, 0x0

    .line 5166
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v10, v5

    if-lez v5, :cond_4

    .line 5167
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v10, v5

    .line 5169
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v11, v5

    if-lez v5, :cond_5

    .line 5170
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v11, v5

    .line 5173
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move v5, v0

    sub-float v19, v5, v10

    .line 5174
    .local v19, fDeltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move v5, v0

    sub-float v20, v5, v11

    .line 5175
    .local v20, fDeltaY:F
    move/from16 v0, v19

    float-to-int v0, v0

    move v14, v0

    .line 5176
    .local v14, deltaX:I
    move/from16 v0, v20

    float-to-int v0, v0

    move v15, v0

    .line 5177
    .local v15, deltaY:I
    float-to-int v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    .line 5178
    .local v8, contentX:I
    float-to-int v5, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v9

    .line 5184
    .local v9, contentY:I
    packed-switch v7, :pswitch_data_0

    .line 5598
    .end local v7           #action:I
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    :cond_6
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5142
    .end local v14           #deltaX:I
    .end local v15           #deltaY:I
    .end local v19           #fDeltaX:F
    .end local v20           #fDeltaY:F
    .restart local v7       #action:I
    :cond_7
    const/4 v5, 0x6

    if-ne v7, v5, :cond_8

    .line 5144
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5145
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto :goto_1

    .line 5146
    :cond_8
    const/4 v5, 0x2

    if-ne v7, v5, :cond_3

    .line 5148
    const/4 v5, 0x0

    cmpg-float v5, v10, v5

    if-ltz v5, :cond_9

    const/4 v5, 0x0

    cmpg-float v5, v11, v5

    if-gez v5, :cond_3

    .line 5149
    :cond_9
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5154
    .end local v7           #action:I
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5157
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 5158
    .restart local v7       #action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 5159
    .restart local v10       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #y:F
    goto/16 :goto_1

    .line 5186
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    .restart local v14       #deltaX:I
    .restart local v15       #deltaY:I
    .restart local v19       #fDeltaX:F
    .restart local v20       #fDeltaY:F
    :pswitch_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5187
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5190
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_6

    .line 5194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_f

    .line 5198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5199
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5200
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5238
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_18

    .line 5240
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5244
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_15

    .line 5245
    :cond_e
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5252
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5253
    new-instance v27, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v27 .. v27}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5254
    .local v27, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5255
    move v0, v8

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5256
    move v0, v9

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5258
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 5261
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5262
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5263
    move v0, v10

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5264
    move v0, v11

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5202
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 5203
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    float-to-int v6, v10

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 5204
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    float-to-int v6, v11

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 5205
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5209
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeMoveSelection(IIZ)V

    .line 5210
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelection:Z

    .line 5211
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3

    .line 5212
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5214
    mul-int v5, v14, v14

    mul-int v6, v15, v15

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    move v6, v0

    if-ge v5, v6, :cond_11

    .line 5215
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_3

    .line 5218
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 5219
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5220
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_5
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x0

    goto :goto_5

    .line 5225
    :cond_13
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 5226
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5227
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_6
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 5230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x62

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5232
    sget-boolean v5, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v5, v0

    sub-long v5, v17, v5

    const-wide/16 v12, 0x3e8

    cmp-long v5, v5, v12

    if-gez v5, :cond_c

    .line 5233
    const v5, 0x111d6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide/from16 v21, v0

    sub-long v21, v17, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 5227
    :cond_14
    const/4 v5, 0x0

    goto :goto_6

    .line 5246
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_16

    .line 5247
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 5249
    :cond_16
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 5268
    .restart local v27       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5269
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_18

    .line 5270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .end local v8           #contentX:I
    .end local v9           #contentY:I
    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5276
    .end local v7           #action:I
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_18
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_2

    .line 5280
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_1
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_6

    .line 5283
    const/16 v21, 0x0

    .line 5284
    .local v21, firstMove:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-nez v5, :cond_19

    mul-int v5, v14, v14

    mul-int v6, v15, v15

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move v6, v0

    if-lt v5, v6, :cond_19

    .line 5286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5288
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5289
    const/16 v21, 0x1

    .line 5290
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_19

    .line 5291
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5295
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_1c

    if-nez v21, :cond_1a

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide v5, v0

    sub-long v5, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    move v12, v0

    int-to-long v12, v12

    cmp-long v5, v5, v12

    if-lez v5, :cond_1c

    .line 5297
    :cond_1a
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 5298
    new-instance v27, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v27 .. v27}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5299
    .restart local v27       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5300
    move v0, v8

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5301
    move v0, v9

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_1b

    .line 5305
    move v0, v10

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5306
    move v0, v11

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5310
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5311
    if-eqz v21, :cond_1c

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 5312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5317
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 5323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_1d

    .line 5324
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    .end local v7           #action:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5329
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5330
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_22

    .line 5331
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1e

    .line 5335
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeMoveSelection(IIZ)V

    .line 5336
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2

    .line 5339
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 5342
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_20

    .line 5346
    :cond_1f
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_2

    .line 5350
    :cond_20
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 5351
    .local v12, ax:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 5352
    .local v13, ay:I
    int-to-float v5, v12

    const/high16 v6, 0x3fc0

    int-to-float v7, v13

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_28

    .line 5353
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5354
    if-lez v14, :cond_27

    const/4 v5, 0x1

    :goto_7
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 5359
    :cond_21
    :goto_8
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5360
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5361
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5362
    const/16 v19, 0x0

    .line 5363
    const/16 v20, 0x0

    .line 5364
    const/4 v14, 0x0

    .line 5365
    const/4 v15, 0x0

    .line 5367
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 5370
    .end local v12           #ax:I
    .end local v13           #ay:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    if-eqz v5, :cond_23

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    invoke-virtual {v5, v10, v11}, Landroid/webkit/WebView$DragTrackerHandler;->dragTo(FF)V

    .line 5375
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    add-int/2addr v5, v14

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v25

    .line 5376
    .local v25, newScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    sub-int v23, v25, v5

    .line 5377
    .local v23, newDeltaX:I
    move v0, v14

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    .line 5378
    move/from16 v14, v23

    .line 5379
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 5381
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    add-int/2addr v5, v15

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v26

    .line 5382
    .local v26, newScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    sub-int v24, v26, v5

    .line 5383
    .local v24, newDeltaY:I
    move v0, v15

    move/from16 v1, v24

    if-eq v0, v1, :cond_25

    .line 5384
    move/from16 v15, v24

    .line 5385
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 5387
    :cond_25
    const/16 v16, 0x0

    .line 5388
    .local v16, done:Z
    const/16 v22, 0x0

    .line 5389
    .local v22, keepScrollBarsVisible:Z
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    .line 5390
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5391
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5392
    const/16 v16, 0x1

    move/from16 v22, v16

    .line 5451
    :goto_9
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 5453
    if-eqz v22, :cond_6

    .line 5454
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    .line 5455
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5456
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5459
    :cond_26
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 5463
    if-nez v16, :cond_37

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5354
    .end local v16           #done:Z
    .end local v22           #keepScrollBarsVisible:Z
    .end local v23           #newDeltaX:I
    .end local v24           #newDeltaY:I
    .end local v25           #newScrollX:I
    .end local v26           #newScrollY:I
    .restart local v12       #ax:I
    .restart local v13       #ay:I
    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 5355
    :cond_28
    int-to-float v5, v13

    const/high16 v6, 0x3fc0

    int-to-float v7, v12

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21

    .line 5356
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5357
    if-lez v15, :cond_29

    const/4 v5, 0x1

    :goto_a
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    goto/16 :goto_8

    :cond_29
    const/4 v5, 0x0

    goto :goto_a

    .line 5394
    .end local v12           #ax:I
    .end local v13           #ay:I
    .restart local v16       #done:Z
    .restart local v22       #keepScrollBarsVisible:Z
    .restart local v23       #newDeltaX:I
    .restart local v24       #newDeltaY:I
    .restart local v25       #newScrollX:I
    .restart local v26       #newScrollY:I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2d

    .line 5395
    :cond_2b
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 5396
    .restart local v12       #ax:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 5397
    .restart local v13       #ay:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_32

    .line 5399
    int-to-float v5, v13

    const/high16 v6, 0x3fc0

    int-to-float v7, v12

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2c

    const/16 v5, 0x50

    if-le v13, v5, :cond_2c

    .line 5401
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5404
    :cond_2c
    int-to-float v5, v12

    const/high16 v6, 0x3fc0

    int-to-float v7, v13

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    if-ge v14, v5, :cond_2d

    .line 5408
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5425
    .end local v12           #ax:I
    .end local v13           #ay:I
    :cond_2d
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    if-eqz v5, :cond_2e

    .line 5426
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    .line 5427
    const/4 v15, 0x0

    .line 5432
    :cond_2e
    :goto_d
    or-int v5, v14, v15

    if-eqz v5, :cond_36

    .line 5433
    if-eqz v14, :cond_2f

    .line 5434
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5436
    :cond_2f
    if-eqz v15, :cond_30

    .line 5437
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5439
    :cond_30
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5447
    :goto_e
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5448
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_9

    .line 5404
    .restart local v12       #ax:I
    .restart local v13       #ay:I
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    if-le v14, v5, :cond_2d

    goto :goto_b

    .line 5412
    :cond_32
    int-to-float v5, v12

    const/high16 v6, 0x3fc0

    int-to-float v7, v13

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_33

    const/16 v5, 0x50

    if-le v12, v5, :cond_33

    .line 5414
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5417
    :cond_33
    int-to-float v5, v13

    const/high16 v6, 0x3fc0

    int-to-float v7, v12

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    if-ge v15, v5, :cond_2d

    .line 5421
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto :goto_c

    .line 5417
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    if-le v15, v5, :cond_2d

    goto :goto_f

    .line 5429
    .end local v12           #ax:I
    .end local v13           #ay:I
    :cond_35
    const/4 v14, 0x0

    goto :goto_d

    .line 5443
    :cond_36
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5444
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5445
    const/16 v22, 0x1

    goto :goto_e

    .line 5463
    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5468
    .end local v16           #done:Z
    .end local v21           #firstMove:Z
    .end local v22           #keepScrollBarsVisible:Z
    .end local v23           #newDeltaX:I
    .end local v24           #newDeltaY:I
    .end local v25           #newScrollX:I
    .end local v26           #newScrollY:I
    .restart local v7       #action:I
    :pswitch_2
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_6

    .line 5472
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 5473
    new-instance v27, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v27 .. v27}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5474
    .restart local v27       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5475
    move v0, v8

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5476
    move v0, v9

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5477
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_38

    .line 5480
    move v0, v10

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5481
    move v0, v11

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5483
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5486
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_39
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 5487
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    packed-switch v5, :pswitch_data_1

    .line 5586
    .end local v7           #action:I
    :cond_3a
    :goto_10
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_2

    .line 5489
    .restart local v7       #action:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5491
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_3d

    .line 5492
    :cond_3b
    new-instance v27, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v27 .. v27}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5493
    .restart local v27       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x200

    move v0, v5

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5494
    move v0, v8

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5495
    move v0, v9

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5496
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5497
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_3c

    .line 5499
    move v0, v10

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5500
    move v0, v11

    move-object/from16 v1, v27

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5502
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_10

    .line 5503
    .end local v27           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3a

    .line 5504
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doDoubleTap()V

    .line 5505
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_10

    .line 5509
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->commitCopy()Z

    .line 5510
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelection:Z

    .line 5511
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_10

    .line 5516
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_41

    .line 5519
    const-string/jumbo v5, "webview"

    const-string v6, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_40

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    if-gtz v5, :cond_3e

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v5

    if-lez v5, :cond_40

    .line 5525
    :cond_3e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 5529
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 5532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5553
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5557
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide v5, v0

    sub-long v5, v17, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_43

    .line 5558
    .end local v7           #action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_3f

    .line 5559
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5569
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5570
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_10

    .line 5539
    .restart local v7       #action:I
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_10

    .line 5543
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_42

    .line 5544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    .end local v7           #action:I
    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10

    .line 5548
    .restart local v7       #action:I
    :cond_42
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_10

    .line 5574
    .end local v7           #action:I
    :cond_43
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5575
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5581
    :pswitch_8
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 5582
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 5583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_10

    .line 5590
    .restart local v7       #action:I
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_44

    .line 5591
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5593
    :cond_44
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 5594
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_2

    .line 5184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 5487
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v7, 0xc8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 5760
    .local v1, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 5761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 5762
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_1
    move v3, v5

    .line 5838
    :goto_0
    return v3

    .line 5765
    :cond_2
    iget-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v5

    .line 5767
    .local v0, shiftPressed:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_a

    .line 5768
    if-eqz v0, :cond_5

    move v3, v5

    .line 5769
    goto :goto_0

    .end local v0           #shiftPressed:Z
    :cond_4
    move v0, v6

    .line 5765
    goto :goto_1

    .line 5771
    .restart local v0       #shiftPressed:Z
    :cond_5
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5772
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_6

    move v3, v6

    .line 5773
    goto :goto_0

    .line 5775
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    :goto_2
    invoke-direct {p0, v3, v5, v5}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5776
    iget-wide v3, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v7

    if-gtz v3, :cond_7

    iget-object v3, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5778
    iget-object v3, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 5785
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_8
    move v3, v6

    .line 5786
    goto :goto_0

    :cond_9
    move v3, v6

    .line 5775
    goto :goto_2

    .line 5788
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_d

    .line 5790
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5791
    iput-boolean v6, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5792
    iput-wide v1, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 5793
    if-eqz v0, :cond_c

    .line 5794
    iget-boolean v3, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v3, :cond_b

    .line 5795
    invoke-direct {p0}, Landroid/webkit/WebView;->commitCopy()Z

    :goto_3
    move v3, v5

    .line 5800
    goto :goto_0

    .line 5797
    :cond_b
    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5798
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_3

    :cond_c
    move v3, v6

    .line 5807
    goto :goto_0

    .line 5809
    :cond_d
    iget-boolean v3, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v3, :cond_e

    move v3, v6

    .line 5811
    goto/16 :goto_0

    .line 5813
    :cond_e
    iget-boolean v3, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v3, :cond_f

    move v3, v5

    .line 5815
    goto/16 :goto_0

    .line 5817
    :cond_f
    iget-wide v3, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v7

    if-gez v3, :cond_10

    move v3, v5

    .line 5819
    goto/16 :goto_0

    .line 5822
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5823
    iget-wide v3, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_11

    .line 5828
    iput-wide v1, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 5829
    iput v6, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v6, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5831
    :cond_11
    iput-wide v1, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5835
    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5836
    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 5837
    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->doTrackball(J)V

    move v3, v5

    .line 5838
    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    .line 4576
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4577
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-eqz v0, :cond_0

    .line 4578
    if-eqz p1, :cond_1

    .line 4579
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 4585
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4587
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4593
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 4594
    return-void

    .line 4581
    :cond_1
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2067
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v4

    .line 2083
    :goto_0
    return v2

    .line 2070
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2071
    if-eqz p1, :cond_1

    .line 2072
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2075
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2077
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 2078
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 2082
    .local v1, y:I
    :goto_1
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2083
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2080
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2083
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2040
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v3

    .line 2057
    :goto_0
    return v2

    .line 2043
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2044
    if-eqz p1, :cond_1

    .line 2046
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2049
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2051
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 2052
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 2056
    .local v1, y:I
    :goto_1
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2057
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2054
    .end local v1           #y:I
    :cond_2
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2057
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 7020
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 7021
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 7022
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 7024
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 7025
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 7030
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7031
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 7033
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 2859
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2860
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 3631
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3640
    :goto_0
    return v0

    .line 3632
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3634
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 3635
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 3637
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3638
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v0

    goto :goto_0

    .line 3640
    :cond_2
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v0

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 1852
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1854
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 1855
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 1856
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 1857
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1858
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1860
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1864
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 1862
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 4005
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4077
    :cond_0
    :goto_0
    return-void

    .line 4008
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 4011
    .local v0, alreadyThere:Z
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4012
    :cond_2
    if-eqz v0, :cond_0

    .line 4013
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    .line 4019
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v8, :cond_4

    .line 4020
    new-instance v8, Landroid/webkit/WebTextView;

    iget-object v9, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 4022
    iput v13, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4024
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v13, v9}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4026
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 4027
    .local v7, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 4030
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4031
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 4032
    .local v6, vBox:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4033
    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4034
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 4036
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v5

    .line 4037
    .local v5, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v4

    .line 4039
    .local v4, nodePointer:I
    iput v4, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 4040
    if-eqz v0, :cond_7

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v4}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4048
    if-eqz v5, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTextGeneration()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne v8, v9, :cond_6

    .line 4050
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4076
    :cond_6
    :goto_1
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_0

    .line 4053
    :cond_7
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x5

    :goto_2
    invoke-virtual {v8, v9}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 4057
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v4}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 4059
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v3

    .line 4060
    .local v3, name:Ljava/lang/String;
    iput-object v3, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 4061
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v3}, Landroid/webkit/WebTextView;->setNodeName(Ljava/lang/String;)V

    .line 4063
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebTextView;->setType(I)V

    .line 4064
    if-nez v5, :cond_8

    .line 4068
    const-string v5, ""

    .line 4070
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4071
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4072
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4073
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #name:Ljava/lang/String;
    :cond_9
    move v9, v13

    .line 4053
    goto :goto_2
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3530
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 1935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1937
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1938
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1939
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1940
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3512
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3513
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 7010
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 7011
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 7012
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 7013
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 7014
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 7015
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 7016
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 7017
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 20
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 6892
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6895
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6900
    .local v5, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 6901
    iget v15, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    .line 6902
    .local v11, screenTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 6903
    .local v8, screenBottom:I
    sub-int v6, v8, v11

    .line 6904
    .local v6, height:I
    const/4 v13, 0x0

    .line 6906
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_3

    .line 6907
    div-int/lit8 v7, v6, 0x3

    .line 6908
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/lit8 v16, v7, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 6911
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    .line 6921
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    iget v15, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 6922
    .local v9, screenLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 6923
    .local v10, screenRight:I
    sub-int v14, v10, v9

    .line 6924
    .local v14, width:I
    const/4 v12, 0x0

    .line 6926
    .local v12, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 6927
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 6928
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 6936
    :cond_1
    :goto_1
    or-int v15, v13, v12

    if-eqz v15, :cond_7

    .line 6937
    if-nez p3, :cond_6

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v15

    .line 6940
    :goto_3
    return v15

    .line 6915
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    add-int v16, v11, v7

    sub-int v13, v15, v16

    goto :goto_0

    .line 6917
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_0

    .line 6918
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    goto :goto_0

    .line 6930
    .restart local v9       #screenLeft:I
    .restart local v10       #screenRight:I
    .restart local v12       #scrollXDelta:I
    .restart local v14       #width:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 6932
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_1

    .line 6933
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_1

    .line 6937
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 6940
    :cond_7
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 6805
    const/4 v6, 0x0

    .line 6806
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6807
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_0
    :goto_0
    move v7, v6

    .line 6837
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_1
    return v7

    .line 6810
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 6811
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6815
    const/4 v1, 0x0

    .line 6816
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    move v7, v6

    .line 6830
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_1

    .line 6818
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_0
    const/16 v1, 0x13

    .line 6832
    :goto_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6833
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    .line 6821
    :sswitch_1
    const/16 v1, 0x14

    .line 6822
    goto :goto_2

    .line 6824
    :sswitch_2
    const/16 v1, 0x15

    .line 6825
    goto :goto_2

    .line 6827
    :sswitch_3
    const/16 v1, 0x16

    .line 6828
    goto :goto_2

    .line 6816
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 4
    .parameter "hrefMsg"

    .prologue
    .line 2277
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return-void

    .line 2280
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x89

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "nodePointer"

    .prologue
    .line 4088
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4089
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4090
    .local v1, update:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 4091
    new-instance v2, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4093
    .local v2, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4094
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4096
    .end local v0           #t:Ljava/lang/Thread;
    .end local v1           #update:Landroid/os/Message;
    .end local v2           #updater:Landroid/webkit/WebView$RequestFormData;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2295
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 2303
    :goto_0
    return-void

    .line 2296
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2297
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2298
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2299
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2300
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2302
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 4105
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4107
    return-void
.end method

.method requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 8
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 8258
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 8259
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 8260
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 8268
    .local v5, action:I
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8270
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V
    .locals 8
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 8202
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 8203
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 8204
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 8211
    .local v5, action:I
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8213
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 5754
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5755
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 1719
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v4

    .line 1750
    :goto_0
    return v3

    .line 1722
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 1723
    goto :goto_0

    .line 1726
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1727
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1728
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$8;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1747
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1748
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 12
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 1768
    const/4 v6, 0x0

    .line 1769
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 1811
    :goto_0
    return-object v8

    .line 1772
    :cond_0
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1773
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1776
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1777
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1781
    .local v3, index:I
    monitor-enter v5

    .line 1782
    :try_start_0
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1784
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1787
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 1788
    :cond_1
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 1790
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 1791
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1792
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 1795
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 1797
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 1798
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 1790
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1801
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 1803
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 1804
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 1809
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_5
    move-object v8, v6

    .line 1811
    goto :goto_0

    .line 1804
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 2867
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2868
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1481
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"

    .prologue
    .line 1659
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1660
    :cond_0
    const/4 v2, 0x0

    .line 1688
    :goto_0
    return v2

    .line 1662
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1665
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$7;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1683
    const-string v2, "scrollX"

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1684
    const-string v2, "scrollY"

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1685
    const-string v2, "scale"

    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1686
    const-string/jumbo v2, "textwrapScale"

    iget v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1687
    const-string v2, "overview"

    iget-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1688
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v9, 0x0

    .line 1607
    if-nez p1, :cond_0

    move-object v7, v9

    .line 1647
    :goto_0
    return-object v7

    .line 1612
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1613
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1614
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 1617
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v7, v9

    .line 1618
    goto :goto_0

    .line 1620
    :cond_2
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1624
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1625
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1626
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 1627
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 1630
    const-string/jumbo v7, "webview"

    const-string v8, "saveState: Unexpected null history item."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 1631
    goto :goto_0

    .line 1633
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 1634
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v7, v9

    .line 1638
    goto :goto_0

    .line 1640
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1642
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1643
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 1644
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    move-object v7, v5

    .line 1647
    goto :goto_0
.end method

.method scrollFocusedTextInput(FI)V
    .locals 4
    .parameter "xPercent"
    .parameter "y"

    .prologue
    .line 6258
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 6267
    :cond_0
    :goto_0
    return-void

    .line 6261
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 8442
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 8443
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 8444
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 1466
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1467
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3361
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 3362
    return-void
.end method

.method public setDragTracker(Landroid/webkit/WebView$DragTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 5010
    iput-object p1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    .line 5011
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2354
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2368
    :goto_0
    return-void

    .line 2355
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2356
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2358
    :cond_1
    if-eqz p1, :cond_2

    .line 2359
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2362
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2363
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080356

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    .line 2367
    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public setFindDialogHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3101
    iput p1, p0, Landroid/webkit/WebView;->mFindHeight:I

    .line 3102
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 3
    .parameter "isUp"

    .prologue
    .line 2998
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 2999
    if-eqz p1, :cond_0

    .line 3000
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3003
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 3005
    :goto_0
    return-void

    .line 3004
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method setFocusControllerInactive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4605
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4607
    :goto_0
    return-void

    .line 4606
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 4649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 4650
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 4657
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 4659
    :cond_0
    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1378
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1379
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1495
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .parameter "scaleInPercent"

    .prologue
    .line 2168
    iput p1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 2169
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1569
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1570
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 3620
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3621
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 3623
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3624
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 5750
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 5751
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 1579
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1581
    return-void

    :cond_0
    move v2, v3

    .line 1579
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1589
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1592
    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3421
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 3422
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1364
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1366
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1370
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1371
    return-void

    .line 1368
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3945
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3946
    return-void
.end method

.method public setTextSelectionColor(III)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 1084
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeSetTextSelectionColor(III)V

    goto :goto_0
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 8469
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 8470
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1386
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1387
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3404
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 3405
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3371
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3372
    return-void
.end method

.method public setWebTextSelectionListener(Landroid/webkit/WebView$WebTextSelectionListener;)V
    .locals 0
    .parameter "Listener"

    .prologue
    .line 1055
    iput-object p1, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 1056
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3341
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3342
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 1927
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1928
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1929
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3893
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 3911
    :cond_0
    :goto_0
    return-void

    .line 3894
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3895
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 3896
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3897
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3898
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3899
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3900
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3901
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3902
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 3903
    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 3904
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3906
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 3908
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 6293
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 6301
    :goto_0
    return v1

    .line 6296
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 6297
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getTop()I

    move-result v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6299
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6300
    .local v0, result:Z
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    move v1, v0

    .line 6301
    goto :goto_0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 6310
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6316
    :goto_0
    return-void

    .line 6313
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6314
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6315
    .local v1, y:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedText"

    .prologue
    .line 8479
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 8480
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .locals 7
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 1292
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1294
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1295
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 1297
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1298
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1299
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1300
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1301
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1302
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1303
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1304
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 1306
    .end local v1           #scaleFactor:F
    :cond_0
    return-void
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1225
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1234
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    .line 1236
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v1, :cond_1

    .line 1237
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Landroid/webkit/WebView$ScaleDetectorListener;

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    .line 1240
    iput-object v3, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_0
.end method

.method viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2377
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2386
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 2403
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 2395
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 2412
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 6215
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6218
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6219
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6220
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6221
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6222
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 6231
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6233
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6234
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6235
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6236
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6237
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    move-result v0

    return v0
.end method
