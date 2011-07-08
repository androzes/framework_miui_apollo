.class public Lcom/android/server/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$FadeInOutAnimation;,
        Lcom/android/server/WindowManagerService$DimAnimator;,
        Lcom/android/server/WindowManagerService$H;,
        Lcom/android/server/WindowManagerService$StartingData;,
        Lcom/android/server/WindowManagerService$DummyAnimation;,
        Lcom/android/server/WindowManagerService$AppWindowToken;,
        Lcom/android/server/WindowManagerService$WindowToken;,
        Lcom/android/server/WindowManagerService$WindowState;,
        Lcom/android/server/WindowManagerService$Session;,
        Lcom/android/server/WindowManagerService$InputDispatcherThread;,
        Lcom/android/server/WindowManagerService$KeyQ;,
        Lcom/android/server/WindowManagerService$KeyWaiter;,
        Lcom/android/server/WindowManagerService$PolicyThread;,
        Lcom/android/server/WindowManagerService$WMThread;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field private static final CHEEK_THRESHOLD:F = 0.6f

.field static final DEBUG:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_FREEZE:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DIM_DURATION_MULTIPLIER:I = 0x6

.field private static final EVENT_CHEEK:I = 0x0

.field private static final EVENT_IGNORE_DURATION:I = 0x12c

.field private static final EVENT_NONE:I = 0x0

.field private static final EVENT_UNKNOWN:I = 0x0

.field static final HIDE_STACK_CRAWLS:Z = true

.field static final INJECT_FAILED:I = 0x0

.field static final INJECT_NO_PERMISSION:I = -0x1

.field static final INJECT_SUCCEEDED:I = 0x1

.field static final KEY_REPEAT_DELAY:I = 0x32

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final MEASURE_LATENCY:Z = false

.field static final MIN_TIME_BETWEEN_USERACTIVITIES:I = 0x3e8

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field private static lt:Landroid/os/LatencyTimer;

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field private mAllowDisableKeyguard:I

.field mAnimationPending:Z

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBackgroundFillerShown:Z

.field mBackgroundFillerSurface:Landroid/view/Surface;

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mCompatibleScreenFrame:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field private mEventSize:F

.field private mEventState:I

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFatTouch:Z

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFreezeGcPending:J

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/WindowManagerService$H;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

.field final mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastBatteryStatsCallTime:J

.field mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

.field mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

.field mLastRotationFlags:I

.field mLastTouchEventTime:J

.field mLastTouchEventType:I

.field mLastUserActivityCallTime:J

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mMinWaitTimeBetweenTouchEvents:I

.field mMouseSurface:Landroid/view/Surface;

.field mMx:I

.field mMy:I

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mQueue:Lcom/android/server/WindowManagerService$KeyQ;

.field mRequestedRotation:I

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenLayout:I

.field mSendingPointersToWallpaper:Z

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/WindowManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowMouse:I

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTempRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field private mViewServer:Lcom/android/server/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowAnimationScale:F

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9016
    new-instance v0, Lcom/android/server/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .locals 7
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 624
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 218
    const/16 v4, 0x1c

    iput v4, p0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    .line 221
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    .line 224
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 231
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 234
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    .line 245
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    .line 250
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 252
    new-instance v4, Lcom/android/server/WindowManagerService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const-string v6, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/WindowManagerService$1;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 271
    new-instance v4, Lcom/android/server/WindowManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$2;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 298
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 304
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 309
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 335
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 365
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 370
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 381
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 392
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 398
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mShowMouse:I

    .line 403
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 405
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 408
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    .line 409
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 410
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 411
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 412
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 413
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 414
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 416
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 419
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 420
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 421
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 422
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 423
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 424
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 425
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 427
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 432
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 444
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 448
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 449
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 450
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 451
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 452
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 454
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 455
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 456
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 459
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 462
    new-instance v4, Lcom/android/server/WindowManagerService$H;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$H;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    .line 464
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 465
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 469
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 470
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 474
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 475
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 477
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 481
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 484
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 487
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 489
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 490
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 491
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 492
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 493
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z

    .line 504
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 508
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 509
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 511
    new-instance v4, Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$KeyWaiter;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    .line 524
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 528
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 530
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 531
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 534
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    .line 536
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    .line 537
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    .line 5061
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mEventState:I

    .line 9543
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 629
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 630
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 634
    iput-object p2, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 635
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 636
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 637
    .local v2, pmc:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "SCREEN_FROZEN"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 639
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 641
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 642
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 651
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 652
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 655
    const/16 v1, 0x23

    .line 657
    .local v1, max_events_per_sec:I
    :try_start_0
    const-string v4, "windowsmgr.max_events_per_sec"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 659
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 660
    const/16 v1, 0x23

    .line 664
    :cond_0
    :goto_0
    const/16 v4, 0x3e8

    div-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    .line 666
    new-instance v4, Lcom/android/server/WindowManagerService$KeyQ;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$KeyQ;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    .line 668
    new-instance v4, Lcom/android/server/WindowManagerService$InputDispatcherThread;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$InputDispatcherThread;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

    .line 670
    new-instance v3, Lcom/android/server/WindowManagerService$PolicyThread;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v3, v4, p0, p1, p2}, Lcom/android/server/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 671
    .local v3, thr:Lcom/android/server/WindowManagerService$PolicyThread;
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$PolicyThread;->start()V

    .line 673
    monitor-enter v3

    .line 674
    :goto_1
    :try_start_1
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 676
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 677
    :catch_0
    move-exception v4

    goto :goto_1

    .line 680
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 682
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$InputDispatcherThread;->start()V

    .line 685
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 686
    return-void

    .line 680
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 662
    .end local v3           #thr:Lcom/android/server/WindowManagerService$PolicyThread;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->wakeupIfNeeded(Lcom/android/server/WindowManagerService$WindowState;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->eventType(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->dispatchKey(Landroid/view/KeyEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/WindowManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V
    .locals 28
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 738
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    .line 739
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v20, v0

    .line 740
    .local v20, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 742
    .local v14, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 743
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v8, v0

    .line 745
    .local v8, attached:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_12

    .line 746
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 747
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 748
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .line 749
    .local v12, index:I
    if-ltz v12, :cond_5

    .line 753
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 755
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 756
    const/16 v21, 0x0

    .line 874
    .end local v3           #N:I
    .end local v12           #index:I
    .end local p0
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 875
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 930
    .end local v21           #tokenWindowsPos:I
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    if-eqz p2, :cond_2

    .line 931
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_2
    return-void

    .line 758
    .restart local v3       #N:I
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    .restart local p0
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v7, v0

    .line 759
    .local v7, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v7, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 761
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 762
    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    .line 764
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I

    move-result v16

    .line 765
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 773
    add-int/lit8 v26, v16, 0x1

    move-object v0, v14

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 783
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v16           #newIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 784
    .local v4, NA:I
    const/16 v17, 0x0

    .line 785
    .local v17, pos:Ljava/lang/Object;
    const/16 v26, 0x1

    sub-int v11, v4, v26

    .local v11, i:I
    move-object/from16 v4, v17

    .end local v4           #NA:I
    .end local v17           #pos:Ljava/lang/Object;
    :goto_2
    if-ltz v11, :cond_6

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 787
    .local v19, t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 788
    add-int/lit8 v11, v11, -0x1

    .line 802
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_6
    if-eqz v4, :cond_9

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    .end local v3           #N:I
    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 806
    .local v7, atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_1e

    .line 807
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 808
    .local v5, NC:I
    if-lez v5, :cond_1e

    .line 809
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 810
    .local v9, bottom:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v9

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_1e

    .line 811
    move-object/from16 v17, v9

    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v26, v17

    .line 815
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_0

    .line 795
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_7
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_1f

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_1f

    .line 796
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, pos:Ljava/lang/Object;
    move-object/from16 v26, v17

    .line 785
    .end local v17           #pos:Ljava/lang/Object;
    :goto_4
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, v26

    goto/16 :goto_2

    .line 826
    .local v6, NW:I
    :cond_8
    add-int/lit8 v11, v11, -0x1

    .line 819
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_9
    if-ltz v11, :cond_a

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 821
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 822
    .restart local v6       #NW:I
    if-lez v6, :cond_8

    .line 823
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .restart local v17       #pos:Ljava/lang/Object;
    move-object/from16 v4, v17

    .line 828
    .end local v6           #NW:I
    .end local v17           #pos:Ljava/lang/Object;
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_a
    if-eqz v4, :cond_b

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    .end local v3           #N:I
    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 833
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_1d

    .line 834
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 835
    .restart local v5       #NC:I
    if-lez v5, :cond_1d

    .line 836
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowState;

    .line 837
    .local v22, top:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_1d

    .line 838
    move-object/from16 v17, v22

    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v26, v17

    .line 842
    .end local v5           #NC:I
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    .end local v22           #top:Lcom/android/server/WindowManagerService$WindowState;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_0

    .line 845
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 846
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v3, :cond_c

    .line 847
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 848
    .local v23, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_d

    .line 855
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 846
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 861
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 862
    .restart local v15       #myLayer:I
    const/16 v26, 0x1

    sub-int v11, v3, v26

    .end local p0
    .restart local v11       #i:I
    :goto_7
    if-ltz v11, :cond_f

    .line 863
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-gt v0, v1, :cond_11

    .line 864
    add-int/lit8 v11, v11, 0x1

    .line 868
    :cond_f
    if-gez v11, :cond_10

    const/4 v11, 0x0

    .line 872
    :cond_10
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 862
    :cond_11
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 881
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    .restart local p0
    :cond_12
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 882
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 883
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 884
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 885
    .local v25, windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_8
    if-ge v11, v4, :cond_15

    .line 886
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 887
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 888
    .local v24, wSublayer:I
    move/from16 v0, v24

    move v1, v13

    if-lt v0, v1, :cond_13

    .line 889
    move/from16 v13, v24

    .line 890
    move-object/from16 v25, v23

    .line 892
    :cond_13
    if-gez v18, :cond_18

    .line 895
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    .line 896
    if-eqz p2, :cond_14

    .line 897
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 899
    :cond_14
    if-ltz v24, :cond_17

    move-object/from16 v26, v8

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 915
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_15
    :goto_a
    if-lt v11, v4, :cond_1

    .line 916
    if-eqz p2, :cond_16

    .line 917
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_16
    if-gez v18, :cond_1b

    .line 920
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1

    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #wSublayer:I
    :cond_17
    move-object/from16 v26, v23

    .line 899
    goto :goto_9

    .line 906
    :cond_18
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    .line 907
    if-eqz p2, :cond_19

    .line 908
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 910
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_a

    .line 885
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 922
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_1b
    if-ltz v13, :cond_1c

    move-object/from16 v26, v25

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v26, v8

    goto :goto_b

    .end local v3           #N:I
    .end local v4           #NA:I
    .end local v13           #largestSublayer:I
    .end local v18           #sublayer:I
    .end local v25           #windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_1d
    move-object/from16 v26, v4

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v26, v4

    goto/16 :goto_3

    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1f
    move-object/from16 v26, v4

    goto/16 :goto_4
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .locals 4
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 2800
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2802
    if-eqz p2, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2803
    new-instance v0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;

    invoke-direct {v0, p4}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;-><init>(Z)V

    .line 2869
    .local v0, a:Landroid/view/animation/Animation;
    :goto_0
    if-eqz v0, :cond_0

    .line 2878
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2884
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    :goto_1
    iget-object v2, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 2806
    :cond_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2807
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_2

    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_0

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_3

    .line 2810
    :cond_3
    const/4 v1, 0x0

    .line 2811
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_0

    .line 2863
    :goto_4
    if-eqz v1, :cond_e

    invoke-direct {p0, p2, v1}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v0, v2

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_5
    goto :goto_0

    .line 2813
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p4, :cond_4

    const/4 v2, 0x4

    move v1, v2

    .line 2816
    :goto_6
    goto :goto_4

    .line 2813
    :cond_4
    const/4 v2, 0x5

    move v1, v2

    goto :goto_6

    .line 2818
    :sswitch_1
    if-eqz p4, :cond_5

    const/4 v2, 0x6

    move v1, v2

    .line 2821
    :goto_7
    goto :goto_4

    .line 2818
    :cond_5
    const/4 v2, 0x7

    move v1, v2

    goto :goto_7

    .line 2823
    :sswitch_2
    if-eqz p4, :cond_6

    const/16 v2, 0x8

    move v1, v2

    .line 2826
    :goto_8
    goto :goto_4

    .line 2823
    :cond_6
    const/16 v2, 0x9

    move v1, v2

    goto :goto_8

    .line 2828
    :sswitch_3
    if-eqz p4, :cond_7

    const/16 v2, 0xa

    move v1, v2

    .line 2831
    :goto_9
    goto :goto_4

    .line 2828
    :cond_7
    const/16 v2, 0xb

    move v1, v2

    goto :goto_9

    .line 2833
    :sswitch_4
    if-eqz p4, :cond_8

    const/16 v2, 0xc

    move v1, v2

    .line 2836
    :goto_a
    goto :goto_4

    .line 2833
    :cond_8
    const/16 v2, 0xd

    move v1, v2

    goto :goto_a

    .line 2838
    :sswitch_5
    if-eqz p4, :cond_9

    const/16 v2, 0xe

    move v1, v2

    .line 2841
    :goto_b
    goto :goto_4

    .line 2838
    :cond_9
    const/16 v2, 0xf

    move v1, v2

    goto :goto_b

    .line 2843
    :sswitch_6
    if-eqz p4, :cond_a

    const/16 v2, 0x10

    move v1, v2

    .line 2846
    :goto_c
    goto :goto_4

    .line 2843
    :cond_a
    const/16 v2, 0x11

    move v1, v2

    goto :goto_c

    .line 2848
    :sswitch_7
    if-eqz p4, :cond_b

    const/16 v2, 0x12

    move v1, v2

    .line 2851
    :goto_d
    goto :goto_4

    .line 2848
    :cond_b
    const/16 v2, 0x13

    move v1, v2

    goto :goto_d

    .line 2853
    :sswitch_8
    if-eqz p4, :cond_c

    const/16 v2, 0x14

    move v1, v2

    .line 2856
    :goto_e
    goto :goto_4

    .line 2853
    :cond_c
    const/16 v2, 0x15

    move v1, v2

    goto :goto_e

    .line 2858
    :sswitch_9
    if-eqz p4, :cond_d

    const/16 v2, 0x16

    move v1, v2

    :goto_f
    goto :goto_4

    :cond_d
    const/16 v2, 0x17

    move v1, v2

    goto :goto_f

    .line 2863
    :cond_e
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_5

    .line 2881
    .end local v1           #animAttr:I
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    goto/16 :goto_1

    .line 2884
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2811
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .locals 5
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v4, 0x1

    .line 2704
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-ne v3, p3, :cond_0

    move v3, v4

    .line 2759
    :goto_0
    return v3

    .line 2714
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2715
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2716
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2717
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2718
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_3

    .line 2719
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2743
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2752
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2753
    iput-boolean p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    .line 2759
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_2
    :goto_2
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_0

    .line 2721
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 2735
    :goto_3
    if-ltz v2, :cond_1

    .line 2736
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v2}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 2723
    :sswitch_0
    const/4 v2, 0x0

    .line 2724
    goto :goto_3

    .line 2726
    :sswitch_1
    const/4 v2, 0x1

    .line 2727
    goto :goto_3

    .line 2729
    :sswitch_2
    const/4 v2, 0x2

    .line 2730
    goto :goto_3

    .line 2732
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    .line 2756
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2

    .line 2759
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 2721
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_3
    .end sparse-switch
.end method

.method private applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 2693
    const/16 v0, 0x1003

    .line 2694
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_0

    .line 2695
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2696
    const/16 v0, 0x1001

    .line 2699
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2700
    return-void
.end method

.method private final assignLayersLocked()V
    .locals 7

    .prologue
    .line 9509
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9510
    .local v0, N:I
    const/4 v1, 0x0

    .line 9511
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 9514
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 9515
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 9516
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v5, :cond_0

    if-lez v3, :cond_2

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_2

    .line 9518
    :cond_0
    add-int/lit8 v2, v2, 0x5

    .line 9519
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 9524
    :goto_1
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_3

    .line 9525
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 9531
    :goto_2
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_5

    .line 9532
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 9514
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9521
    :cond_2
    iget v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v1, v2

    .line 9522
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    goto :goto_1

    .line 9526
    :cond_3
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_4

    .line 9527
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2

    .line 9529
    :cond_4
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2

    .line 9533
    :cond_5
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_1

    .line 9534
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_3

    .line 9541
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 3
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 936
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 938
    .local v0, fl:I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 941
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 11160
    const/4 v4, 0x0

    .line 11163
    .local v4, result:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .line 11164
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v8

    .line 11165
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v1, v7

    .line 11168
    .local v1, nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_0
    if-ltz v0, :cond_6

    .line 11169
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 11177
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 11180
    .local v5, thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_1

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v7, :cond_1

    .line 11181
    add-int/lit8 v0, v0, -0x1

    .line 11182
    goto :goto_0

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    move-object v1, v9

    .line 11165
    goto :goto_0

    .line 11188
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-eq v5, v1, :cond_5

    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 11190
    move v3, v2

    .line 11191
    .local v3, origAppIndex:I
    :cond_2
    if-lez v2, :cond_4

    .line 11192
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v1, v7, :cond_3

    move-object v7, v9

    .line 11225
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    return-object v7

    .line 11199
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 11200
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11201
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    if-ne v1, v5, :cond_2

    .line 11205
    :cond_4
    if-eq v5, v1, :cond_5

    .line 11209
    move v2, v3

    .line 11210
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11215
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 11218
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    move-object v7, v4

    .line 11225
    goto :goto_1

    .line 11222
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 11223
    goto :goto_0
.end method

.method private dispatchKey(Landroid/view/KeyEvent;II)I
    .locals 12
    .parameter "event"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 5427
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v11

    .line 5429
    .local v11, focusObj:Ljava/lang/Object;
    if-nez v11, :cond_0

    .line 5430
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No focus window, dropping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    const/4 v1, 0x0

    .line 5493
    :goto_0
    return v1

    .line 5433
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    if-ne v11, v1, :cond_1

    .line 5434
    const/4 v1, 0x1

    goto :goto_0

    .line 5443
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$KeyQ;->hasKeyUpEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5444
    const/4 v1, 0x1

    goto :goto_0

    .line 5447
    :cond_2
    move-object v0, v11

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v10, v0

    .line 5452
    .local v10, focus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz p3, :cond_3

    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v1, v1, Lcom/android/server/WindowManagerService$Session;->mUid:I

    if-eq p3, v1, :cond_3

    .line 5453
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INJECT_EVENTS"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    .line 5456
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: injecting key event from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v3, v3, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    const/4 v1, -0x1

    goto :goto_0

    .line 5463
    :cond_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5464
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 5465
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5468
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1, p1, v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->recordDispatchState(Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 5474
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_4

    .line 5475
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dsptch key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    :goto_1
    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1}, Landroid/view/IWindow;->dispatchKey(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5482
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5465
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5478
    :cond_4
    :try_start_3
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dsptch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 5483
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 5484
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WINDOW DIED during key dispatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5486
    :try_start_4
    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v2, v10, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5493
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 5487
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 29
    .parameter "qev"
    .parameter "ev"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v28

    .line 5111
    .local v28, targetObj:Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 5113
    .local v13, action:I
    const/4 v5, 0x1

    if-ne v13, v5, :cond_3

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService;->logPointerUpEvent()V

    .line 5121
    :cond_0
    :goto_0
    if-nez v28, :cond_4

    .line 5127
    const/4 v5, 0x2

    if-eq v13, v5, :cond_1

    .line 5128
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No window to dispatch pointer action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 5131
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5132
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5133
    if-eqz p1, :cond_2

    .line 5134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5136
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5137
    const/4 v5, 0x0

    .line 5346
    :goto_1
    return v5

    .line 5117
    :cond_3
    if-nez v13, :cond_0

    .line 5118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService;->logPointerDownEvent()V

    goto :goto_0

    .line 5132
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 5139
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_6

    .line 5140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 5141
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5142
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5143
    if-eqz p1, :cond_5

    .line 5144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5146
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5147
    const/4 v5, 0x1

    goto :goto_1

    .line 5142
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 5150
    :cond_6
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v6, v0

    .line 5152
    .local v6, target:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    .line 5153
    .local v16, eventTime:J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v18

    .line 5157
    .local v18, eventTimeNano:J
    if-eqz p4, :cond_8

    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v5, v5, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_8

    .line 5158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v7, "android.permission.INJECT_EVENTS"

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_8

    .line 5161
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission denied: injecting pointer event from pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    iget v6, v6, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    if-eqz p1, :cond_7

    .line 5165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5167
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5168
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 5176
    .restart local v6       #target:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, 0x8000

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isCheekPressedAgainstScreen(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 5181
    .local v14, cheekPress:Z
    const/16 v27, 0x0

    .line 5182
    .local v27, returnFlag:Z
    if-nez v13, :cond_b

    .line 5183
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 5184
    if-eqz v14, :cond_9

    .line 5185
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 5186
    const/16 v27, 0x1

    .line 5216
    :cond_9
    :goto_2
    if-eqz v27, :cond_f

    .line 5218
    if-eqz p1, :cond_a

    .line 5219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5221
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5222
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 5189
    :cond_b
    const/4 v5, 0x1

    if-ne v13, v5, :cond_d

    .line 5190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    move v5, v0

    if-eqz v5, :cond_c

    .line 5192
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 5193
    const/16 v27, 0x1

    goto :goto_2

    .line 5194
    :cond_c
    if-eqz v14, :cond_9

    .line 5196
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5197
    const/4 v13, 0x3

    goto :goto_2

    .line 5199
    :cond_d
    const/4 v5, 0x2

    if-ne v13, v5, :cond_9

    .line 5200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 5204
    const/16 v27, 0x1

    goto :goto_2

    .line 5205
    :cond_e
    if-eqz v14, :cond_9

    .line 5208
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5209
    const/4 v13, 0x3

    .line 5212
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    goto :goto_2

    .line 5244
    .end local v14           #cheekPress:Z
    .end local v27           #returnFlag:Z
    :cond_f
    const/4 v5, 0x2

    if-ne v13, v5, :cond_10

    .line 5245
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    move v5, v0

    int-to-long v9, v5

    add-long v21, v7, v9

    .line 5246
    .local v21, nextEventTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 5247
    .local v23, now:J
    cmp-long v5, v23, v21

    if-gez v5, :cond_12

    .line 5249
    sub-long v7, v21, v23

    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5252
    :goto_3
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    .line 5262
    .end local v21           #nextEventTime:J
    .end local v23           #now:J
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 5263
    :try_start_5
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_13

    .line 5266
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    move-result-wide v9

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5267
    if-eqz p1, :cond_11

    .line 5268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5270
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5271
    const/4 v5, 0x1

    monitor-exit v12

    goto/16 :goto_1

    .line 5305
    :catchall_2
    move-exception v5

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 5254
    .restart local v6       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #nextEventTime:J
    .restart local v23       #now:J
    :cond_12
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    goto :goto_4

    .line 5274
    .end local v21           #nextEventTime:J
    .end local v23           #now:J
    :cond_13
    if-eqz p1, :cond_15

    const/4 v5, 0x2

    if-ne v13, v5, :cond_15

    .line 5275
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v7, 0x1

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5277
    const/16 p2, 0x0

    .line 5305
    :goto_5
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5315
    const/4 v5, 0x2

    if-eq v13, v5, :cond_14

    .line 5316
    :try_start_7
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v5

    if-nez v5, :cond_18

    .line 5317
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dsptch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    :cond_14
    :goto_6
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, p2

    move-wide/from16 v2, v16

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;JZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 5335
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 5279
    :cond_15
    if-nez v13, :cond_17

    .line 5280
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5281
    .local v26, out:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v26, :cond_17

    .line 5282
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v25

    .line 5283
    .local v25, oev:Landroid/view/MotionEvent;
    const/4 v5, 0x4

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5285
    :cond_16
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 5286
    .local v20, frame:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    neg-float v5, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    neg-float v7, v7

    move-object/from16 v0, v25

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5288
    :try_start_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v5, v0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-wide/from16 v2, v16

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;JZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 5292
    :goto_7
    :try_start_a
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, v25

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5293
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5294
    if-nez v26, :cond_16

    .line 5295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    .line 5299
    .end local v20           #frame:Landroid/graphics/Rect;
    .end local v25           #oev:Landroid/view/MotionEvent;
    .end local v26           #out:Lcom/android/server/WindowManagerService$WindowState;
    :cond_17
    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5301
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 5302
    .restart local v20       #frame:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    neg-float v5, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    neg-float v7, v7

    move-object/from16 v0, p2

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_5

    .line 5289
    .restart local v25       #oev:Landroid/view/MotionEvent;
    .restart local v26       #out:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 5290
    .local v15, e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WINDOW DIED during outside motion dispatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    .line 5320
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v20           #frame:Landroid/graphics/Rect;
    .end local v25           #oev:Landroid/view/MotionEvent;
    .end local v26           #out:Lcom/android/server/WindowManagerService$WindowState;
    :cond_18
    :try_start_b
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dsptch > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_6

    .line 5336
    :catch_1
    move-exception v5

    move-object v15, v5

    .line 5337
    .restart local v15       #e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WINDOW DIED during motion dispatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5340
    :try_start_c
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v6, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_c} :catch_3

    .line 5346
    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 5250
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v6       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #nextEventTime:J
    .restart local v23       #now:J
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 5341
    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    .end local v21           #nextEventTime:J
    .end local v23           #now:J
    .restart local v15       #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    goto :goto_8
.end method

.method private dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 18
    .parameter "qev"
    .parameter "ev"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 5356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v17

    .line 5358
    .local v17, focusObj:Ljava/lang/Object;
    if-nez v17, :cond_1

    .line 5359
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No focus window, dropping trackball: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5360
    if-eqz p1, :cond_0

    .line 5361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5363
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5364
    const/4 v5, 0x0

    .line 5418
    :goto_0
    return v5

    .line 5366
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_3

    .line 5367
    if-eqz p1, :cond_2

    .line 5368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5370
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5371
    const/4 v5, 0x1

    goto :goto_0

    .line 5374
    :cond_3
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v16, v0

    .line 5376
    .local v16, focus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz p4, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 5377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "android.permission.INJECT_EVENTS"

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_5

    .line 5380
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied: injecting key event from pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v7, v0

    iget v7, v7, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    if-eqz p1, :cond_4

    .line 5384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5386
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5387
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 5391
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 5393
    .local v14, eventTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5394
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 5395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    const/4 v7, 0x2

    move-object v0, v6

    move-object/from16 v1, v16

    move v2, v7

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5399
    const/16 p2, 0x0

    .line 5403
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5406
    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p2

    move-wide v2, v14

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindow;->dispatchTrackball(Landroid/view/MotionEvent;JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5407
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5401
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_1

    .line 5403
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 5408
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 5409
    .local v13, e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WINDOW DIED during key dispatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5418
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5412
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private eventType(Landroid/view/MotionEvent;)I
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const v4, 0x3f19999a

    .line 5065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    .line 5066
    .local v2, size:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5089
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 5068
    :pswitch_0
    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5069
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v9

    goto :goto_0

    .line 5071
    :pswitch_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5072
    :cond_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    .line 5074
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 5075
    .local v0, N:I
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5076
    :cond_3
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    move v3, v5

    goto :goto_0

    .line 5077
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 5078
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v2

    .line 5079
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5080
    :cond_5
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    move v3, v5

    goto :goto_0

    .line 5077
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5082
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    move v3, v9

    .line 5083
    goto :goto_0

    .line 5085
    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    .line 5066
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I
    .locals 7
    .parameter "win"

    .prologue
    const/4 v6, -0x1

    .line 723
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 724
    .local v2, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 725
    .local v1, jmax:I
    if-nez v1, :cond_0

    move v4, v6

    .line 734
    :goto_0
    return v4

    .line 728
    :cond_0
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_2

    .line 729
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 730
    .local v3, wentry:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v4, v5, :cond_1

    move v4, v0

    .line 731
    goto :goto_0

    .line 728
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v3           #wentry:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    move v4, v6

    .line 734
    goto :goto_0
.end method

.method private findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    .locals 6
    .parameter "hashCode"

    .prologue
    .line 4909
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 4910
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    .line 4925
    :goto_0
    return-object v4

    .line 4913
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4914
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 4915
    .local v3, windows:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4917
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 4918
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4919
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 4920
    monitor-exit v4

    move-object v4, v2

    goto :goto_0

    .line 4917
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4923
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    monitor-exit v4

    .line 4925
    const/4 v4, 0x0

    goto :goto_0

    .line 4923
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #windows:Ljava/util/ArrayList;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private findWindowOffsetLocked(I)I
    .locals 10
    .parameter "tokenPos"

    .prologue
    const/4 v9, 0x1

    .line 3962
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3964
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 3965
    move v2, v0

    .line 3966
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 3967
    add-int/lit8 v2, v2, -0x1

    .line 3968
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3969
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3970
    add-int/lit8 v7, v2, 0x1

    .line 4015
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v7

    .line 3975
    :cond_1
    :goto_1
    if-lez p1, :cond_9

    .line 3978
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    sub-int v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3981
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    .line 3984
    add-int/lit8 p1, p1, -0x1

    .line 3985
    goto :goto_1

    .line 3987
    :cond_2
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3988
    .restart local v2       #i:I
    :cond_3
    if-lez v2, :cond_8

    .line 3989
    add-int/lit8 v2, v2, -0x1

    .line 3990
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3991
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3992
    .local v3, j:I
    :cond_4
    if-lez v3, :cond_6

    .line 3993
    add-int/lit8 v3, v3, -0x1

    .line 3994
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 3995
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v7, :cond_4

    .line 3996
    sub-int v4, v0, v9

    .local v4, pos:I
    :goto_2
    if-ltz v4, :cond_4

    .line 3997
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    .line 4000
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 3996
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4005
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #pos:I
    :cond_6
    sub-int v4, v0, v9

    .restart local v4       #pos:I
    :goto_3
    if-ltz v4, :cond_3

    .line 4006
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    .line 4008
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4005
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 4012
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 4013
    goto :goto_1

    .line 4015
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static fixScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 4346
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    .line 4348
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4347
    :cond_1
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 p0, 0x41a0

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4
    .parameter "lp"

    .prologue
    .line 2660
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 2664
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v0, v2

    .line 2665
    .local v0, packageName:Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2666
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 2667
    const-string v0, "android"

    .line 2671
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2674
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_1
    return-object v2

    .line 2664
    :cond_1
    const-string v2, "android"

    move-object v0, v2

    goto :goto_0

    .line 2674
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 2
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2680
    if-eqz p1, :cond_1

    .line 2681
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 2682
    const-string p1, "android"

    .line 2686
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2689
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;
    .locals 2

    .prologue
    .line 5635
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5636
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .locals 1

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method private isSystemSecure()Z
    .locals 4

    .prologue
    const-string v3, "1"

    const-string v2, "0"

    .line 4725
    const-string v0, "1"

    const-string v0, "ro.secure"

    const-string v1, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 2763
    const/4 v0, 0x0

    .line 2764
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2765
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 2766
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2767
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 2768
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2769
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2772
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 2773
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2775
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2779
    const/4 v0, 0x0

    .line 2780
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2781
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 2782
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2783
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 2784
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2785
    move v0, p2

    .line 2788
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 2789
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2791
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static logSurface(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 4
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    const-string v3, "WindowManager"

    .line 2247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2250
    const-string v1, "WindowManager"

    invoke-static {v3, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2254
    :goto_0
    return-void

    .line 2252
    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;
    .locals 2
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 541
    new-instance v0, Lcom/android/server/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    .line 542
    .local v0, thr:Lcom/android/server/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WMThread;->start()V

    .line 544
    monitor-enter v0

    .line 545
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 547
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    goto :goto_0

    .line 551
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    return-object v1

    .line 551
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V
    .locals 2
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    .line 4108
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4111
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4114
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v0

    .line 4116
    if-eqz p3, :cond_1

    .line 4117
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4118
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4120
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4121
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4123
    :cond_1
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4127
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4129
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4130
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4131
    .local v3, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_0

    .line 4132
    invoke-direct {p0, v3}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4137
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4140
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 4141
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4142
    .restart local v3       #token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_2

    .line 4143
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 4140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4147
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_3
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4148
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4150
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4151
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4154
    return-void
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "WindowManager"

    .line 9545
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-eqz v6, :cond_1

    .line 9549
    const-string v6, "WindowManager"

    const-string v6, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9608
    :cond_0
    :goto_0
    return-void

    .line 9553
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v6, :cond_0

    .line 9560
    const/4 v2, 0x0

    .line 9561
    .local v2, recoveringMemory:Z
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 9562
    const/4 v2, 0x1

    .line 9564
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 9565
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9566
    .local v5, ws:Lcom/android/server/WindowManagerService$WindowState;
    const-string v6, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9567
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v5}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 9564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9569
    .end local v5           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9570
    const-string v6, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9571
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 9572
    .local v3, tmp:Ljava/lang/Object;
    monitor-enter v3

    .line 9574
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9577
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9580
    .end local v1           #i:I
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9582
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 9584
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v10

    .line 9585
    .restart local v1       #i:I
    if-ltz v1, :cond_5

    .line 9586
    :goto_3
    if-ltz v1, :cond_4

    .line 9587
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 9588
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v4}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 9589
    add-int/lit8 v1, v1, -0x1

    .line 9590
    goto :goto_3

    .line 9577
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v3       #tmp:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 9591
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 9593
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9594
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9595
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9596
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 9604
    .end local v1           #i:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 9605
    .local v0, e:Ljava/lang/RuntimeException;
    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9606
    const-string v6, "WindowManager"

    const-string v6, "Unhandled exception while layout out windows"

    invoke-static {v8, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 9599
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #i:I
    :cond_5
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9600
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v6, :cond_0

    .line 9601
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 9575
    .restart local v3       #tmp:Ljava/lang/Object;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .locals 96
    .parameter "recoveringMemory"

    .prologue
    .line 9714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v54

    .line 9715
    .local v54, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v21

    .line 9716
    .local v21, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v22

    .line 9720
    .local v22, dh:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 9721
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9722
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 9725
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 9726
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 9729
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 9730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v93

    .line 9731
    .local v93, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v64

    .line 9737
    .local v64, height:I
    const/16 v9, 0x12

    .line 9738
    .local v9, mMw:I
    const/16 v10, 0x1e

    .line 9740
    .local v10, mMh:I
    sub-int v5, v93, v9

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMx:I

    .line 9741
    sub-int v5, v64, v10

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMy:I

    .line 9745
    :try_start_0
    new-instance v5, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const/4 v8, 0x0

    const/4 v11, -0x2

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    .line 9752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v68

    .line 9754
    .local v68, mCanvas:Landroid/graphics/Canvas;
    new-instance v83, Landroid/graphics/Paint;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Paint;-><init>()V

    .line 9755
    .local v83, tPaint:Landroid/graphics/Paint;
    const/high16 v5, -0x100

    move-object/from16 v0, v83

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9756
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v83

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9757
    const/high16 v5, 0x4000

    move-object/from16 v0, v83

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9760
    new-instance v69, Landroid/graphics/Path;

    invoke-direct/range {v69 .. v69}, Landroid/graphics/Path;-><init>()V

    .line 9761
    .local v69, mPath:Landroid/graphics/Path;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9762
    const/high16 v5, 0x4190

    const/high16 v6, 0x4184

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9763
    const/high16 v5, 0x4128

    const/high16 v6, 0x4184

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9764
    const/high16 v5, 0x4184

    const/high16 v6, 0x41e4

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9765
    const/high16 v5, 0x4140

    const/high16 v6, 0x41f0

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9766
    const/high16 v5, 0x40c0

    const/high16 v6, 0x4190

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9767
    const/4 v5, 0x0

    const/high16 v6, 0x41c0

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9768
    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Path;->close()V

    .line 9770
    invoke-virtual/range {v68 .. v69}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9771
    const/4 v5, -0x1

    move-object/from16 v0, v68

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9772
    move-object/from16 v0, v68

    move-object/from16 v1, v69

    move-object/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 9775
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V

    .line 9776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMx:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMy:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V

    .line 9778
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9787
    .end local v9           #mMw:I
    .end local v10           #mMh:I
    .end local v64           #height:I
    .end local v68           #mCanvas:Landroid/graphics/Canvas;
    .end local v69           #mPath:Landroid/graphics/Path;
    .end local v83           #tPaint:Landroid/graphics/Paint;
    .end local v93           #width:I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    .local v66, i:I
    :goto_1
    if-ltz v66, :cond_3

    .line 9788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 9787
    add-int/lit8 v66, v66, -0x1

    goto :goto_1

    .line 9779
    .end local v66           #i:I
    .restart local v9       #mMw:I
    .restart local v10       #mMh:I
    .restart local v64       #height:I
    .restart local v93       #width:I
    :catch_0
    move-exception v5

    move-object/from16 v59, v5

    .line 9780
    .local v59, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating mouse surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 9792
    .end local v9           #mMw:I
    .end local v10           #mMh:I
    .end local v59           #e:Ljava/lang/Exception;
    .end local v64           #height:I
    .end local v93           #width:I
    .restart local v66       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    :goto_2
    if-ltz v66, :cond_4

    .line 9793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    .line 9792
    add-int/lit8 v66, v66, -0x1

    goto :goto_2

    .line 9796
    :cond_4
    const/16 v77, 0x1

    .line 9797
    .local v77, orientationChangeComplete:Z
    const/16 v65, 0x0

    .line 9798
    .local v65, holdScreen:Lcom/android/server/WindowManagerService$Session;
    const/high16 v80, -0x4080

    .line 9799
    .local v80, screenBrightness:F
    const/high16 v48, -0x4080

    .line 9800
    .local v48, buttonBrightness:F
    const/16 v60, 0x0

    .line 9801
    .local v60, focusDisplayed:Z
    const/16 v41, 0x0

    .line 9803
    .local v41, animating:Z
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V

    .line 9805
    const/16 v90, 0x0

    .line 9806
    .local v90, wallpaperForceHidingChanged:Z
    const/16 v78, 0x0

    .line 9807
    .local v78, repeats:I
    const/16 v51, 0x0

    .line 9810
    .local v51, changes:I
    :cond_5
    add-int/lit8 v78, v78, 0x1

    .line 9811
    const/4 v5, 0x6

    move/from16 v0, v78

    move v1, v5

    if-le v0, v1, :cond_20

    .line 9812
    :try_start_1
    const-string v5, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9813
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10371
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v5, 0x1

    move/from16 v81, v5

    .line 10373
    .local v81, someoneLosingFocus:Z
    :goto_4
    const/16 v73, 0x0

    .line 10374
    .local v73, obscured:Z
    const/16 v47, 0x0

    .line 10375
    .local v47, blurring:Z
    const/16 v57, 0x0

    .line 10376
    .local v57, dimming:Z
    const/16 v53, 0x0

    .line 10377
    .local v53, covered:Z
    const/16 v82, 0x0

    .line 10378
    .local v82, syswin:Z
    const/16 v45, 0x0

    .line 10380
    .local v45, backgroundFillerShown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 10382
    .local v32, N:I
    const/4 v5, 0x1

    sub-int v66, v32, v5

    :goto_5
    if-ltz v66, :cond_84

    .line 10383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/android/server/WindowManagerService$WindowState;

    .line 10385
    .local v88, w:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v58, 0x0

    .line 10386
    .local v58, displayed:Z
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 10387
    .local v44, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v43, v0

    .line 10389
    .local v43, attrFlags:I
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_7b

    .line 10404
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 10412
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_6e

    .line 10413
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v6, v0

    if-ne v5, v6, :cond_6

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v6, v0

    if-eq v5, v6, :cond_6d

    :cond_6
    const/4 v5, 0x1

    move/from16 v79, v5

    .line 10417
    .local v79, resize:Z
    :goto_6
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move/from16 v93, v0

    .line 10418
    .restart local v93       #width:I
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move/from16 v64, v0

    .line 10419
    .restart local v64       #height:I
    move/from16 v0, v93

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 10420
    move/from16 v0, v64

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 10421
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10426
    :try_start_2
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 10427
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 10428
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 10442
    :cond_7
    :goto_7
    if-eqz v79, :cond_a

    .line 10443
    const/4 v5, 0x1

    move/from16 v0, v93

    move v1, v5

    if-ge v0, v1, :cond_8

    const/16 v93, 0x1

    .line 10444
    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v64

    move v1, v5

    if-ge v0, v1, :cond_9

    const/16 v64, 0x1

    .line 10445
    :cond_9
    :try_start_3
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v5, :cond_a

    .line 10452
    const/4 v5, 0x1

    :try_start_4
    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    .line 10453
    move/from16 v0, v93

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceW:I

    .line 10454
    move/from16 v0, v64

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceH:I

    .line 10455
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v93

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10456
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 10457
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 10458
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 10474
    :cond_a
    :goto_8
    :try_start_5
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_f

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    move v6, v0

    if-ne v5, v6, :cond_f

    .line 10475
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    const/4 v5, 0x1

    :goto_9
    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 10477
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    const/4 v5, 0x1

    :goto_a
    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 10479
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_72

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_72

    :cond_b
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 10490
    .local v52, configChanged:Z
    :goto_b
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    move v5, v0

    if-nez v5, :cond_c

    if-eqz v52, :cond_73

    .line 10495
    :cond_c
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10496
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10497
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 10504
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 10505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-nez v5, :cond_d

    .line 10506
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 10509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v6, v0

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10519
    :cond_d
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 10523
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 10524
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 10525
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 10526
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_e

    .line 10527
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 10532
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10543
    .end local v52           #configChanged:Z
    :cond_f
    :goto_c
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    move v5, v0

    if-nez v5, :cond_10

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_74

    .line 10544
    :cond_10
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_12

    .line 10552
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 10555
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_11

    .line 10556
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 10558
    :try_start_6
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 10563
    :cond_11
    :goto_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 10571
    :cond_12
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_13

    .line 10572
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 10638
    :cond_13
    :goto_e
    if-eqz v58, :cond_17

    .line 10639
    if-nez v53, :cond_14

    .line 10640
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_14

    .line 10642
    const/16 v53, 0x1

    .line 10645
    :cond_14
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_16

    .line 10646
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_15

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-eqz v5, :cond_7a

    .line 10647
    :cond_15
    const/16 v77, 0x0

    .line 10656
    :cond_16
    :goto_f
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 10664
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_17
    :goto_10
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v49

    .line 10666
    .local v49, canBeSeen:Z
    if-eqz v81, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v88

    move-object v1, v5

    if-ne v0, v1, :cond_18

    if-eqz v49, :cond_18

    .line 10667
    const/16 v60, 0x1

    .line 10670
    :cond_18
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    move v5, v0

    move v0, v5

    move/from16 v1, v73

    if-eq v0, v1, :cond_7c

    const/4 v5, 0x1

    move/from16 v74, v5

    .line 10673
    .local v74, obscuredChanged:Z
    :goto_11
    move/from16 v0, v73

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v73, :cond_1e

    .line 10674
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1d

    .line 10675
    move/from16 v0, v43

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_19

    .line 10676
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v65, v0

    .line 10678
    :cond_19
    if-nez v82, :cond_1a

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1a

    const/4 v5, 0x0

    cmpg-float v5, v80, v5

    if-gez v5, :cond_1a

    .line 10680
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v80, v0

    .line 10682
    :cond_1a
    if-nez v82, :cond_1b

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1b

    const/4 v5, 0x0

    cmpg-float v5, v48, v5

    if-gez v5, :cond_1b

    .line 10684
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v48, v0

    .line 10686
    :cond_1b
    if-eqz v49, :cond_1d

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_1d

    .line 10690
    :cond_1c
    const/16 v82, 0x1

    .line 10694
    :cond_1d
    if-eqz v49, :cond_7d

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v5, 0x1

    move/from16 v76, v5

    .line 10695
    .local v76, opaqueDrawn:Z
    :goto_12
    if-eqz v76, :cond_7e

    move-object/from16 v0, v88

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 10699
    const/16 v73, 0x1

    .line 10784
    .end local v76           #opaqueDrawn:Z
    :cond_1e
    :goto_13
    if-eqz v74, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    if-ne v0, v1, :cond_1f

    .line 10788
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 10382
    :cond_1f
    add-int/lit8 v66, v66, -0x1

    goto/16 :goto_5

    .line 9817
    .end local v32           #N:I
    .end local v43           #attrFlags:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #backgroundFillerShown:Z
    .end local v47           #blurring:Z
    .end local v49           #canBeSeen:Z
    .end local v53           #covered:Z
    .end local v57           #dimming:Z
    .end local v58           #displayed:Z
    .end local v73           #obscured:Z
    .end local v74           #obscuredChanged:Z
    .end local v81           #someoneLosingFocus:Z
    .end local v82           #syswin:Z
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_20
    and-int/lit8 v5, v51, 0x7

    if-eqz v5, :cond_23

    .line 9820
    and-int/lit8 v5, v51, 0x4

    if-eqz v5, :cond_21

    .line 9821
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_21

    .line 9822
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9823
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9826
    :cond_21
    and-int/lit8 v5, v51, 0x2

    if-eqz v5, :cond_22

    .line 9828
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 9829
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9833
    :cond_22
    and-int/lit8 v5, v51, 0x1

    if-eqz v5, :cond_23

    .line 9834
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9839
    :cond_23
    const/4 v5, 0x4

    move/from16 v0, v78

    move v1, v5

    if-ge v0, v1, :cond_25

    .line 9840
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    move-result v51

    .line 9841
    if-eqz v51, :cond_26

    .line 10367
    :cond_24
    :goto_14
    if-nez v51, :cond_5

    goto/16 :goto_3

    .line 9845
    :cond_25
    const-string v5, "WindowManager"

    const-string v6, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9846
    const/16 v51, 0x0

    .line 9849
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    move v5, v0

    add-int/lit8 v87, v5, 0x1

    move/from16 v0, v87

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 9853
    .local v87, transactionSequence:I
    const/16 v86, 0x0

    .line 9854
    .local v86, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 9855
    .local v33, NAT:I
    const/16 v66, 0x0

    :goto_15
    move/from16 v0, v66

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 9856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v54

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 9857
    const/16 v86, 0x1

    .line 9855
    :cond_27
    add-int/lit8 v66, v66, 0x1

    goto :goto_15

    .line 9860
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 9861
    .local v35, NEAT:I
    const/16 v66, 0x0

    :goto_16
    move/from16 v0, v66

    move/from16 v1, v35

    if-ge v0, v1, :cond_2a

    .line 9862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v54

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 9863
    const/16 v86, 0x1

    .line 9861
    :cond_29
    add-int/lit8 v66, v66, 0x1

    goto :goto_16

    .line 9873
    :cond_2a
    move/from16 v41, v86

    .line 9875
    const/16 v85, 0x0

    .line 9876
    .local v85, tokenMayBeDrawn:Z
    const/16 v91, 0x0

    .line 9877
    .local v91, wallpaperMayChange:Z
    const/16 v61, 0x0

    .line 9879
    .local v61, forceHiding:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 9881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 9883
    .restart local v32       #N:I
    const/4 v5, 0x1

    sub-int v66, v32, v5

    :goto_17
    if-ltz v66, :cond_48

    .line 9884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/android/server/WindowManagerService$WindowState;

    .line 9886
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 9888
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_2f

    .line 9890
    move-object/from16 v0, v88

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 9891
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    .line 9895
    const/16 v91, 0x1

    .line 9899
    :cond_2b
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move/from16 v92, v0

    .line 9900
    .local v92, wasAnimating:Z
    move-object/from16 v0, v88

    move-wide/from16 v1, v54

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowState;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 9901
    const/16 v41, 0x1

    .line 9904
    :cond_2c
    if-eqz v92, :cond_2d

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    if-ne v0, v1, :cond_2d

    .line 9905
    const/16 v91, 0x1

    .line 9908
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 9909
    if-nez v92, :cond_35

    if-eqz v41, :cond_35

    .line 9913
    const/16 v90, 0x1

    .line 9914
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9955
    :cond_2e
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 9958
    .end local v92           #wasAnimating:Z
    :cond_2f
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v42, v0

    .line 9959
    .local v42, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v42, :cond_47

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    move v5, v0

    if-eqz v5, :cond_30

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_47

    .line 9960
    :cond_30
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    move v5, v0

    move v0, v5

    move/from16 v1, v87

    if-eq v0, v1, :cond_31

    .line 9961
    move/from16 v0, v87

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 9962
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 9963
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 9965
    :cond_31
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_32

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34

    :cond_32
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move v5, v0

    if-nez v5, :cond_34

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move v5, v0

    if-nez v5, :cond_34

    .line 9982
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v88

    move-object v1, v5

    if-eq v0, v1, :cond_46

    .line 9983
    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_33

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_34

    .line 9984
    :cond_33
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 9985
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 9986
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    .line 9991
    const/16 v85, 0x1

    .line 9883
    :cond_34
    :goto_19
    add-int/lit8 v66, v66, -0x1

    goto/16 :goto_17

    .line 9915
    .end local v42           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v92       #wasAnimating:Z
    :cond_35
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-nez v5, :cond_2e

    .line 9916
    const/16 v61, 0x1

    goto/16 :goto_18

    .line 9918
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 9920
    if-eqz v61, :cond_38

    .line 9921
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v88

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->hideLw(ZZ)Z

    move-result v50

    .line 9949
    .local v50, changed:Z
    :cond_37
    :goto_1a
    if-eqz v50, :cond_2e

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_2e

    .line 9951
    const/16 v91, 0x1

    goto/16 :goto_18

    .line 9925
    .end local v50           #changed:Z
    :cond_38
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v88

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->showLw(ZZ)Z

    move-result v50

    .line 9928
    .restart local v50       #changed:Z
    if-eqz v50, :cond_37

    .line 9929
    if-eqz v90, :cond_39

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 9935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v38

    .line 9936
    .local v38, a:Landroid/view/animation/Animation;
    if-eqz v38, :cond_39

    .line 9937
    move-object/from16 v0, v88

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 9940
    .end local v38           #a:Landroid/view/animation/Animation;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v6, v0

    if-ge v5, v6, :cond_37

    .line 9945
    :cond_3a
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1a

    .line 10819
    .end local v32           #N:I
    .end local v33           #NAT:I
    .end local v35           #NEAT:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v50           #changed:Z
    .end local v61           #forceHiding:Z
    .end local v85           #tokenMayBeDrawn:Z
    .end local v86           #tokensAnimating:Z
    .end local v87           #transactionSequence:I
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v91           #wallpaperMayChange:Z
    .end local v92           #wasAnimating:Z
    :catch_1
    move-exception v5

    move-object/from16 v59, v5

    .line 10820
    .local v59, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10823
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_3b
    :goto_1b
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 10828
    if-eqz v77, :cond_3d

    .line 10829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_3c

    .line 10830
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 10831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10833
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 10836
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v66

    .line 10837
    if-lez v66, :cond_40

    .line 10839
    :cond_3e
    add-int/lit8 v66, v66, -0x1

    .line 10840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Lcom/android/server/WindowManagerService$WindowState;

    .line 10844
    .local v94, win:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v56, 0x0

    .line 10845
    .local v56, diff:I
    :try_start_8
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_89

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v56

    if-eqz v56, :cond_89

    :cond_3f
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 10856
    .restart local v52       #configChanged:Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 10857
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v24

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v25

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v94

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v28, v0

    if-eqz v52, :cond_8a

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v29, v5

    :goto_1d
    invoke-interface/range {v23 .. v29}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 10861
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 10862
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 10863
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_c

    .line 10867
    .end local v52           #configChanged:Z
    :goto_1e
    if-gtz v66, :cond_3e

    .line 10868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10872
    .end local v56           #diff:I
    .end local v94           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_40
    const/16 v89, 0x0

    .line 10873
    .local v89, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v66

    .line 10874
    if-lez v66, :cond_44

    .line 10876
    :cond_41
    add-int/lit8 v66, v66, -0x1

    .line 10877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Lcom/android/server/WindowManagerService$WindowState;

    .line 10878
    .restart local v94       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 10879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v94

    if-ne v0, v1, :cond_42

    .line 10880
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 10882
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v94

    move-object v1, v5

    if-ne v0, v1, :cond_43

    .line 10883
    const/16 v89, 0x1

    .line 10885
    :cond_43
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 10886
    if-gtz v66, :cond_41

    .line 10887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10891
    .end local v94           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    :goto_1f
    if-ltz v66, :cond_8b

    .line 10892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10893
    .local v84, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v84

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_45

    .line 10894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10895
    move-object/from16 v0, v84

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    move v5, v0

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_45

    .line 10896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10891
    :cond_45
    add-int/lit8 v66, v66, -0x1

    goto :goto_1f

    .line 9994
    .end local v84           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v89           #wallpaperDestroyed:Z
    .restart local v32       #N:I
    .restart local v33       #NAT:I
    .restart local v35       #NEAT:I
    .restart local v42       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v61       #forceHiding:Z
    .restart local v85       #tokenMayBeDrawn:Z
    .restart local v86       #tokensAnimating:Z
    .restart local v87       #transactionSequence:I
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v91       #wallpaperMayChange:Z
    :cond_46
    :try_start_9
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 9995
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_19

    .line 9998
    :cond_47
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-eqz v5, :cond_34

    .line 9999
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto/16 :goto_19

    .line 10003
    .end local v42           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v51, v51, v5

    .line 10005
    if-eqz v85, :cond_4c

    .line 10008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 10009
    .local v37, NT:I
    const/16 v66, 0x0

    :goto_20
    move/from16 v0, v66

    move/from16 v1, v37

    if-ge v0, v1, :cond_4c

    .line 10010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    iget-object v12, v5, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10011
    .local v12, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v12, :cond_4a

    .line 10009
    :cond_49
    :goto_21
    add-int/lit8 v66, v66, 0x1

    goto :goto_20

    .line 10014
    :cond_4a
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_4b

    .line 10015
    move-object v0, v12

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v72, v0

    .line 10016
    .local v72, numInteresting:I
    if-lez v72, :cond_49

    iget v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v72

    if-lt v0, v1, :cond_49

    .line 10021
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 10022
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 10023
    const/16 v77, 0x1

    goto :goto_21

    .line 10025
    .end local v72           #numInteresting:I
    :cond_4b
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_49

    .line 10026
    move-object v0, v12

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v72, v0

    .line 10027
    .restart local v72       #numInteresting:I
    if-lez v72, :cond_49

    iget v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v72

    if-lt v0, v1, :cond_49

    .line 10032
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 10033
    or-int/lit8 v51, v51, 0x8

    .line 10036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 10037
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    goto :goto_21

    .line 10047
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v37           #NT:I
    .end local v72           #numInteresting:I
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-eqz v5, :cond_62

    .line 10048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10049
    .local v36, NN:I
    const/16 v63, 0x1

    .line 10054
    .local v63, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    move v5, v0

    if-nez v5, :cond_4e

    .line 10058
    const/16 v66, 0x0

    :goto_22
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_4e

    if-eqz v63, :cond_4e

    .line 10059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10064
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_4d

    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_4d

    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_4d

    .line 10066
    const/16 v63, 0x0

    .line 10058
    :cond_4d
    add-int/lit8 v66, v66, 0x1

    goto :goto_22

    .line 10070
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_4e
    if-eqz v63, :cond_62

    .line 10072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move v15, v0

    .line 10073
    .local v15, transit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move v5, v0

    if-eqz v5, :cond_4f

    .line 10074
    const/4 v15, -0x1

    .line 10076
    :cond_4f
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 10077
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 10078
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 10079
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 10080
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 10081
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 10083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_52

    .line 10091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10092
    const/16 v66, 0x0

    :goto_23
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_51

    .line 10093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10094
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    if-eqz v5, :cond_50

    .line 10095
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 10096
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v36

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V

    .line 10092
    :cond_50
    add-int/lit8 v66, v66, 0x1

    goto :goto_23

    .line 10099
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10102
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v75, v0

    .line 10104
    .local v75, oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 10105
    const/16 v91, 0x0

    .line 10109
    const/4 v13, 0x0

    .line 10110
    .local v13, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v40, 0x0

    .line 10111
    .local v40, animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v46, -0x1

    .line 10117
    .local v46, bestAnimLayer:I
    const/16 v62, 0x0

    .line 10128
    .local v62, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 10129
    .local v34, NC:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v36, v34, v5

    .line 10130
    const/16 v66, 0x0

    :goto_24
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_58

    .line 10133
    move/from16 v0, v66

    move/from16 v1, v34

    if-ge v0, v1, :cond_56

    .line 10134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10135
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v70, 0x1

    .line 10140
    .local v70, mode:I
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_54

    .line 10141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v12, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v5, v12, :cond_54

    .line 10143
    :cond_53
    or-int v62, v62, v70

    .line 10146
    :cond_54
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_55

    .line 10147
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->findMainWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v95

    .line 10148
    .local v95, ws:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v95, :cond_55

    .line 10151
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_57

    .line 10152
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 10153
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v40, v0

    .line 10154
    const v46, 0x7fffffff

    .line 10130
    .end local v95           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_55
    :goto_26
    add-int/lit8 v66, v66, 0x1

    goto :goto_24

    .line 10137
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v70           #mode:I
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    sub-int v6, v66, v34

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10138
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v70, 0x2

    .restart local v70       #mode:I
    goto :goto_25

    .line 10155
    .restart local v95       #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_57
    move-object/from16 v0, v95

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v5, v0

    move v0, v5

    move/from16 v1, v46

    if-le v0, v1, :cond_55

    .line 10156
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 10157
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v40, v0

    .line 10158
    move-object/from16 v0, v95

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v46, v0

    goto :goto_26

    .line 10164
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v70           #mode:I
    .end local v95           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_58
    const/4 v5, 0x3

    move/from16 v0, v62

    move v1, v5

    if-ne v0, v1, :cond_5c

    .line 10167
    sparse-switch v15, :sswitch_data_0

    .line 10195
    :cond_59
    :goto_27
    and-int/lit16 v5, v15, 0x1000

    if-eqz v5, :cond_5e

    .line 10196
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10197
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 10208
    :cond_5a
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 10209
    const/4 v13, 0x0

    .line 10212
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10213
    const/16 v66, 0x0

    :goto_29
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_5f

    .line 10214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10217
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 10218
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 10219
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 10220
    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 10221
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 10222
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 10223
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 10213
    add-int/lit8 v66, v66, 0x1

    goto :goto_29

    .line 10171
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :sswitch_0
    const/16 v15, 0x100e

    .line 10172
    goto :goto_27

    .line 10176
    :sswitch_1
    const/16 v15, 0x200f

    goto :goto_27

    .line 10181
    :cond_5c
    if-eqz v75, :cond_5d

    .line 10184
    const/16 v15, 0x200c

    goto :goto_27

    .line 10187
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_59

    .line 10190
    const/16 v15, 0x100d

    goto :goto_27

    .line 10198
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    if-eqz v5, :cond_5a

    .line 10199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 10200
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10201
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_28

    .line 10225
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10226
    const/16 v66, 0x0

    :goto_2a
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_60

    .line 10227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10230
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 10231
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 10232
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 10233
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 10234
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    .line 10238
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 10226
    add-int/lit8 v66, v66, 0x1

    goto :goto_2a

    .line 10241
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_60
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 10243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10248
    or-int/lit8 v51, v51, 0x1

    .line 10249
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10250
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_61

    .line 10251
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 10253
    :cond_61
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 10254
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10258
    .end local v13           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v15           #transit:I
    .end local v34           #NC:I
    .end local v36           #NN:I
    .end local v40           #animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v46           #bestAnimLayer:I
    .end local v62           #foundWallpapers:I
    .end local v63           #goodToGo:Z
    .end local v75           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_62
    const/16 v39, 0x0

    .line 10260
    .local v39, adjResult:I
    if-nez v41, :cond_63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_63

    .line 10267
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 10269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 10272
    or-int/lit8 v51, v51, 0x1

    .line 10273
    or-int/lit8 v39, v39, 0x2

    .line 10274
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 10275
    const/16 v91, 0x1

    .line 10279
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10282
    :cond_63
    if-eqz v90, :cond_67

    if-nez v51, :cond_67

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-nez v5, :cond_67

    .line 10289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v75, v0

    .line 10290
    .restart local v75       #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_64

    .line 10298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-eqz v5, :cond_64

    .line 10302
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 10303
    or-int/lit8 v51, v51, 0x8

    .line 10306
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v39, v39, v5

    .line 10307
    const/16 v91, 0x0

    .line 10308
    const/16 v90, 0x0

    .line 10312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-nez v5, :cond_67

    .line 10315
    const/16 v61, 0x0

    .line 10316
    const/4 v5, 0x1

    sub-int v66, v32, v5

    :goto_2b
    if-ltz v66, :cond_67

    .line 10317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/android/server/WindowManagerService$WindowState;

    .line 10318
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_65

    .line 10319
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 10320
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 10322
    const/16 v61, 0x1

    .line 10316
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_65
    :goto_2c
    add-int/lit8 v66, v66, -0x1

    goto :goto_2b

    .line 10323
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 10324
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_65

    .line 10327
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2c

    .line 10335
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v75           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_67
    if-eqz v91, :cond_68

    .line 10338
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v39, v39, v5

    .line 10341
    :cond_68
    and-int/lit8 v5, v39, 0x2

    if-eqz v5, :cond_6b

    .line 10344
    or-int/lit8 v51, v51, 0x1

    .line 10345
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 10352
    :cond_69
    :goto_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_6a

    .line 10353
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10354
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 10355
    or-int/lit8 v51, v51, 0x8

    .line 10356
    const/16 v39, 0x0

    .line 10360
    :cond_6a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    move v5, v0

    if-eqz v5, :cond_24

    .line 10361
    or-int/lit8 v51, v51, 0x1

    goto/16 :goto_14

    .line 10346
    :cond_6b
    and-int/lit8 v5, v39, 0x4

    if-eqz v5, :cond_69

    .line 10349
    or-int/lit8 v51, v51, 0x1

    goto :goto_2d

    .line 10371
    .end local v32           #N:I
    .end local v33           #NAT:I
    .end local v35           #NEAT:I
    .end local v39           #adjResult:I
    .end local v61           #forceHiding:Z
    .end local v85           #tokenMayBeDrawn:Z
    .end local v86           #tokensAnimating:Z
    .end local v87           #transactionSequence:I
    .end local v91           #wallpaperMayChange:Z
    :cond_6c
    const/4 v5, 0x0

    move/from16 v81, v5

    goto/16 :goto_4

    .line 10413
    .restart local v32       #N:I
    .restart local v43       #attrFlags:I
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v45       #backgroundFillerShown:Z
    .restart local v47       #blurring:Z
    .restart local v53       #covered:Z
    .restart local v57       #dimming:Z
    .restart local v58       #displayed:Z
    .restart local v73       #obscured:Z
    .restart local v81       #someoneLosingFocus:Z
    .restart local v82       #syswin:Z
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6d
    const/4 v5, 0x0

    move/from16 v79, v5

    goto/16 :goto_6

    .line 10429
    .restart local v64       #height:I
    .restart local v79       #resize:Z
    .restart local v93       #width:I
    :catch_2
    move-exception v5

    move-object/from16 v59, v5

    .line 10430
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error positioning surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10431
    if-nez p1, :cond_7

    .line 10432
    const-string v5, "position"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 10436
    .end local v59           #e:Ljava/lang/RuntimeException;
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_6e
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    const/4 v5, 0x1

    move/from16 v79, v5

    .line 10437
    .restart local v79       #resize:Z
    :goto_2e
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v93

    .line 10438
    .restart local v93       #width:I
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v64

    .line 10439
    .restart local v64       #height:I
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 10436
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_6f
    const/4 v5, 0x0

    move/from16 v79, v5

    goto :goto_2e

    .line 10460
    .restart local v64       #height:I
    .restart local v79       #resize:Z
    .restart local v93       #width:I
    :catch_3
    move-exception v5

    move-object/from16 v59, v5

    .line 10464
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure updating surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10468
    if-nez p1, :cond_a

    .line 10469
    const-string v5, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 10475
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_70
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 10477
    :cond_71
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 10479
    :cond_72
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_b

    .line 10533
    .restart local v52       #configChanged:Z
    :cond_73
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 10534
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_f

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_f

    .line 10538
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_c

    .line 10559
    .end local v52           #configChanged:Z
    :catch_4
    move-exception v5

    move-object/from16 v59, v5

    .line 10560
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 10576
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_74
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    if-ne v5, v6, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_79

    .line 10585
    :cond_75
    const/16 v58, 0x1

    .line 10586
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 10587
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    .line 10588
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    .line 10589
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    .line 10590
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    .line 10591
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 10592
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    .line 10593
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 10600
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v5, :cond_76

    .line 10602
    :try_start_a
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceAlpha:F

    .line 10603
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setAlpha(F)V

    .line 10604
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    .line 10605
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10606
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v7, v0

    mul-float/2addr v6, v7

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v7, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v8, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v9, v0

    mul-float/2addr v8, v9

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v9, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v10, v0

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    .line 10617
    :cond_76
    :goto_2f
    :try_start_b
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_77

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_77

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_77

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-nez v5, :cond_77

    .line 10624
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 10625
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 10626
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 10631
    :cond_77
    :goto_30
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_13

    .line 10632
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    goto/16 :goto_e

    .line 10609
    :catch_5
    move-exception v5

    move-object/from16 v59, v5

    .line 10610
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error updating surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10611
    if-nez p1, :cond_76

    .line 10612
    const-string v5, "update"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto :goto_2f

    .line 10628
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_78
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto :goto_30

    .line 10635
    :cond_79
    const/16 v58, 0x1

    goto/16 :goto_e

    .line 10651
    :cond_7a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_f

    .line 10658
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_7b
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 10661
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_10

    .line 10670
    .restart local v49       #canBeSeen:Z
    :cond_7c
    const/4 v5, 0x0

    move/from16 v74, v5

    goto/16 :goto_11

    .line 10694
    .restart local v74       #obscuredChanged:Z
    :cond_7d
    const/4 v5, 0x0

    move/from16 v76, v5

    goto/16 :goto_12

    .line 10700
    .restart local v76       #opaqueDrawn:Z
    :cond_7e
    if-eqz v76, :cond_80

    move-object/from16 v0, v88

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->needsBackgroundFiller(II)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 10703
    const/16 v73, 0x1

    .line 10704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    if-nez v5, :cond_7f

    .line 10706
    :try_start_c
    new-instance v16, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "BackGroundFiller"

    const/16 v20, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    invoke-direct/range {v16 .. v24}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 10716
    :cond_7f
    :goto_31
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 10717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7

    .line 10725
    :goto_32
    const/16 v45, 0x1

    .line 10726
    const/4 v5, 0x1

    :try_start_e
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    goto/16 :goto_13

    .line 10711
    :catch_6
    move-exception v5

    move-object/from16 v59, v5

    .line 10712
    .local v59, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 10722
    .end local v59           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v5

    move-object/from16 v59, v5

    .line 10723
    .local v59, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception showing filler surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 10727
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_80
    if-eqz v49, :cond_1e

    if-nez v73, :cond_1e

    and-int/lit8 v5, v43, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1e

    .line 10733
    and-int/lit8 v5, v43, 0x2

    if-eqz v5, :cond_82

    .line 10734
    if-nez v57, :cond_82

    .line 10736
    const/16 v57, 0x1

    .line 10737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-nez v5, :cond_81

    .line 10738
    new-instance v5, Lcom/android/server/WindowManagerService$DimAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/WindowManagerService$DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 10740
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$DimAnimator;->show(II)V

    .line 10741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-wide/from16 v2, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$DimAnimator;->updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V

    .line 10744
    :cond_82
    and-int/lit8 v5, v43, 0x4

    if-eqz v5, :cond_1e

    .line 10745
    if-nez v47, :cond_1e

    .line 10747
    const/16 v47, 0x1

    .line 10748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    if-nez v5, :cond_83

    .line 10752
    :try_start_f
    new-instance v23, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "BlurSurface"

    const/16 v27, -0x1

    const/16 v28, 0x10

    const/16 v29, 0x10

    const/16 v30, -0x1

    const/high16 v31, 0x1

    invoke-direct/range {v23 .. v31}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 10761
    :cond_83
    :goto_33
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1e

    .line 10765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 10766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10768
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    if-nez v5, :cond_1e

    .line 10772
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_9

    .line 10776
    :goto_34
    const/4 v5, 0x1

    :try_start_12
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_13

    .line 10757
    :catch_8
    move-exception v5

    move-object/from16 v59, v5

    .line 10758
    .local v59, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating Blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 10773
    .end local v59           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v5

    move-object/from16 v59, v5

    .line 10774
    .local v59, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Failure showing blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 10792
    .end local v43           #attrFlags:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v49           #canBeSeen:Z
    .end local v58           #displayed:Z
    .end local v59           #e:Ljava/lang/RuntimeException;
    .end local v74           #obscuredChanged:Z
    .end local v76           #opaqueDrawn:Z
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_84
    if-nez v45, :cond_85

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    move v5, v0

    if-eqz v5, :cond_85

    .line 10793
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 10796
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_a

    .line 10802
    :cond_85
    :goto_35
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-eqz v5, :cond_87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_87

    .line 10803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v6, v0

    if-nez v6, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_88

    :cond_86
    const/4 v6, 0x1

    :goto_36
    move-object v0, v5

    move/from16 v1, v57

    move-wide/from16 v2, v54

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v41, v41, v5

    .line 10807
    :cond_87
    if-nez v47, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1

    if-eqz v5, :cond_3b

    .line 10811
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .line 10815
    :goto_37
    const/4 v5, 0x0

    :try_start_16
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_1b

    .line 10797
    :catch_a
    move-exception v5

    move-object/from16 v59, v5

    .line 10798
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception hiding filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 10803
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_88
    const/4 v6, 0x0

    goto :goto_36

    .line 10812
    :catch_b
    move-exception v5

    move-object/from16 v59, v5

    .line 10813
    .local v59, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v6, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_37

    .line 10845
    .end local v32           #N:I
    .end local v45           #backgroundFillerShown:Z
    .end local v47           #blurring:Z
    .end local v53           #covered:Z
    .end local v57           #dimming:Z
    .end local v59           #e:Ljava/lang/IllegalArgumentException;
    .end local v73           #obscured:Z
    .end local v81           #someoneLosingFocus:Z
    .end local v82           #syswin:Z
    .restart local v56       #diff:I
    .restart local v94       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_89
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_1c

    .line 10857
    .restart local v52       #configChanged:Z
    :cond_8a
    const/4 v5, 0x0

    move-object/from16 v29, v5

    goto/16 :goto_1d

    .line 10864
    .end local v52           #configChanged:Z
    :catch_c
    move-exception v5

    move-object/from16 v59, v5

    .line 10865
    .local v59, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_1e

    .line 10902
    .end local v56           #diff:I
    .end local v59           #e:Landroid/os/RemoteException;
    .end local v94           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v89       #wallpaperDestroyed:Z
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    :goto_38
    if-ltz v66, :cond_8d

    .line 10903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10904
    .local v84, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v84

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 10908
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v84

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 10909
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v84

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 10910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    if-ne v0, v1, :cond_8c

    .line 10913
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10914
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 10902
    :cond_8c
    add-int/lit8 v66, v66, -0x1

    goto :goto_38

    .line 10919
    .end local v84           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8d
    const/16 v71, 0x0

    .line 10921
    .local v71, needRelayout:Z
    if-nez v41, :cond_8e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_8e

    .line 10928
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 10929
    const/16 v71, 0x1

    .line 10930
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 10931
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 10933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10936
    :cond_8e
    if-eqz v60, :cond_8f

    .line 10937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10939
    :cond_8f
    if-eqz v89, :cond_90

    .line 10940
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_96

    const/4 v5, 0x1

    move/from16 v71, v5

    .line 10942
    :cond_90
    :goto_39
    if-eqz v71, :cond_97

    .line 10943
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    .line 10950
    :cond_91
    :goto_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_94

    .line 10951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    if-eqz v65, :cond_98

    const/4 v6, 0x1

    :goto_3b
    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyQ;->setHoldScreenLocked(Z)V

    .line 10952
    const/4 v5, 0x0

    cmpg-float v5, v80, v5

    if-ltz v5, :cond_92

    const/high16 v5, 0x3f80

    cmpl-float v5, v80, v5

    if-lez v5, :cond_99

    .line 10953
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 10958
    :goto_3c
    const/4 v5, 0x0

    cmpg-float v5, v48, v5

    if-ltz v5, :cond_93

    const/high16 v5, 0x3f80

    cmpl-float v5, v48, v5

    if-lez v5, :cond_9a

    .line 10959
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 10964
    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v65

    move-object v1, v5

    if-eq v0, v1, :cond_94

    .line 10965
    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    .line 10966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xc

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v67

    .line 10967
    .local v67, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 10971
    .end local v67           #m:Landroid/os/Message;
    :cond_94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    move v5, v0

    if-eqz v5, :cond_95

    .line 10973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x5

    const/16 v28, 0x1

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 10975
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    .line 10980
    :cond_95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 10981
    return-void

    .line 10940
    :cond_96
    const/4 v5, 0x0

    move/from16 v71, v5

    goto/16 :goto_39

    .line 10944
    :cond_97
    if-eqz v41, :cond_91

    .line 10945
    const-wide/16 v5, 0x10

    add-long v5, v5, v54

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_3a

    .line 10951
    :cond_98
    const/4 v6, 0x0

    goto/16 :goto_3b

    .line 10955
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v80

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_3c

    .line 10961
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v48

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_3d

    .line 10167
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method private final performLayoutLockedInner()I
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 9611
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_0

    move v9, v12

    .line 9709
    :goto_0
    return v9

    .line 9615
    :cond_0
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9617
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 9618
    .local v3, dw:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 9620
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9626
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9, v3, v2}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(II)V

    .line 9628
    iget v9, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 9629
    .local v6, seq:I
    if-gez v6, :cond_1

    const/4 v6, 0x0

    .line 9630
    :cond_1
    iput v6, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 9634
    const/4 v7, -0x1

    .line 9635
    .local v7, topAttached:I
    sub-int v5, v0, v13

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_9

    .line 9636
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 9641
    .local v8, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v1, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9642
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v9, v9, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_3

    if-eqz v1, :cond_2

    iget-boolean v9, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_3

    :cond_2
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-eqz v9, :cond_7

    :cond_3
    move v4, v13

    .line 9649
    .local v4, gone:Z
    :goto_2
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_4

    .line 9666
    :cond_4
    if-eqz v4, :cond_5

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_6

    .line 9667
    :cond_5
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_8

    .line 9668
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 9669
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 9635
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v4           #gone:Z
    :cond_7
    move v4, v12

    .line 9642
    goto :goto_2

    .line 9675
    .restart local v4       #gone:Z
    :cond_8
    if-gez v7, :cond_6

    move v7, v5

    goto :goto_3

    .line 9684
    .end local v1           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    move v5, v7

    :goto_4
    if-ltz v5, :cond_d

    .line 9685
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 9692
    .restart local v8       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_c

    .line 9697
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_a

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_b

    :cond_a
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_c

    .line 9699
    :cond_b
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 9700
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 9684
    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 9709
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_d
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_0
.end method

.method private placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 3
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 708
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 709
    return-void
.end method

.method private placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 712
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 716
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 717
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4045
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4046
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4047
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 4046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4049
    :cond_0
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .locals 5
    .parameter "index"
    .parameter "win"

    .prologue
    .line 4019
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4020
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4021
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 4022
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4023
    .local v2, cwin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_0

    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v4, :cond_0

    .line 4026
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4027
    add-int/lit8 p1, p1, 0x1

    .line 4028
    const/4 v1, 0x1

    .line 4032
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4033
    add-int/lit8 p1, p1, 0x1

    .line 4021
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4035
    .end local v2           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-nez v1, :cond_2

    .line 4038
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4039
    add-int/lit8 p1, p1, 0x1

    .line 4041
    :cond_2
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 1139
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1143
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1144
    .local v0, wpos:I
    if-ltz v0, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1148
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1150
    :cond_0
    return-void
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4092
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4093
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4094
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4095
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 4096
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4097
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    add-int/lit8 v1, v1, -0x1

    .line 4100
    add-int/lit8 v0, v0, -0x1

    .line 4093
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4103
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2162
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2164
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 2165
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 2167
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    .line 2169
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_0

    .line 2170
    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2179
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2180
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->removeLocked()V

    .line 2182
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2186
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_7

    .line 2187
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2192
    :cond_1
    :goto_0
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 2193
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2194
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2195
    if-eqz v0, :cond_2

    .line 2196
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2201
    :cond_2
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2202
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->explicit:Z

    if-nez v3, :cond_8

    .line 2203
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2210
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2211
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_9

    .line 2212
    iput-object v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2229
    :cond_4
    :goto_2
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_b

    .line 2230
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2231
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2236
    :cond_5
    :goto_3
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-nez v3, :cond_6

    .line 2237
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2238
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2239
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2240
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_6

    .line 2241
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2244
    :cond_6
    return-void

    .line 2188
    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_1

    .line 2189
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2205
    .restart local v0       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v2       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_8
    if-eqz v0, :cond_3

    .line 2206
    iput-boolean v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    goto :goto_1

    .line 2213
    :cond_9
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v3, :cond_a

    .line 2216
    iput-object v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    goto :goto_2

    .line 2217
    :cond_a
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2224
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2225
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2232
    .end local v1           #m:Landroid/os/Message;
    :cond_b
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 2233
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_3
.end method

.method private setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2259
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2260
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2261
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    .line 2263
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2267
    :try_start_2
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2270
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 2273
    :cond_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2277
    return-void

    .line 2269
    :catchall_0
    move-exception v4

    .line 2270
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 2269
    throw v4

    .line 2273
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2275
    :catchall_2
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private shouldAllowDisableKeyguard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4228
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4229
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4231
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 4232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4237
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    return v1

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    move v1, v4

    .line 4232
    goto :goto_0

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    move v1, v4

    .line 4237
    goto :goto_1
.end method

.method private startFreezingDisplayLocked()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 11229
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_0

    .line 11236
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v2

    .line 11237
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 11238
    monitor-exit v2

    .line 11271
    :goto_0
    return-void

    .line 11238
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 11242
    :cond_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 11244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 11246
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 11247
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 11249
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11250
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 11251
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 11259
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 11260
    iget v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v2, v7, :cond_2

    .line 11261
    iput v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 11262
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 11263
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 11270
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0

    .line 11254
    :cond_3
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    goto :goto_1
.end method

.method private stopFreezingDisplayLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 11274
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    .line 11316
    :cond_0
    :goto_0
    return-void

    .line 11278
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    .line 11284
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 11285
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11289
    invoke-static {v2}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 11293
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v0

    .line 11294
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 11295
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 11296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11302
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11303
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11311
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11312
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v1, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11315
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 11296
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z
    .locals 6
    .parameter "token"

    .prologue
    .line 3932
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3933
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3934
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 3936
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3937
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3938
    .local v3, j:I
    :goto_1
    if-lez v3, :cond_0

    .line 3939
    add-int/lit8 v3, v3, -0x1

    .line 3940
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 3943
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3933
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3946
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-lez v0, :cond_2

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .locals 5
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1117
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1118
    .local v3, wpos:I
    if-ltz v3, :cond_3

    .line 1119
    if-ge v3, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1121
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1122
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1123
    .local v0, NC:I
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 1124
    add-int/lit8 v0, v0, -0x1

    .line 1125
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1126
    .local v2, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1127
    .local v1, cpos:I
    if-ltz v1, :cond_1

    .line 1128
    if-ge v1, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1131
    :cond_2
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1135
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return p1
.end method

.method private updateFocusedWindowLocked(I)Z
    .locals 9
    .parameter "mode"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 11111
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 11112
    .local v1, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_5

    .line 11115
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11116
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11119
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 11120
    .local v2, oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 11121
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11123
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 11124
    .local v0, imWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eq v1, v0, :cond_1

    if-eq v2, v0, :cond_1

    .line 11125
    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_3

    move v3, v6

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11128
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 11131
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 11132
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_0

    .line 11133
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11134
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11135
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test Code - Changing focus from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11136
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 11137
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11142
    :cond_0
    if-ne p1, v7, :cond_4

    .line 11143
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    .line 11151
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    if-eq p1, v6, :cond_2

    .line 11152
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    :cond_2
    move v3, v6

    .line 11156
    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    return v3

    .restart local v0       #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    move v3, v4

    .line 11125
    goto :goto_0

    .line 11144
    :cond_4
    if-ne p1, v8, :cond_1

    .line 11147
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    goto :goto_1

    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    move v3, v4

    .line 11156
    goto :goto_2
.end method

.method private final wakeupIfNeeded(Lcom/android/server/WindowManagerService$WindowState;I)V
    .locals 8
    .parameter "targetWin"
    .parameter "eventType"

    .prologue
    const/4 v3, 0x0

    .line 5038
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 5040
    .local v1, curTime:J
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5041
    :cond_0
    iget v0, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    if-ne v0, p2, :cond_2

    iget-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 5053
    :cond_1
    :goto_0
    return-void

    .line 5045
    :cond_2
    iput-wide v1, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 5046
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 5049
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-eq v0, v4, :cond_1

    .line 5051
    :cond_4
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    goto :goto_0
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .locals 5
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 3023
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addAppToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3025
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3028
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3029
    :try_start_0
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3030
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_1

    .line 3031
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    monitor-exit v1

    .line 3049
    :goto_0
    return-void

    .line 3034
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$AppWindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    invoke-direct {v0, p0, p2}, Lcom/android/server/WindowManagerService$AppWindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3035
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iput p3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3036
    iput-boolean p5, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3037
    iput p4, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3038
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3040
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3044
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3045
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3048
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1075
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1076
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1080
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1081
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1085
    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1086
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_0
.end method

.method public addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .locals 24
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"

    .prologue
    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 1877
    .local v20, res:I
    if-eqz v20, :cond_0

    move/from16 v6, v20

    .line 2080
    :goto_0
    return v6

    .line 1881
    :cond_0
    const/16 v19, 0x0

    .line 1882
    .local v19, reportNewConfig:Z
    const/4 v10, 0x0

    .line 1883
    .local v10, attachedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v21, 0x0

    .line 1885
    .local v21, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1889
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 1891
    .local v22, wm:Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$KeyQ;->setDisplay(Landroid/view/Display;)V

    .line 1895
    const/16 v19, 0x1

    .line 1898
    .end local v22           #wm:Landroid/view/WindowManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1899
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v6, -0x5

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2068
    :catchall_0
    move-exception v6

    move-object/from16 v5, v21

    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1903
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    :try_start_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_4

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_4

    .line 1904
    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v10

    .line 1905
    if-nez v10, :cond_3

    .line 1906
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is not a window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/4 v6, -0x2

    monitor-exit v23

    goto/16 :goto_0

    .line 1910
    :cond_3
    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_4

    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_4

    .line 1912
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/4 v6, -0x2

    monitor-exit v23

    goto/16 :goto_0

    .line 1918
    :cond_4
    const/4 v13, 0x0

    .line 1919
    .local v13, addToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1920
    .local v9, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v9, :cond_9

    .line 1921
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_5

    .line 1923
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1927
    :cond_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_6

    .line 1928
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1932
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_7

    .line 1933
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1937
    :cond_7
    new-instance v9, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 1938
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v13, 0x1

    .line 1971
    :cond_8
    new-instance v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v5 .. v12}, Lcom/android/server/WindowManagerService$WindowState;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1973
    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_3
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    if-nez v6, :cond_e

    .line 1976
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding window client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is dead, aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v6, -0x4

    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 2068
    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v13           #addToken:Z
    :catchall_1
    move-exception v6

    goto/16 :goto_1

    .line 1939
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v13       #addToken:Z
    .restart local v21       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    :try_start_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_c

    .line 1941
    iget-object v14, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1942
    .local v14, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v14, :cond_a

    .line 1943
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with non-application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const/4 v6, -0x3

    monitor-exit v23

    goto/16 :goto_0

    .line 1946
    :cond_a
    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v6, :cond_b

    .line 1947
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with exiting application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const/4 v6, -0x4

    monitor-exit v23

    goto/16 :goto_0

    .line 1951
    :cond_b
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_8

    .line 1955
    const/4 v6, -0x6

    monitor-exit v23

    goto/16 :goto_0

    .line 1957
    .end local v14           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_d

    .line 1958
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_8

    .line 1959
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1963
    :cond_d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_8

    .line 1964
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7dd

    if-eq v6, v7, :cond_8

    .line 1965
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/4 v6, -0x1

    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1981
    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 1984
    if-eqz v20, :cond_f

    .line 1985
    monitor-exit v23

    move/from16 v6, v20

    goto/16 :goto_0

    .line 1990
    :cond_f
    const/16 v20, 0x0

    .line 1992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1994
    .local v17, origId:J
    if-eqz v13, :cond_10

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    :cond_10
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->attach()V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_11

    .line 2003
    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2006
    :cond_11
    const/16 v16, 0x1

    .line 2008
    .local v16, imMayMove:Z
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_1b

    .line 2009
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2010
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2011
    const/16 v16, 0x0

    .line 2027
    :cond_12
    :goto_2
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2031
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v6, v0

    if-eqz v6, :cond_13

    .line 2032
    or-int/lit8 v20, v20, 0x1

    .line 2034
    :cond_13
    if-eqz v5, :cond_14

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_14

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v6, :cond_15

    .line 2035
    :cond_14
    or-int/lit8 v20, v20, 0x2

    .line 2038
    :cond_15
    const/4 v15, 0x0

    .line 2039
    .local v15, focusChanged:Z
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2040
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v15

    const/4 v6, 0x1

    if-ne v15, v6, :cond_16

    .line 2042
    const/16 v16, 0x0

    .line 2046
    :cond_16
    if-eqz v16, :cond_17

    .line 2047
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2050
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2056
    if-eqz v15, :cond_18

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v6, v0

    if-eqz v6, :cond_18

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2065
    :cond_18
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2066
    const/16 v19, 0x1

    .line 2068
    :cond_19
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2075
    if-eqz v19, :cond_1a

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2078
    :cond_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v6, v20

    .line 2080
    goto/16 :goto_0

    .line 2012
    .end local v15           #focusChanged:Z
    :cond_1b
    :try_start_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_1c

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 2016
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2018
    :cond_1c
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 2019
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_1d

    .line 2020
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    .line 2022
    :cond_1d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "type"

    .prologue
    .line 2947
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2949
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2952
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2953
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2954
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 2955
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    monitor-exit v1

    .line 2965
    :goto_0
    return-void

    .line 2958
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2959
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2960
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2961
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_2

    .line 2962
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2964
    :cond_2
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method adjustInputMethodDialogsLocked()V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1305
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .locals 32

    .prologue
    .line 1325
    const/4 v6, 0x0

    .line 1327
    .local v6, changed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 1328
    .local v10, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 1332
    .local v9, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v15, v0

    .line 1333
    .local v15, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1334
    .local v5, N:I
    const/16 v27, 0x0

    .line 1335
    .local v27, w:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v13, 0x0

    .line 1336
    .local v13, foundW:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v12, 0x0

    .line 1337
    .local v12, foundI:I
    const/16 v24, 0x0

    .line 1338
    .local v24, topCurW:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v23, 0x0

    .line 1339
    .local v23, topCurI:I
    move v14, v5

    .line 1340
    .local v14, i:I
    :cond_0
    :goto_0
    if-lez v14, :cond_5

    .line 1341
    add-int/lit8 v14, v14, -0x1

    .line 1342
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v27, Lcom/android/server/WindowManagerService$WindowState;

    .line 1343
    .restart local v27       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x7dd

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 1344
    if-nez v24, :cond_0

    .line 1345
    move-object/from16 v24, v27

    .line 1346
    move/from16 v23, v14

    goto :goto_0

    .line 1350
    :cond_1
    const/16 v24, 0x0

    .line 1351
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 1354
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 1357
    const/16 v24, 0x0

    .line 1358
    goto :goto_0

    .line 1364
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    const/high16 v31, 0x10

    and-int v30, v30, v31

    if-eqz v30, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 1369
    :cond_3
    move-object/from16 v13, v27

    .line 1370
    move v12, v14

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    :cond_4
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 1385
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 1397
    const/16 v30, 0x0

    .line 1623
    .end local v5           #N:I
    :goto_1
    return v30

    .line 1399
    .restart local v5       #N:I
    :cond_6
    if-eqz v13, :cond_7

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 1402
    const/16 v30, 0x0

    goto :goto_1

    .line 1406
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_16

    .line 1412
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1413
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v21, v0

    .line 1416
    .local v21, oldW:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1420
    if-eqz v13, :cond_b

    if-eqz v21, :cond_b

    .line 1421
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    :cond_8
    const/16 v30, 0x1

    move/from16 v18, v30

    .line 1423
    .local v18, oldAnim:Z
    :goto_2
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_9

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    :cond_9
    const/16 v30, 0x1

    move/from16 v11, v30

    .line 1429
    .local v11, foundAnim:Z
    :goto_3
    if-eqz v11, :cond_b

    if-eqz v18, :cond_b

    .line 1430
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1434
    .local v19, oldI:I
    if-ltz v19, :cond_b

    .line 1442
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 1446
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1452
    :cond_a
    move v0, v12

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 1457
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1458
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1459
    move-object/from16 v13, v21

    .line 1460
    move/from16 v12, v19

    .line 1490
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b
    :goto_4
    if-eqz v13, :cond_1c

    const/16 v30, 0x1

    move/from16 v26, v30

    .line 1491
    .local v26, visible:Z
    :goto_5
    if-eqz v26, :cond_c

    .line 1494
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v26

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-nez v30, :cond_1d

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move/from16 v30, v0

    :goto_6
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v30

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v30, v0

    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 1512
    .local v17, maxLayer:I
    :goto_7
    if-lez v12, :cond_c

    .line 1513
    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/WindowManagerService$WindowState;

    .line 1514
    .local v29, wb:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 1529
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-nez v13, :cond_1f

    if-eqz v24, :cond_1f

    .line 1532
    move-object/from16 v13, v24

    .line 1533
    add-int/lit8 v12, v23, 0x1

    .line 1540
    .end local v5           #N:I
    :goto_8
    if-eqz v26, :cond_e

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_d

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 1545
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_e

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 1553
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1554
    .local v7, curTokenIndex:I
    :cond_f
    if-lez v7, :cond_25

    .line 1555
    add-int/lit8 v7, v7, -0x1

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1557
    .local v22, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1558
    or-int/lit8 v6, v6, 0x4

    .line 1559
    if-nez v26, :cond_21

    const/16 v30, 0x1

    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1562
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1565
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1566
    .local v8, curWallpaperIndex:I
    :goto_a
    if-lez v8, :cond_f

    .line 1567
    add-int/lit8 v8, v8, -0x1

    .line 1568
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/WindowManagerService$WindowState;

    .line 1570
    .local v28, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v26, :cond_11

    .line 1571
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v10

    move v3, v9

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1576
    :cond_11
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 1577
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1582
    :try_start_0
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :cond_12
    :goto_b
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1593
    move-object/from16 v0, v28

    move-object v1, v13

    if-ne v0, v1, :cond_23

    .line 1594
    add-int/lit8 v12, v12, -0x1

    .line 1595
    if-lez v12, :cond_22

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    .line 1597
    :goto_c
    goto :goto_a

    .line 1421
    .end local v7           #curTokenIndex:I
    .end local v8           #curWallpaperIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v26           #visible:Z
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #N:I
    .restart local v21       #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_13
    const/16 v30, 0x0

    move/from16 v18, v30

    goto/16 :goto_2

    .line 1423
    .restart local v18       #oldAnim:Z
    :cond_14
    const/16 v30, 0x0

    move/from16 v11, v30

    goto/16 :goto_3

    .line 1466
    .restart local v11       #foundAnim:Z
    .restart local v19       #oldI:I
    :cond_15
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1467
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_4

    .line 1473
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    :cond_17
    const/16 v30, 0x1

    move/from16 v16, v30

    .line 1478
    .local v16, lowerAnimating:Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    :cond_18
    const/16 v30, 0x1

    move/from16 v25, v30

    .line 1481
    .local v25, upperAnimating:Z
    :goto_e
    if-eqz v16, :cond_19

    if-nez v25, :cond_b

    .line 1485
    :cond_19
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1486
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_4

    .line 1475
    .end local v16           #lowerAnimating:Z
    .end local v25           #upperAnimating:Z
    :cond_1a
    const/16 v30, 0x0

    move/from16 v16, v30

    goto :goto_d

    .line 1478
    .restart local v16       #lowerAnimating:Z
    :cond_1b
    const/16 v30, 0x0

    move/from16 v25, v30

    goto :goto_e

    .line 1490
    .end local v16           #lowerAnimating:Z
    :cond_1c
    const/16 v30, 0x0

    move/from16 v26, v30

    goto/16 :goto_5

    .line 1500
    .restart local v26       #visible:Z
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 1522
    .restart local v17       #maxLayer:I
    .restart local v29       #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1e
    move-object/from16 v13, v29

    .line 1523
    add-int/lit8 v12, v12, -0x1

    .line 1524
    goto/16 :goto_7

    .line 1537
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1f
    if-lez v12, :cond_20

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #N:I
    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    :goto_f
    goto/16 :goto_8

    .restart local v5       #N:I
    :cond_20
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto :goto_f

    .line 1559
    .end local v5           #N:I
    .restart local v7       #curTokenIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 1595
    .restart local v8       #curWallpaperIndex:I
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_22
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 1603
    :cond_23
    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 1604
    .local v20, oldIndex:I
    if-ltz v20, :cond_24

    .line 1607
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1608
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_24

    .line 1609
    add-int/lit8 v12, v12, -0x1

    .line 1618
    :cond_24
    move-object v0, v15

    move v1, v12

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1619
    or-int/lit8 v6, v6, 0x2

    .line 1620
    goto/16 :goto_a

    .end local v8           #curWallpaperIndex:I
    .end local v20           #oldIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_25
    move/from16 v30, v6

    .line 1623
    goto/16 :goto_1

    .line 1583
    .restart local v8       #curWallpaperIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v30

    goto/16 :goto_b
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v3, 0x1

    .line 2922
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 2935
    :goto_0
    return v1

    .line 2926
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 2928
    goto :goto_0

    .line 2930
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2934
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 4332
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4333
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4334
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4335
    .local v1, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4337
    :try_start_1
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4333
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4342
    .end local v1           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    :try_start_2
    monitor-exit v2

    .line 4343
    return-void

    .line 4342
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4338
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method computeForcedAppOrientationLocked()I
    .locals 2

    .prologue
    .line 3238
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3239
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3240
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3242
    :cond_0
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 4940
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4941
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4942
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 4946
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4947
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4948
    const/4 v1, 0x0

    .line 4950
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .locals 12
    .parameter "config"

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4954
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_0

    move v8, v9

    .line 5030
    :goto_0
    return v8

    .line 4957
    :cond_0
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v8, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 4960
    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v8, v10, :cond_1

    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-ne v8, v11, :cond_5

    :cond_1
    move v5, v10

    .line 4962
    .local v5, rotated:Z
    :goto_1
    if-eqz v5, :cond_6

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v2, v8

    .line 4963
    .local v2, dw:I
    :goto_2
    if-eqz v5, :cond_7

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v0, v8

    .line 4965
    .local v0, dh:I
    :goto_3
    const/4 v4, 0x3

    .line 4966
    .local v4, orientation:I
    if-ge v2, v0, :cond_8

    .line 4967
    const/4 v4, 0x1

    .line 4971
    :cond_2
    :goto_4
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4973
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4974
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4975
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-static {v1, v4, v8}, Landroid/content/res/CompatibilityInfo;->updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V

    .line 4977
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    if-nez v8, :cond_4

    .line 4981
    move v3, v2

    .line 4982
    .local v3, longSize:I
    move v6, v0

    .line 4983
    .local v6, shortSize:I
    if-ge v3, v6, :cond_3

    .line 4984
    move v7, v3

    .line 4985
    .local v7, tmp:I
    move v3, v6

    .line 4986
    move v6, v7

    .line 4988
    .end local v7           #tmp:I
    :cond_3
    int-to-float v8, v3

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 4989
    int-to-float v8, v6

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 4994
    const/16 v8, 0x1d6

    if-ge v3, v8, :cond_9

    .line 4997
    const/16 v8, 0x11

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5025
    .end local v3           #longSize:I
    .end local v6           #shortSize:I
    :cond_4
    :goto_5
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    iput v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 5027
    iput v10, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 5028
    iput v10, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 5029
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8, p1}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    move v8, v10

    .line 5030
    goto :goto_0

    .end local v0           #dh:I
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #dw:I
    .end local v4           #orientation:I
    .end local v5           #rotated:Z
    :cond_5
    move v5, v9

    .line 4960
    goto :goto_1

    .line 4962
    .restart local v5       #rotated:Z
    :cond_6
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v2, v8

    goto :goto_2

    .line 4963
    .restart local v2       #dw:I
    :cond_7
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v0, v8

    goto :goto_3

    .line 4968
    .restart local v0       #dh:I
    .restart local v4       #orientation:I
    :cond_8
    if-le v2, v0, :cond_2

    .line 4969
    const/4 v4, 0x2

    goto :goto_4

    .line 5001
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #longSize:I
    .restart local v6       #shortSize:I
    :cond_9
    const/16 v8, 0x280

    if-le v3, v8, :cond_b

    const/16 v8, 0x1e0

    if-lt v6, v8, :cond_b

    .line 5004
    iput v11, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5017
    :cond_a
    :goto_6
    mul-int/lit8 v8, v3, 0x3

    div-int/lit8 v8, v8, 0x5

    sub-int v9, v6, v10

    if-lt v8, v9, :cond_d

    .line 5019
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_5

    .line 5006
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5011
    const/16 v8, 0x141

    if-gt v6, v8, :cond_c

    const/16 v8, 0x23a

    if-le v3, v8, :cond_a

    .line 5012
    :cond_c
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    const/high16 v9, 0x1000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_6

    .line 5021
    :cond_d
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_5
.end method

.method public detectSafeMode()Z
    .locals 1

    .prologue
    .line 6574
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    .line 6575
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4243
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4246
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 4247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4248
    monitor-exit v0

    .line 4249
    return-void

    .line 4248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V
    .locals 3
    .parameter "srcWin"
    .parameter "relWin"
    .parameter "pointer"
    .parameter "eventTime"
    .parameter "skipped"

    .prologue
    const/4 v1, 0x0

    .line 1849
    if-eqz p2, :cond_2

    .line 1850
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, p3, v1, v2}, Landroid/view/WindowManagerPolicy;->dispatchedPointerEventLw(Landroid/view/MotionEvent;II)V

    .line 1857
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z

    if-eqz v0, :cond_3

    .line 1858
    if-eqz p6, :cond_0

    .line 1859
    const-string v0, "WindowManager"

    const-string v1, "Sending skipped pointer to wallpaper!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/WindowManagerService;->sendPointerToWallpaperLocked(Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;J)V

    .line 1871
    :cond_1
    :goto_1
    return-void

    .line 1852
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p3, v1, v1}, Landroid/view/WindowManagerPolicy;->dispatchedPointerEventLw(Landroid/view/MotionEvent;II)V

    goto :goto_0

    .line 1865
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v0, p1, :cond_1

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-eq v0, v1, :cond_1

    .line 1869
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/WindowManagerService;->sendPointerToWallpaperLocked(Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;J)V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    const-string v6, "    "

    const-string v8, " "

    .line 11320
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 11322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11554
    :goto_0
    return-void

    .line 11328
    :cond_0
    const-string v6, "Input State:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11329
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    const-string v7, "  "

    invoke-virtual {v6, p2, v7}, Lcom/android/server/WindowManagerService$KeyQ;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11330
    const-string v6, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11332
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 11333
    :try_start_0
    const-string v7, "Current Window Manager state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11334
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 11335
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11336
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Window #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11337
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11338
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11334
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 11340
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 11341
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11342
    const-string v7, "  Input method dialogs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11343
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_2
    if-ltz v0, :cond_2

    .line 11344
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11345
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  IM Dialog #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11343
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 11348
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 11349
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11350
    const-string v7, "  Remove pending for:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11351
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_3
    if-ltz v0, :cond_3

    .line 11352
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11353
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Remove #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11354
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11355
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11351
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 11358
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 11359
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11360
    const-string v7, "  Windows force removing:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11361
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_4
    if-ltz v0, :cond_4

    .line 11362
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11363
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Removing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11364
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11365
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11361
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 11368
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 11369
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11370
    const-string v7, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11371
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_5
    if-ltz v0, :cond_5

    .line 11372
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11373
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Destroy #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11374
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11375
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11371
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 11378
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 11379
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11380
    const-string v7, "  Windows losing focus:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11381
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_6
    if-ltz v0, :cond_6

    .line 11382
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11383
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11384
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11385
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11381
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 11388
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 11389
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11390
    const-string v7, "  Windows waiting to resize:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11391
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_7
    if-ltz v0, :cond_7

    .line 11392
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11393
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Resizing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11394
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11395
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11391
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 11398
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 11399
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11400
    const-string v7, "  All active sessions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11401
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 11402
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 11403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$Session;

    .line 11404
    .local v3, s:Lcom/android/server/WindowManagerService$Session;
    const-string v7, "  Session "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11405
    const-string v7, "    "

    invoke-virtual {v3, p2, v7}, Lcom/android/server/WindowManagerService$Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_8

    .line 11553
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    .end local v3           #s:Lcom/android/server/WindowManagerService$Session;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 11408
    .restart local v0       #i:I
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 11409
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11410
    const-string v7, "  All tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11411
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 11412
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 11413
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11414
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Token "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11415
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 11418
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_9
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 11419
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11420
    const-string v7, "  Window token list:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11421
    const/4 v0, 0x0

    :goto_a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 11422
    const-string v7, "  #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11423
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11421
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 11426
    :cond_a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 11427
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11428
    const-string v7, "  Wallpaper tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11429
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_b
    if-ltz v0, :cond_b

    .line 11430
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11431
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Wallpaper #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11432
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11433
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11429
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 11436
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_b
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 11437
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11438
    const-string v7, "  Application tokens in Z order:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11439
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_c
    if-ltz v0, :cond_c

    .line 11440
    const-string v7, "  App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11441
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11439
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 11444
    :cond_c
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 11445
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11446
    const-string v7, "  Finishing start of application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11447
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_d
    if-ltz v0, :cond_d

    .line 11448
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11449
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Finished Starting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11450
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11451
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11447
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 11454
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_d
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 11455
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11456
    const-string v7, "  Exiting tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11457
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_e
    if-ltz v0, :cond_e

    .line 11458
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11459
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11460
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11461
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11457
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 11464
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_e
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 11465
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11466
    const-string v7, "  Exiting application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11467
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_f
    if-ltz v0, :cond_f

    .line 11468
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11469
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11470
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11471
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11467
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 11474
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_f
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11475
    const-string v7, "  mCurrentFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11476
    const-string v7, "  mLastFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11477
    const-string v7, "  mFocusedApp="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11478
    const-string v7, "  mInputMethodTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11479
    const-string v7, "  mInputMethodWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11480
    const-string v7, "  mWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11481
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_10

    .line 11482
    const-string v7, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11483
    const-string v7, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11485
    :cond_10
    const-string v7, "  mCurConfiguration="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11486
    const-string v7, "  mInTouchMode="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11487
    const-string v7, " mLayoutSeq="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11488
    const-string v7, "  mSystemBooted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11489
    const-string v7, " mDisplayEnabled="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11490
    const-string v7, "  mLayoutNeeded="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11491
    const-string v7, " mBlurShown="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11492
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    if-eqz v7, :cond_18

    .line 11493
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    invoke-virtual {v7, p2}, Lcom/android/server/WindowManagerService$DimAnimator;->printTo(Ljava/io/PrintWriter;)V

    .line 11497
    :goto_10
    const-string v7, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11498
    iget v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11499
    const-string v7, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11500
    iget v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11501
    const-string v7, "  mLastWallpaperX="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 11502
    const-string v7, " mLastWallpaperY="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 11503
    const-string v7, "  mDisplayFrozen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11504
    const-string v7, " mWindowsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11505
    const-string v7, " mAppsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11506
    const-string v7, " mWaitingForConfig="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11507
    const-string v7, "  mRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11508
    const-string v7, ", mForcedAppOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11509
    const-string v7, ", mRequestedRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11510
    const-string v7, "  mAnimationPending="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11511
    const-string v7, " mWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 11512
    const-string v7, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 11513
    const-string v7, "  mNextAppTransition=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11514
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11515
    const-string v7, ", mAppTransitionReady="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11516
    const-string v7, ", mAppTransitionRunning="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11517
    const-string v7, ", mAppTransitionTimeout="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11518
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 11519
    const-string v7, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11520
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11521
    const-string v7, ", mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11522
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11523
    const-string v7, ", mNextAppTransitionExit=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11524
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11526
    :cond_11
    const-string v7, "  mStartingIconInTransition="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11527
    const-string v7, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11528
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v7, :cond_13

    .line 11529
    :cond_12
    const-string v7, "  mLastEnterAnimToken="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 11530
    const-string v7, ", mLastEnterAnimParams="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11532
    :cond_13
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 11533
    const-string v7, "  mOpeningApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11535
    :cond_14
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_15

    .line 11536
    const-string v7, "  mClosingApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11538
    :cond_15
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 11539
    const-string v7, "  mToTopApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11541
    :cond_16
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_17

    .line 11542
    const-string v7, "  mToBottomApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11544
    :cond_17
    const-string v7, "  DisplayWidth="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11545
    const-string v7, " DisplayHeight="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11546
    const-string v7, "  KeyWaiter state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11547
    const-string v7, "    mLastWin="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$400(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 11548
    const-string v7, " mLastBinder="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11549
    const-string v7, "    mFinished="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11550
    const-string v7, " mGotFirstWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11551
    const-string v7, " mEventDispatching="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$800(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11552
    const-string v7, " mTimeToSwitch="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$900(Lcom/android/server/WindowManagerService$KeyWaiter;)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 11553
    monitor-exit v6

    goto/16 :goto_0

    .line 11495
    :cond_18
    const-string v7, "  no DimAnimator "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_10
.end method

.method dumpAppTokensLocked()V
    .locals 4

    .prologue
    .line 3950
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3951
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3953
    :cond_0
    return-void
.end method

.method dumpWindowsLocked()V
    .locals 4

    .prologue
    .line 3956
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3957
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3959
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 2

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4486
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    .line 4487
    monitor-exit v0

    .line 4493
    :goto_0
    return-void

    .line 4489
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 4490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4492
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    .line 4490
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableScreenIfNeededLocked()V
    .locals 3

    .prologue
    .line 4496
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    .line 4503
    :cond_0
    :goto_0
    return-void

    .line 4499
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_0

    .line 4502
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public executeAppTransition()V
    .locals 5

    .prologue
    .line 3367
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3369
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3372
    :cond_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3379
    :try_start_0
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3380
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3382
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3385
    .end local v0           #origId:J
    :cond_1
    monitor-exit v2

    .line 3386
    return-void

    .line 3385
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4312
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4314
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4316
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/WindowManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WindowManagerService$3;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4325
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;
    .locals 2
    .parameter "token"

    .prologue
    .line 2939
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2940
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v0, :cond_0

    .line 2941
    const/4 v1, 0x0

    .line 2943
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    goto :goto_0
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .locals 13
    .parameter "willMove"

    .prologue
    .line 945
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 946
    .local v5, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 947
    .local v0, N:I
    const/4 v8, 0x0

    .line 948
    .local v8, w:Lcom/android/server/WindowManagerService$WindowState;
    move v4, v0

    .line 949
    .local v4, i:I
    :cond_0
    if-lez v4, :cond_1

    .line 950
    add-int/lit8 v4, v4, -0x1

    .line 951
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 955
    .restart local v8       #w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v8}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 963
    if-nez p1, :cond_1

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    if-lez v4, :cond_1

    .line 966
    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 967
    .local v9, wb:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v11, v12, :cond_1

    invoke-static {v9}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 968
    add-int/lit8 v4, v4, -0x1

    .line 969
    move-object v8, v9

    .line 976
    .end local v9           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 981
    if-eqz p1, :cond_8

    if-eqz v8, :cond_8

    .line 982
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 983
    .local v1, curTarget:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_8

    iget-object v11, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_8

    .line 989
    iget-object v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 990
    .local v7, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v3, 0x0

    .line 991
    .local v3, highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v2, 0x0

    .line 992
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v11, :cond_2

    iget-object v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_3

    .line 993
    :cond_2
    const/4 v6, 0x0

    .line 994
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 995
    :goto_0
    if-ltz v6, :cond_3

    .line 996
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowState;

    .line 997
    .local v10, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v11, v7, :cond_4

    .line 1011
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    if-eqz v3, :cond_8

    .line 1018
    iget v11, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 1021
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1022
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1023
    add-int/lit8 v11, v2, 0x1

    .line 1071
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_1
    return v11

    .line 1000
    .restart local v1       #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v10       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget-boolean v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-nez v11, :cond_6

    .line 1001
    if-eqz v3, :cond_5

    iget v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_6

    .line 1003
    :cond_5
    move-object v3, v10

    .line 1004
    move v2, v6

    .line 1007
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 1008
    goto :goto_0

    .line 1024
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_8

    .line 1030
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1031
    add-int/lit8 v11, v2, 0x1

    goto :goto_1

    .line 1038
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8
    if-eqz v8, :cond_b

    .line 1039
    if-eqz p1, :cond_9

    .line 1049
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1050
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_a

    .line 1051
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v11, v11, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1056
    :cond_9
    :goto_2
    add-int/lit8 v11, v4, 0x1

    goto :goto_1

    .line 1053
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_2

    .line 1058
    :cond_b
    if-eqz p1, :cond_c

    .line 1068
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1069
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1071
    :cond_c
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .locals 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2643
    .local v0, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2644
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2645
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2646
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2647
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2649
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2650
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2652
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2654
    return-void

    .line 2652
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getAnimationScale(I)F
    .locals 1
    .parameter "which"

    .prologue
    .line 4389
    packed-switch p1, :pswitch_data_0

    .line 4393
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4390
    :pswitch_0
    iget v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_0

    .line 4391
    :pswitch_1
    iget v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_0

    .line 4389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    .line 4397
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 3
    .parameter "token"

    .prologue
    .line 3276
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3277
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3278
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_0

    .line 3279
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    .line 3282
    :goto_0
    return v1

    :cond_0
    iget v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3283
    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDPadKeycodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4473
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4475
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4477
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getDPadKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4441
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4443
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4445
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getDPadScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getKeycodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4449
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4451
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4453
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4457
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4459
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4461
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService$KeyQ;->getKeycodeState(II)I

    move-result v0

    return v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 3092
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v6, v8, v9

    .line 3093
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3094
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3095
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3096
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3097
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3098
    .local v3, lastFullscreen:Z
    :cond_0
    :goto_0
    if-ltz v6, :cond_8

    .line 3099
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3100
    .local v7, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3103
    if-nez v1, :cond_1

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    .line 3108
    :cond_1
    if-nez v2, :cond_3

    .line 3110
    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_0

    .line 3113
    const/4 v2, 0x1

    .line 3114
    iget v0, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3115
    iget v4, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3127
    :cond_2
    iget v5, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3131
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3132
    if-eqz v3, :cond_4

    if-eq v5, v10, :cond_4

    move v8, v5

    .line 3147
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_1
    return v8

    .line 3116
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    iget v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_2

    .line 3122
    if-eq v4, v10, :cond_2

    if-eqz v3, :cond_2

    move v8, v4

    .line 3124
    goto :goto_1

    .line 3138
    .restart local v5       #or:I
    :cond_4
    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    :cond_5
    move v8, v5

    .line 3143
    goto :goto_1

    .line 3145
    :cond_6
    if-ne v5, v10, :cond_7

    move v8, v9

    :goto_2
    or-int/2addr v1, v8

    .line 3146
    goto :goto_0

    .line 3145
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 3147
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3068
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 3069
    .local v0, pos:I
    :cond_0
    if-ltz v0, :cond_2

    .line 3070
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3071
    .local v2, wtoken:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3072
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_1

    move v3, v5

    .line 3088
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v3

    .line 3077
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v3, :cond_0

    .line 3080
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3081
    .local v1, req:I
    if-eq v1, v5, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    move v3, v1

    .line 3085
    goto :goto_0

    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    move v3, v5

    .line 3088
    goto :goto_0
.end method

.method public getPendingAppTransition()I
    .locals 1

    .prologue
    .line 3354
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 4648
    iget v0, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4417
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4419
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4421
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4425
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4427
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4429
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService$KeyQ;->getScancodeState(II)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4401
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4403
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4405
    :cond_0
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getSwitchState(I)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4409
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4411
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4413
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->getSwitchState(II)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4465
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4467
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4469
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getTrackballKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4433
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4435
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4437
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getTrackballScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2302
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2303
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2304
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    .line 2305
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2306
    monitor-exit v1

    .line 2310
    :goto_0
    return-void

    .line 2308
    :cond_0
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2309
    monitor-exit v1

    goto :goto_0

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasKeys([I[Z)Z
    .locals 1
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4481
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->hasKeys([I[Z)Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    .prologue
    .line 4328
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public initializeHoldMode(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 11765
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManagerPolicy;->setHoldMode(Ljava/lang/String;Z)V

    .line 11766
    return-void
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 26
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5544
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    .line 5545
    .local v5, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 5547
    .local v7, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 5548
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 5549
    .local v10, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    .line 5550
    .local v11, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    .line 5551
    .local v12, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    .line 5552
    .local v13, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 5554
    .local v14, scancode:I
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-nez v15, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 5555
    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-nez v15, :cond_1

    move-wide v5, v7

    .line 5557
    :cond_1
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v15, 0x8

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 5560
    .local v4, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 5561
    .local v21, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 5562
    .local v22, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 5563
    .local v23, ident:J
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->dispatchKey(Landroid/view/KeyEvent;II)I

    move-result v25

    .line 5564
    .local v25, result:I
    if-eqz p2, :cond_2

    .line 5565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 5567
    :cond_2
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5568
    packed-switch v25, :pswitch_data_0

    .line 5575
    :pswitch_0
    const/4 v15, 0x0

    :goto_0
    return v15

    .line 5570
    :pswitch_1
    new-instance v15, Ljava/lang/SecurityException;

    const-string v16, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 5573
    :pswitch_2
    const/4 v15, 0x1

    goto :goto_0

    .line 5568
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .parameter "ev"
    .parameter "sync"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 5588
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 5589
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5590
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5591
    .local v8, ident:J
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/android/server/WindowManagerService;->dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v10

    .line 5592
    .local v10, result:I
    if-eqz p2, :cond_0

    .line 5593
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 5595
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5596
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move v0, v4

    .line 5603
    :goto_0
    return v0

    .line 5598
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v5

    .line 5601
    goto :goto_0

    .line 5596
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .parameter "ev"
    .parameter "sync"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 5616
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 5617
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5618
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5619
    .local v8, ident:J
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/android/server/WindowManagerService;->dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v10

    .line 5620
    .local v10, result:I
    if-eqz p2, :cond_0

    .line 5621
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 5623
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5624
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move v0, v4

    .line 5631
    :goto_0
    return v0

    .line 5626
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v5

    .line 5629
    goto :goto_0

    .line 5624
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 7
    .parameter "client"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9402
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 9405
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 9407
    .local v0, idx:I
    if-lez v0, :cond_0

    .line 9408
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    sub-int v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 9409
    .local v1, imFocus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_0

    .line 9410
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 9412
    monitor-exit v2

    move v2, v6

    .line 9417
    .end local v1           #imFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v2

    .line 9416
    :cond_0
    monitor-exit v2

    move v2, v5

    .line 9417
    goto :goto_0

    .line 9416
    .end local v0           #idx:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isViewServerRunning()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4760
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 4768
    :goto_0
    return v0

    .line 4764
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v1, "isViewServerRunning"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 4765
    goto :goto_0

    .line 4768
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 1
    .parameter "wallpaperTarget"

    .prologue
    .line 1314
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logWindowList(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1154
    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    .line 1155
    add-int/lit8 v0, v0, -0x1

    .line 1156
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1158
    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 11557
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11558
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11559
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11560
    return-void

    .line 11557
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 11558
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 11559
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .locals 7
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4053
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4055
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4058
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4061
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 4062
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4063
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    monitor-exit v3

    .line 4086
    :goto_0
    return-void

    .line 4067
    :cond_2
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4074
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4077
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    .line 4080
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 4081
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4082
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4084
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4085
    monitor-exit v3

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4188
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4190
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4193
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4194
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4195
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4197
    .local v0, N:I
    const/4 v4, 0x0

    .line 4198
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4199
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v5

    .line 4200
    .local v5, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_2

    .line 4201
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4202
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_1

    .line 4203
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4204
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4205
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4206
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 4207
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    .line 4209
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 4198
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4213
    .end local v5           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_4

    .line 4214
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4216
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4217
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4218
    return-void

    .line 4216
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4157
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4159
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4162
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4163
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4164
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4166
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4167
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 4168
    .local v4, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_1

    .line 4169
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4170
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_1

    .line 4171
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4172
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4173
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4174
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    .line 4175
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 4166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4180
    .end local v4           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_3

    .line 4181
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4183
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4184
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4185
    return-void

    .line 4183
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 1161
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1163
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1165
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1173
    :cond_0
    if-ltz p1, :cond_2

    .line 1174
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1175
    .local v3, targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 1176
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1177
    .local v5, wp:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v5, v6, :cond_1

    .line 1178
    add-int/lit8 p1, p1, 0x1

    .line 1182
    .end local v5           #wp:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1183
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1184
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v3, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1185
    invoke-direct {p0, p1, v4}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1193
    .end local v3           #targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1194
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1195
    .restart local v4       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1196
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1193
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1202
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .locals 13
    .parameter "needAssignLayers"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1205
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1206
    .local v6, imWin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1207
    .local v0, DN:I
    if-nez v6, :cond_0

    if-nez v0, :cond_0

    move v8, v9

    .line 1300
    :goto_0
    return v8

    .line 1211
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1212
    .local v5, imPos:I
    if-ltz v5, :cond_c

    .line 1218
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1219
    .local v1, N:I
    if-ge v5, v1, :cond_4

    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v8

    .line 1224
    .local v4, firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    if-eqz v6, :cond_5

    move-object v2, v6

    .line 1226
    .local v2, baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1227
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1228
    .local v3, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v8, v3, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-gez v8, :cond_1

    move-object v2, v3

    .line 1231
    .end local v3           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-ne v4, v2, :cond_8

    .line 1234
    add-int/lit8 v7, v5, 0x1

    .line 1235
    .local v7, pos:I
    :goto_3
    if-ge v7, v1, :cond_2

    .line 1236
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v8, :cond_6

    .line 1241
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1243
    :goto_4
    if-ge v7, v1, :cond_3

    .line 1244
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_7

    .line 1249
    :cond_3
    if-lt v7, v1, :cond_8

    move v8, v9

    .line 1251
    goto :goto_0

    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #pos:I
    :cond_4
    move-object v4, v12

    .line 1219
    goto :goto_1

    .line 1224
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v2, v8

    goto :goto_2

    .line 1239
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #pos:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1247
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1255
    .end local v7           #pos:I
    :cond_8
    if-eqz v6, :cond_b

    .line 1260
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result v5

    .line 1265
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1266
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1271
    if-lez v0, :cond_9

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1296
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    .line 1297
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    :cond_a
    move v8, v11

    .line 1300
    goto/16 :goto_0

    .line 1273
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5

    .line 1280
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-eqz v6, :cond_d

    .line 1282
    invoke-direct {p0, v9, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1283
    iput-object v12, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1284
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1289
    if-lez v0, :cond_9

    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5

    .line 1291
    :cond_d
    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 692
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 693
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 697
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    :cond_0
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 2
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 9396
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9397
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null inputContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9398
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$Session;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 2
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3359
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3360
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3361
    iput p2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3362
    iput p3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    .line 3364
    :cond_0
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 5497
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5499
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5502
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5503
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5504
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 5505
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->pauseDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5507
    :cond_1
    monitor-exit v1

    .line 5508
    return-void

    .line 5507
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public performEnableScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 4506
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4507
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v7, :cond_0

    .line 4508
    monitor-exit v6

    .line 4553
    :goto_0
    return-void

    .line 4510
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-nez v7, :cond_1

    .line 4511
    monitor-exit v6

    goto :goto_0

    .line 4546
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4516
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4517
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 4518
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 4519
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4521
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 4517
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4525
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4534
    :try_start_2
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4535
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_5

    .line 4537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4538
    .local v1, data:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4539
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v1, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4546
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4548
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4551
    const/16 v6, -0x3e8

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v6, v10, v7}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    goto :goto_0

    .line 4543
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 4544
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "WindowManager"

    const-string v8, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public prepareAppTransition(I)V
    .locals 5
    .parameter "transit"

    .prologue
    .line 3320
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3322
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3329
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3330
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-nez v1, :cond_4

    .line 3332
    :cond_1
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 3342
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3346
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3347
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3350
    :cond_3
    monitor-exit v0

    .line 3351
    return-void

    .line 3333
    :cond_4
    const/16 v1, 0x1008

    if-ne p1, v1, :cond_5

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v1, v2, :cond_5

    .line 3336
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    goto :goto_0

    .line 3350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3337
    :cond_5
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v1, v2, :cond_2

    .line 3340
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final rebuildAppWindowListLocked()V
    .locals 11

    .prologue
    .line 9458
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9460
    .local v1, NW:I
    const/4 v4, -0x1

    .line 9461
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 9464
    .local v5, numRemoved:I
    const/4 v2, 0x0

    .line 9465
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9466
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 9467
    .local v6, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v8, :cond_0

    .line 9468
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 9471
    .local v7, win:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v1, v1, -0x1

    .line 9472
    add-int/lit8 v5, v5, 0x1

    .line 9473
    goto :goto_0

    .line 9474
    .end local v7           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dd

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    sub-int v8, v2, v8

    if-ne v4, v8, :cond_1

    .line 9476
    move v4, v2

    .line 9478
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 9479
    goto :goto_0

    .line 9483
    .end local v6           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 9484
    move v2, v4

    .line 9490
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9491
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 9492
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 9491
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9496
    :cond_3
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9497
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 9498
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 9497
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9501
    :cond_4
    sub-int/2addr v2, v4

    .line 9502
    if-eq v2, v5, :cond_5

    .line 9503
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rebuild removed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " windows but added "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9506
    :cond_5
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    .locals 14
    .parameter "win"
    .parameter "operation"

    .prologue
    .line 11021
    iget-object v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 11023
    .local v8, surface:Landroid/view/Surface;
    const/16 v10, 0x7918

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 11026
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    .line 11027
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 11030
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 11035
    .local v1, callingIdentity:J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11036
    .local v0, N:I
    const/4 v5, 0x0

    .line 11037
    .local v5, leakedSurface:Z
    const-string v10, "WindowManager"

    const-string v11, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11038
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11039
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 11040
    .local v9, ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_1

    .line 11041
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 11042
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11047
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 11048
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11049
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 11050
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11051
    add-int/lit8 v3, v3, -0x1

    .line 11052
    add-int/lit8 v0, v0, -0x1

    .line 11053
    const/4 v5, 0x1

    .line 11038
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11054
    :cond_2
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_1

    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v10, :cond_1

    .line 11055
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11058
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 11059
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11060
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 11061
    const/4 v5, 0x1

    goto :goto_1

    .line 11066
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    const/4 v4, 0x0

    .line 11067
    .local v4, killedApps:Z
    if-nez v5, :cond_7

    .line 11068
    const-string v10, "WindowManager"

    const-string v11, "No leaked surfaces; killing applicatons!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11069
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 11070
    .local v6, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 11071
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 11072
    .restart local v9       #ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_4

    .line 11073
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v10, v10, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v11, v11, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v6, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 11070
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11076
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 11077
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 11078
    .local v7, pids:[I
    const/4 v3, 0x0

    :goto_3
    array-length v10, v7

    if-ge v3, v10, :cond_6

    .line 11079
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aput v10, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11078
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 11082
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v11, "Free memory"

    invoke-interface {v10, v7, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_7

    .line 11083
    const/4 v4, 0x1

    .line 11090
    .end local v6           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v7           #pids:[I
    :cond_7
    :goto_4
    if-nez v5, :cond_8

    if-eqz v4, :cond_a

    .line 11093
    :cond_8
    :try_start_2
    const-string v10, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11094
    if-eqz v8, :cond_9

    .line 11095
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    .line 11096
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11097
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11101
    :cond_9
    :try_start_3
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11106
    :cond_a
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11108
    return-void

    .line 11106
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #killedApps:Z
    .end local v5           #leakedSurface:Z
    :catchall_0
    move-exception v10

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 11102
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #killedApps:Z
    .restart local v5       #leakedSurface:Z
    :catch_0
    move-exception v10

    goto :goto_5

    .line 11085
    .restart local v6       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v7       #pids:[I
    :catch_1
    move-exception v10

    goto :goto_4
.end method

.method public reenableControlKeyguard(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "delayed"

    .prologue
    .line 4281
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4283
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4285
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4286
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->enableKeyguard(ZZ)V

    .line 4287
    :cond_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4289
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4297
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 4299
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4300
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4301
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4305
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4306
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4252
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4254
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4257
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4258
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4260
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4268
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 4270
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4271
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4272
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4276
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4277
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 29
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2371
    const/4 v9, 0x0

    .line 2374
    .local v9, displayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2376
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2377
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v24

    .line 2378
    .local v24, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v24, :cond_0

    .line 2379
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    .line 2637
    :goto_0
    return v25

    .line 2381
    :cond_0
    move/from16 v0, p4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 2382
    move/from16 v0, p5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 2384
    if-eqz p3, :cond_1

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2388
    :cond_1
    const/4 v6, 0x0

    .line 2389
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2390
    .local v11, flagChanges:I
    if-eqz p3, :cond_2

    .line 2391
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v28, v0

    xor-int v11, v27, v28

    move v0, v11

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2392
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2397
    :cond_2
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2398
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 2401
    :cond_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x4000

    move/from16 v26, v0

    if-eqz v26, :cond_19

    const/16 v26, 0x1

    move/from16 v20, v26

    .line 2404
    .local v20, scaledWindow:Z
    :goto_1
    if-eqz v20, :cond_1c

    .line 2407
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p4

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    .line 2409
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 2415
    :goto_4
    const v26, 0x20008

    and-int v26, v26, v11

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    move/from16 v13, v26

    .line 2419
    .local v13, imMayMove:Z
    :goto_5
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-ne v0, v1, :cond_4

    and-int/lit8 v26, v11, 0x8

    if-nez v26, :cond_4

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    move/from16 v26, v0

    if-nez v26, :cond_1e

    :cond_4
    const/16 v26, 0x1

    move/from16 v12, v26

    .line 2423
    .local v12, focusMayChange:Z
    :goto_6
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x10

    and-int v26, v26, v27

    if-eqz v26, :cond_1f

    const/16 v26, 0x1

    move/from16 v23, v26

    .line 2426
    .local v23, wallpaperMayMove:Z
    :goto_7
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    .line 2427
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2428
    .local v16, oldVisibility:I
    move/from16 v0, p6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 2429
    if-nez p6, :cond_22

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move/from16 v26, v0

    if-nez v26, :cond_22

    .line 2431
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v26

    if-nez v26, :cond_20

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 2432
    :goto_8
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2433
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2434
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 2436
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 2437
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2440
    :cond_7
    const/16 v26, 0x8

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 2441
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2443
    :cond_8
    if-eqz v9, :cond_c

    .line 2444
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2447
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2449
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_a

    .line 2453
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 2455
    :cond_a
    const/4 v8, 0x0

    .line 2456
    .local v8, diff:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_c

    .line 2459
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2468
    .end local v8           #diff:I
    :cond_c
    and-int/lit8 v26, v6, 0x8

    if-eqz v26, :cond_d

    .line 2470
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2471
    const/4 v9, 0x1

    .line 2474
    :cond_d
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2475
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_21

    .line 2476
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2477
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2478
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2493
    :goto_9
    if-eqz v9, :cond_e

    .line 2494
    const/4 v12, 0x1

    .line 2496
    :cond_e
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x7db

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-nez v26, :cond_f

    .line 2498
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2499
    const/4 v13, 0x1

    .line 2501
    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2507
    const v15, 0x480001

    .line 2511
    .local v15, mask:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2512
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const v27, -0x480002

    and-int v26, v26, v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v28, 0x480001

    and-int v27, v27, v28

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2572
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_10
    :goto_a
    if-eqz v12, :cond_11

    .line 2574
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2575
    const/4 v13, 0x0

    .line 2582
    :cond_11
    const/4 v5, 0x0

    .line 2584
    .local v5, assignLayers:Z
    if-eqz v13, :cond_13

    .line 2585
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v26

    if-nez v26, :cond_12

    if-eqz v9, :cond_13

    .line 2591
    :cond_12
    const/4 v5, 0x1

    .line 2594
    :cond_13
    if-eqz v23, :cond_14

    .line 2595
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v26

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_14

    .line 2596
    const/4 v5, 0x1

    .line 2600
    :cond_14
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2601
    move/from16 v0, p7

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2602
    if-eqz v5, :cond_15

    .line 2603
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2605
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v7

    .line 2606
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2607
    if-eqz v9, :cond_16

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/Display;->getHeight()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 2611
    :cond_16
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 2612
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2614
    :cond_17
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2615
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2616
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2628
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v14, v0

    .line 2629
    .local v14, inTouchMode:Z
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2631
    if-eqz v7, :cond_18

    .line 2632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2635
    :cond_18
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2637
    if-eqz v14, :cond_2c

    const/16 v25, 0x1

    :goto_b
    if-eqz v9, :cond_2d

    const/16 v26, 0x2

    :goto_c
    or-int v25, v25, v26

    goto/16 :goto_0

    .line 2401
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v23           #wallpaperMayMove:Z
    :cond_19
    const/16 v26, 0x0

    move/from16 v20, v26

    goto/16 :goto_1

    .line 2407
    .restart local v20       #scaledWindow:Z
    :cond_1a
    const/high16 v26, 0x3f80

    goto/16 :goto_2

    .line 2409
    :cond_1b
    const/high16 v26, 0x3f80

    goto/16 :goto_3

    .line 2412
    :cond_1c
    const/high16 v26, 0x3f80

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    goto/16 :goto_4

    .line 2629
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v20           #scaledWindow:Z
    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v26

    .line 2415
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    .restart local v20       #scaledWindow:Z
    .restart local v24       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1d
    const/16 v26, 0x0

    move/from16 v13, v26

    goto/16 :goto_5

    .line 2419
    .restart local v13       #imMayMove:Z
    :cond_1e
    const/16 v26, 0x0

    move/from16 v12, v26

    goto/16 :goto_6

    .line 2423
    .restart local v12       #focusMayChange:Z
    :cond_1f
    const/16 v26, 0x0

    move/from16 v23, v26

    goto/16 :goto_7

    .line 2431
    .restart local v16       #oldVisibility:I
    .restart local v23       #wallpaperMayMove:Z
    :cond_20
    const/16 v26, 0x0

    move/from16 v9, v26

    goto/16 :goto_8

    .line 2484
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_21
    :try_start_4
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .line 2486
    .end local v21           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v26

    move-object/from16 v10, v26

    .line 2487
    .local v10, e:Ljava/lang/Exception;
    :try_start_5
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception thrown when creating surface for client "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2490
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2491
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    goto/16 :goto_0

    .line 2515
    .end local v10           #e:Ljava/lang/Exception;
    :cond_22
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2516
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2522
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_23

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2525
    :cond_23
    const/16 v22, 0x2002

    .line 2526
    .local v22, transit:I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 2527
    const/16 v22, 0x5

    .line 2529
    :cond_24
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-nez v26, :cond_27

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v26

    if-eqz v26, :cond_27

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 2531
    const/4 v12, 0x1

    .line 2532
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2554
    .end local v22           #transit:I
    :cond_25
    :goto_d
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_26

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x1000

    and-int v26, v26, v27

    if-eqz v26, :cond_26

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2b

    .line 2561
    :cond_26
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    .line 2562
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V

    goto/16 :goto_a

    .line 2535
    .restart local v22       #transit:I
    :cond_27
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v26

    if-eqz v26, :cond_28

    .line 2538
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    goto :goto_d

    .line 2539
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_29

    .line 2543
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2544
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    goto :goto_d

    .line 2546
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 2547
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2549
    :cond_2a
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    goto :goto_d

    .line 2564
    .end local v22           #transit:I
    :cond_2b
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2567
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2568
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    .line 2637
    .restart local v5       #assignLayers:Z
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_2c
    const/16 v25, 0x0

    goto/16 :goto_b

    :cond_2d
    const/16 v26, 0x0

    goto/16 :goto_c
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 3857
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3859
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3862
    :cond_0
    const/4 v1, 0x0

    .line 3863
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v11, 0x0

    .line 3864
    .local v11, startingToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v7, 0x0

    .line 3866
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3867
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 3868
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3869
    .local v6, basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3870
    if-eqz v6, :cond_9

    iget-object v1, v6, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_9

    .line 3872
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 3873
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3874
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3875
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3876
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3877
    const/4 v7, 0x1

    .line 3887
    :cond_1
    :goto_0
    if-eqz v7, :cond_8

    .line 3889
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3897
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3898
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_2

    .line 3899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 3902
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    .line 3903
    iget-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v0, :cond_3

    .line 3904
    move-object v11, v1

    .line 3906
    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3907
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_4

    .line 3909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3910
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3911
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V

    .line 3917
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    if-eqz v1, :cond_5

    .line 3918
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3920
    :cond_5
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3921
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3923
    if-eqz v11, :cond_6

    .line 3926
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3927
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3929
    .end local v8           #m:Landroid/os/Message;
    :cond_6
    return-void

    .line 3878
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_1

    .line 3879
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3880
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    .line 3881
    const/4 v7, 0x1

    goto :goto_0

    .line 3894
    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3895
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    goto :goto_1

    .line 3920
    .end local v6           #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3914
    .restart local v6       #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_9
    :try_start_2
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .locals 3
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2084
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2085
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2086
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    .line 2087
    monitor-exit v1

    .line 2091
    :goto_0
    return-void

    .line 2089
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2090
    monitor-exit v1

    goto :goto_0

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2113
    .local v0, origId:J
    const/4 v3, 0x0

    .line 2118
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2121
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2123
    const/16 v2, 0x2002

    .line 2124
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v7, :cond_0

    .line 2125
    const/4 v2, 0x5

    .line 2128
    :cond_0
    invoke-direct {p0, p2, v2, v6}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2129
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2132
    .end local v2           #transit:I
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2135
    :cond_2
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2136
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    .line 2137
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2138
    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2139
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2140
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v4, :cond_3

    .line 2141
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2144
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2159
    :goto_0
    return-void

    .line 2149
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2152
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2155
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2157
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    .line 2968
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2970
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2973
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2974
    .local v4, origId:J
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2975
    :try_start_0
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2976
    .local v7, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2977
    if-eqz v7, :cond_7

    .line 2978
    const/4 v2, 0x0

    .line 2979
    .local v2, delayed:Z
    iget-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_5

    .line 2980
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 2982
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2983
    .local v0, N:I
    const/4 v1, 0x0

    .line 2985
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2986
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 2988
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2989
    const/4 v2, 0x1

    .line 2992
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2993
    const/16 v9, 0x2002

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2995
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v10, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v11, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2997
    const/4 v1, 0x1

    .line 2985
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3001
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    if-eqz v1, :cond_4

    .line 3002
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3003
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3004
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3007
    :cond_4
    if-eqz v2, :cond_6

    .line 3008
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3017
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    :cond_5
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3018
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3019
    return-void

    .line 3009
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_6
    :try_start_1
    iget v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v9, v10, :cond_5

    .line 3010
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3017
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 3015
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method requestAnimationLocked(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 10984
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_0

    .line 10985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 10986
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10988
    :cond_0
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 5511
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5513
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5516
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5517
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5518
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 5519
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->resumeDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5521
    :cond_1
    monitor-exit v1

    .line 5522
    return-void

    .line 5521
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method sendNewConfiguration()V
    .locals 2

    .prologue
    .line 4934
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4937
    :goto_0
    return-void

    .line 4935
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sendPointerToWallpaperLocked(Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;J)V
    .locals 9
    .parameter "srcWin"
    .parameter "pointer"
    .parameter "eventTime"

    .prologue
    .line 1811
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1812
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_3

    .line 1813
    add-int/lit8 v0, v0, -0x1

    .line 1814
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1815
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1816
    .local v1, curWallpaperIndex:I
    :cond_1
    :goto_0
    if-lez v1, :cond_0

    .line 1817
    add-int/lit8 v1, v1, -0x1

    .line 1818
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1819
    .local v5, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    .line 1824
    :try_start_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1825
    .local v3, ev:Landroid/view/MotionEvent;
    if-eqz p1, :cond_2

    .line 1826
    iget-object v6, p1, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p1, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1831
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1839
    :goto_2
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v7, 0x0

    invoke-interface {v6, v3, p3, p4, v7}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1840
    .end local v3           #ev:Landroid/view/MotionEvent;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1841
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "Failure sending pointer to wallpaper"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1829
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ev:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 1833
    :pswitch_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z

    goto :goto_2

    .line 1836
    :pswitch_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1845
    .end local v1           #curWallpaperIndex:I
    .end local v3           #ev:Landroid/view/MotionEvent;
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return-void

    .line 1831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne p1, v0, :cond_3

    .line 2339
    :cond_0
    move/from16 v9, p7

    .line 2340
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2341
    .local v7, curTokenIndex:I
    :cond_1
    if-lez v7, :cond_2

    .line 2342
    add-int/lit8 v7, v7, -0x1

    .line 2343
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2344
    .local v10, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2345
    .local v8, curWallpaperIndex:I
    :goto_0
    if-lez v8, :cond_1

    .line 2346
    add-int/lit8 v8, v8, -0x1

    .line 2347
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 2349
    .local v11, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2352
    const/16 p7, 0x0

    goto :goto_0

    .line 2358
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-eqz v9, :cond_3

    .line 2363
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 2353
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimationScale(IF)V
    .locals 2
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4352
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4354
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4357
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    .line 4359
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4360
    packed-switch p1, :pswitch_data_0

    .line 4366
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4367
    return-void

    .line 4358
    :cond_2
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 p2, 0x41a0

    goto :goto_0

    .line 4361
    :pswitch_0
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1

    .line 4362
    :pswitch_1
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1

    .line 4360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4370
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4372
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4375
    :cond_0
    if-eqz p1, :cond_2

    .line 4376
    array-length v0, p1

    if-lt v0, v2, :cond_1

    .line 4377
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 4379
    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 4380
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 4385
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4386
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3052
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3054
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3057
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3058
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3059
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3060
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    monitor-exit v1

    .line 3065
    :goto_0
    return-void

    .line 3063
    :cond_1
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3064
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3259
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3261
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3264
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3265
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3266
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3267
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    monitor-exit v1

    .line 3273
    :goto_0
    return-void

    .line 3271
    :cond_1
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3272
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V
    .locals 18
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3391
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setAppStartingIcon()"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3393
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3396
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3401
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v16

    .line 3402
    .local v16, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v16, :cond_1

    .line 3403
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    monitor-exit v17

    .line 3550
    :goto_0
    return-void

    .line 3410
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v4, v0

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3411
    :cond_2
    monitor-exit v17

    goto :goto_0

    .line 3549
    .end local v16           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3414
    .restart local v16       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 3415
    monitor-exit v17

    goto :goto_0

    .line 3418
    :cond_4
    if-eqz p7, :cond_c

    .line 3419
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v15

    .line 3420
    .local v15, ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v15, :cond_c

    .line 3421
    iget-object v14, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3422
    .local v14, startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v14, :cond_b

    .line 3423
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 3427
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3432
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3436
    .local v12, origId:J
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3437
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3438
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3439
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3440
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3441
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3442
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3443
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3444
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3445
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3449
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3450
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3451
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 3458
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_6

    .line 3459
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3461
    :cond_6
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v4, :cond_7

    .line 3462
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 3464
    :cond_7
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v4, :cond_8

    .line 3465
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3466
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3467
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3469
    :cond_8
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v4, v0

    iget-boolean v5, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eq v4, v5, :cond_9

    .line 3470
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3471
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3473
    :cond_9
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_a

    .line 3474
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3475
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 3476
    iget v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3477
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3478
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3479
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3480
    invoke-virtual {v15}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3483
    :cond_a
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3484
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3485
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3486
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3487
    monitor-exit v17

    goto/16 :goto_0

    .line 3488
    .end local v12           #origId:J
    :cond_b
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v4, :cond_c

    .line 3494
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3495
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3496
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3501
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3502
    monitor-exit v17

    goto/16 :goto_0

    .line 3509
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v15           #ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c
    if-nez p8, :cond_d

    .line 3510
    monitor-exit v17

    goto/16 :goto_0

    .line 3517
    :cond_d
    if-eqz p3, :cond_11

    .line 3518
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    move-object v0, v4

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3521
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    if-nez v10, :cond_e

    .line 3522
    const-string v4, "WindowManager"

    const-string v5, "setAppStartingWindow() : ent==null !! stop starting activity to prevent a system crash."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    monitor-exit v17

    goto/16 :goto_0

    .line 3526
    :cond_e
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3528
    monitor-exit v17

    goto/16 :goto_0

    .line 3530
    :cond_f
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3532
    monitor-exit v17

    goto/16 :goto_0

    .line 3534
    :cond_10
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3536
    monitor-exit v17

    goto/16 :goto_0

    .line 3540
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_11
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3541
    new-instance v4, Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WindowManagerService$StartingData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;II)V

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3548
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3549
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3666
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppVisibility()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3668
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3673
    :cond_0
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3674
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3675
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_1

    .line 3676
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    monitor-exit v8

    .line 3749
    :goto_0
    return-void

    .line 3694
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v5, :cond_6

    .line 3697
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eq v0, p2, :cond_2

    .line 3698
    monitor-exit v8

    goto :goto_0

    .line 3748
    .end local v1           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3700
    .restart local v1       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    if-nez p2, :cond_4

    move v0, v4

    :goto_1
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3704
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->setDummyAnimation()V

    .line 3705
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3706
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3707
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3708
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3709
    if-eqz p2, :cond_5

    .line 3710
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3711
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 3712
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3717
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-eqz v0, :cond_3

    .line 3718
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3719
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3721
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_3

    .line 3728
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3729
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3741
    :cond_3
    :goto_2
    monitor-exit v8

    goto :goto_0

    :cond_4
    move v0, v3

    .line 3700
    goto :goto_1

    .line 3733
    :cond_5
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3737
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v0, :cond_3

    .line 3738
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    goto :goto_2

    .line 3744
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3745
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 3746
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3747
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3748
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 3553
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3555
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3560
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3561
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3562
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3563
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    monitor-exit v1

    .line 3568
    :goto_0
    return-void

    .line 3566
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3567
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setEventDispatching(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 5525
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5527
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5530
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->setEventDispatchingLocked(Z)V

    .line 5532
    monitor-exit v0

    .line 5533
    return-void

    .line 5532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3287
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setFocusedApp()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3289
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3292
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3293
    const/4 v0, 0x0

    .line 3294
    .local v0, changed:Z
    if-nez p1, :cond_3

    .line 3296
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_2

    move v0, v7

    .line 3297
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3298
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V

    .line 3311
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 3312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3313
    .local v2, origId:J
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3314
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3316
    .end local v2           #origId:J
    :cond_1
    monitor-exit v4

    .line 3317
    :goto_2
    return-void

    :cond_2
    move v0, v6

    .line 3296
    goto :goto_0

    .line 3300
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3301
    .local v1, newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_4

    .line 3302
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    monitor-exit v4

    goto :goto_2

    .line 3316
    .end local v1           #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3305
    .restart local v1       #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v1, :cond_5

    move v0, v7

    .line 3306
    :goto_3
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3308
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    move v0, v6

    .line 3305
    goto :goto_3
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4556
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4557
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 4558
    monitor-exit v0

    .line 4559
    return-void

    .line 4558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1091
    iput p1, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1092
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1093
    .local v2, imw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    .line 1094
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1097
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1098
    .local v3, wi:I
    :goto_0
    if-lez v3, :cond_0

    .line 1099
    add-int/lit8 v3, v3, -0x1

    .line 1100
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 1101
    .local v0, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1106
    .end local v0           #cw:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #wi:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1107
    .local v1, di:I
    :goto_1
    if-lez v1, :cond_1

    .line 1108
    add-int/lit8 v1, v1, -0x1

    .line 1109
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1110
    .restart local v2       #imw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_1

    .line 1114
    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 2282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2284
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2285
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2286
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    .line 2287
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2288
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2289
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2290
    iput p3, v2, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 2291
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2292
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2294
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2298
    return-void

    .line 2294
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2296
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 3246
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3248
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3251
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3252
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3253
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3254
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3255
    monitor-exit v0

    .line 3256
    return-void

    .line 3255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRotation(IZI)V
    .locals 2
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4563
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "setRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4565
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4568
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4569
    return-void
.end method

.method public setRotationUnchecked(IZI)V
    .locals 5
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4578
    .local v1, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4579
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z

    move-result v0

    .line 4580
    .local v0, changed:Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4582
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 4583
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 4586
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4587
    return-void

    .line 4580
    .end local v0           #changed:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setRotationUncheckedLocked(II)Z
    .locals 10
    .parameter "rotation"
    .parameter "animFlags"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4599
    const/16 v3, -0x3e8

    if-ne p1, v3, :cond_2

    .line 4600
    iget p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4606
    :goto_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    iget v5, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-interface {v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result p1

    .line 4609
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v3, p1, :cond_3

    move v0, v7

    .line 4611
    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 4617
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 4618
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 4619
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v9}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 4620
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4622
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 4623
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4624
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 4625
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting rotation to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v3, p1}, Lcom/android/server/WindowManagerService$KeyQ;->setOrientation(I)V

    .line 4627
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_0

    .line 4628
    invoke-static {v8, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    .line 4630
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v7

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 4631
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4632
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 4633
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 4630
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 4602
    .end local v0           #changed:Z
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4603
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    goto/16 :goto_0

    :cond_3
    move v0, v8

    .line 4609
    goto :goto_1

    .line 4636
    .restart local v0       #changed:Z
    .restart local v1       #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v7

    :goto_3
    if-ltz v1, :cond_5

    .line 4638
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IRotationWatcher;

    invoke-interface {v3, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4636
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 4644
    .end local v1           #i:I
    :cond_5
    return v0

    .line 4639
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .locals 17
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3572
    const/4 v7, 0x0

    .line 3574
    .local v7, delayed:Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v12, v0

    move v0, v12

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 3575
    if-nez p3, :cond_4

    const/4 v12, 0x1

    :goto_0
    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3576
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3579
    :cond_0
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3580
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    move v12, v0

    move v0, v12

    move/from16 v1, p3

    if-ne v0, v1, :cond_c

    .line 3581
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3582
    .local v5, N:I
    const/4 v6, 0x0

    .line 3587
    .local v6, changed:Z
    const/4 v9, 0x0

    .line 3589
    .local v9, runningAppAnimation:Z
    const/4 v12, -0x1

    move/from16 v0, p4

    move v1, v12

    if-eq v0, v1, :cond_2

    .line 3590
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    sget-object v13, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v12, v13, :cond_1

    .line 3591
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3593
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3594
    const/4 v6, 0x1

    .line 3595
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    if-eqz v12, :cond_2

    .line 3596
    const/4 v9, 0x1

    move v7, v9

    .line 3600
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_a

    .line 3601
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 3602
    .local v11, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v12, v0

    if-ne v11, v12, :cond_5

    .line 3600
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3575
    .end local v5           #N:I
    .end local v6           #changed:Z
    .end local v8           #i:I
    .end local v9           #runningAppAnimation:Z
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 3606
    .restart local v5       #N:I
    .restart local v6       #changed:Z
    .restart local v8       #i:I
    .restart local v9       #runningAppAnimation:Z
    .restart local v11       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3607
    const/4 v7, 0x1

    .line 3612
    :cond_6
    if-eqz p3, :cond_8

    .line 3613
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3614
    if-nez v9, :cond_7

    .line 3615
    const/16 v12, 0x1001

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3618
    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    .line 3620
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3621
    if-nez v9, :cond_9

    .line 3622
    const/16 v12, 0x2002

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3625
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v12, v0

    iget-object v13, v11, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v14, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 3627
    const/4 v6, 0x1

    goto :goto_2

    .line 3631
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a
    if-nez p3, :cond_e

    const/4 v12, 0x1

    :goto_3
    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3632
    if-nez p3, :cond_f

    .line 3633
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3649
    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 3650
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3651
    if-eqz p5, :cond_c

    .line 3652
    const/4 v12, 0x3

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3653
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3658
    .end local v5           #N:I
    .end local v6           #changed:Z
    .end local v8           #i:I
    .end local v9           #runningAppAnimation:Z
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    if-eqz v12, :cond_d

    .line 3659
    const/4 v7, 0x1

    .line 3662
    :cond_d
    return v7

    .line 3631
    .restart local v5       #N:I
    .restart local v6       #changed:Z
    .restart local v8       #i:I
    .restart local v9       #runningAppAnimation:Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_3

    .line 3637
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v10, v0

    .line 3638
    .local v10, swin:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v10, :cond_b

    iget-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v12, :cond_10

    iget-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-eqz v12, :cond_b

    .line 3640
    :cond_10
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 3641
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_4
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1629
    iput p1, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1630
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1631
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_1

    .line 1632
    add-int/lit8 v0, v0, -0x1

    .line 1633
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1634
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1635
    .local v1, curWallpaperIndex:I
    :goto_0
    if-lez v1, :cond_0

    .line 1636
    add-int/lit8 v1, v1, -0x1

    .line 1637
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1638
    .local v3, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1643
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/WindowManagerService$WindowState;FFFF)V
    .locals 1
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2314
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 2315
    :cond_0
    iput p2, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 2316
    iput p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 2317
    iput p4, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 2318
    iput p5, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 2319
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2320
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2323
    :cond_1
    return-void
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 5
    .parameter "win"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 11000
    :try_start_0
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 11001
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11002
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 11003
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_0

    .line 11006
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 11007
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v2

    .line 11017
    :goto_0
    return v1

    .line 11011
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 11012
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11015
    const-string v1, "show"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    move v1, v4

    .line 11017
    goto :goto_0
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 7
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 3815
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3817
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3820
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3821
    if-nez p2, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3823
    monitor-exit v3

    .line 3835
    :goto_0
    return-void

    .line 3826
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3827
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_3

    .line 3828
    :cond_2
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    monitor-exit v3

    goto :goto_0

    .line 3834
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3831
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3832
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3834
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V
    .locals 8
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 3795
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    .line 3796
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_0

    .line 3797
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3798
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3799
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_0

    .line 3800
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3801
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3802
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3806
    :cond_0
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3807
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3808
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3809
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3812
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    return-void
.end method

.method public startViewServer(I)Z
    .locals 6
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    const-string v5, "WindowManager"

    const-string v4, "View server did not start"

    .line 4692
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 4721
    :goto_0
    return v1

    .line 4696
    :cond_0
    const-string v1, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 4697
    goto :goto_0

    .line 4700
    :cond_1
    const/16 v1, 0x400

    if-ge p1, v1, :cond_2

    move v1, v3

    .line 4701
    goto :goto_0

    .line 4704
    :cond_2
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v1, :cond_4

    .line 4705
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4707
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4708
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4709
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    move v1, v3

    .line 4712
    goto :goto_0

    .line 4716
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    .line 4717
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 4718
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 4719
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 4721
    goto :goto_0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "force"

    .prologue
    .line 3838
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3840
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3843
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3844
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3845
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_2

    .line 3846
    :cond_1
    monitor-exit v3

    .line 3854
    :goto_0
    return-void

    .line 3848
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3851
    .local v0, origId:J
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3852
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3853
    monitor-exit v3

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public stopViewServer()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4738
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 4749
    :goto_0
    return v0

    .line 4742
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 4743
    goto :goto_0

    .line 4746
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_2

    .line 4747
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->stop()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4749
    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 6579
    const-string v0, "WindowManager"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6581
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V
    .locals 7
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3753
    iget-boolean v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_6

    .line 3756
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3757
    .local v0, N:I
    const/4 v2, 0x0

    .line 3758
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3759
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 3760
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    .line 3761
    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3762
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_0

    .line 3763
    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 3765
    :cond_0
    const/4 v2, 0x1

    .line 3758
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3768
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_4

    .line 3770
    :cond_3
    iput-boolean v6, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3771
    iget v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3773
    :cond_4
    if-eqz p2, :cond_6

    .line 3774
    if-eqz v2, :cond_5

    .line 3775
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3776
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3778
    :cond_5
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3781
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_6
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 7
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3152
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3154
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3157
    :cond_0
    const/4 v0, 0x0

    .line 3158
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3160
    .local v2, ident:J
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3161
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3162
    if-eqz p2, :cond_1

    .line 3163
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 3165
    .local v4, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_1

    .line 3166
    const/16 v6, 0x80

    invoke-virtual {p0, v4, v6}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3170
    .end local v4           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3185
    :cond_2
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3187
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3188
    return-object v0

    .line 3172
    :cond_3
    if-eqz p1, :cond_2

    .line 3175
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3176
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3177
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 3178
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3179
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3180
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3181
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .end local v0           #config:Landroid/content/res/Configuration;
    .local v1, config:Landroid/content/res/Configuration;
    move-object v0, v1

    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_0

    .line 3185
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method updateOrientationFromAppTokensLocked()Z
    .locals 6

    .prologue
    .line 3206
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v4, :cond_0

    .line 3212
    const/4 v4, 0x0

    .line 3231
    :goto_0
    return v4

    .line 3215
    :cond_0
    const/4 v0, 0x0

    .line 3216
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3218
    .local v1, ident:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3220
    .local v3, req:I
    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_1

    .line 3221
    iput v3, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 3224
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3225
    const/16 v4, -0x3e8

    iget v5, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 3227
    const/4 v0, 0x1

    .line 3233
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v0

    .line 3231
    goto :goto_0

    .line 3233
    .end local v3           #req:I
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z
    .locals 20
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1647
    const/4 v11, 0x0

    .line 1648
    .local v11, changed:Z
    const/4 v13, 0x0

    .line 1649
    .local v13, rawChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    move/from16 v16, v3

    .line 1650
    .local v16, wpx:F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    move/from16 v17, v3

    .line 1651
    .local v17, wpxs:F
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v10, v3, p2

    .line 1652
    .local v10, availw:I
    if-lez v10, :cond_b

    int-to-float v3, v10

    mul-float v3, v3, v16

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1653
    .local v12, offset:I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    move v3, v0

    if-eq v3, v12, :cond_c

    const/4 v3, 0x1

    move v11, v3

    .line 1654
    :goto_3
    if-eqz v11, :cond_0

    .line 1657
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    .line 1659
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v3, v0

    cmpl-float v3, v3, v16

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v3, v0

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_2

    .line 1660
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 1661
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 1662
    const/4 v13, 0x1

    .line 1665
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    move/from16 v18, v3

    .line 1666
    .local v18, wpy:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    move/from16 v19, v3

    .line 1667
    .local v19, wpys:F
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v9, v3, p3

    .line 1668
    .local v9, availh:I
    if-lez v9, :cond_f

    int-to-float v3, v9

    mul-float v3, v3, v18

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1669
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    move v3, v0

    if-eq v3, v12, :cond_3

    .line 1672
    const/4 v11, 0x1

    .line 1673
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    .line 1675
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v3, v0

    cmpl-float v3, v3, v18

    if-nez v3, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v3, v0

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_5

    .line 1676
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 1677
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 1678
    const/4 v13, 0x1

    .line 1681
    :cond_5
    if-eqz v13, :cond_8

    .line 1686
    if-eqz p4, :cond_6

    .line 1687
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1689
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v7, v0

    move/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1692
    if-eqz p4, :cond_8

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1695
    .local v14, start:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    move-wide v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v14

    if-gez v3, :cond_7

    .line 1700
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v3, v0

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1704
    :goto_7
    const-wide/16 v3, 0x96

    add-long/2addr v3, v14

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 1706
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1711
    :cond_7
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1718
    .end local v14           #start:J
    :cond_8
    :goto_8
    return v11

    .line 1649
    .end local v9           #availh:I
    .end local v10           #availw:I
    .end local v12           #offset:I
    .end local v16           #wpx:F
    .end local v17           #wpxs:F
    .end local v18           #wpy:F
    .end local v19           #wpys:F
    :cond_9
    const/high16 v3, 0x3f00

    move/from16 v16, v3

    goto/16 :goto_0

    .line 1650
    .restart local v16       #wpx:F
    :cond_a
    const/high16 v3, -0x4080

    move/from16 v17, v3

    goto/16 :goto_1

    .line 1652
    .restart local v10       #availw:I
    .restart local v17       #wpxs:F
    :cond_b
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_2

    .line 1653
    .restart local v12       #offset:I
    :cond_c
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_3

    .line 1665
    :cond_d
    const/high16 v3, 0x3f00

    move/from16 v18, v3

    goto/16 :goto_4

    .line 1666
    .restart local v18       #wpy:F
    :cond_e
    const/high16 v3, -0x4080

    move/from16 v19, v3

    goto/16 :goto_5

    .line 1668
    .restart local v9       #availh:I
    .restart local v19       #wpys:F
    :cond_f
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_6

    .line 1714
    :catch_0
    move-exception v3

    goto :goto_8

    .line 1701
    .restart local v14       #start:J
    :catch_1
    move-exception v3

    goto :goto_7
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z
    .locals 10
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1732
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1733
    .local v4, dw:I
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1735
    .local v3, dh:I
    const/4 v0, 0x0

    .line 1737
    .local v0, changed:Z
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1738
    .local v5, target:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_1

    .line 1739
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 1740
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1744
    :cond_0
    :goto_0
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 1745
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1751
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1752
    .local v1, curTokenIndex:I
    :cond_2
    if-lez v1, :cond_6

    .line 1753
    add-int/lit8 v1, v1, -0x1

    .line 1754
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1755
    .local v6, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1756
    .local v2, curWallpaperIndex:I
    :cond_3
    :goto_2
    if-lez v2, :cond_2

    .line 1757
    add-int/lit8 v2, v2, -0x1

    .line 1758
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 1759
    .local v7, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {p0, v7, v4, v3, p2}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1760
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 1761
    const/4 v0, 0x1

    .line 1763
    const/4 p2, 0x0

    goto :goto_2

    .line 1741
    .end local v1           #curTokenIndex:I
    .end local v2           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 1742
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    goto :goto_0

    .line 1746
    :cond_5
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 1747
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1

    .line 1768
    .restart local v1       #curTokenIndex:I
    :cond_6
    return v0
.end method

.method updateWallpaperVisibilityLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1772
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    .line 1773
    .local v5, visible:Z
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1774
    .local v3, dw:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1776
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1777
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_5

    .line 1778
    add-int/lit8 v0, v0, -0x1

    .line 1779
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1780
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-ne v7, v5, :cond_1

    .line 1781
    if-nez v5, :cond_4

    move v7, v9

    :goto_0
    iput-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1784
    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1787
    :cond_1
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1788
    .local v1, curWallpaperIndex:I
    :cond_2
    :goto_1
    if-lez v1, :cond_0

    .line 1789
    add-int/lit8 v1, v1, -0x1

    .line 1790
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 1791
    .local v6, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_3

    .line 1792
    invoke-virtual {p0, v6, v3, v2, v8}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1795
    :cond_3
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2

    .line 1796
    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1801
    :try_start_0
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1802
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    move v7, v8

    .line 1781
    goto :goto_0

    .line 1807
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_5
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .locals 7
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    const-string v6, "WindowManager"

    const-string v5, " @ "

    .line 2892
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v4

    .line 2893
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .line 2894
    .local v0, m:I
    :goto_0
    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    .line 2895
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2896
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v3, :cond_0

    .line 2897
    add-int/lit8 v0, v0, -0x1

    .line 2898
    goto :goto_0

    .line 2900
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    .line 2901
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tokens out of sync: external is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", internal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 2905
    add-int/lit8 v0, v0, -0x1

    .line 2906
    goto :goto_0

    .line 2907
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    .line 2908
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External token not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2911
    :cond_3
    :goto_2
    if-ltz v0, :cond_5

    .line 2912
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2913
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v3, :cond_4

    .line 2914
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid internal token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 2917
    goto :goto_2

    .line 2918
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_5
    return-void
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 11
    .parameter "client"

    .prologue
    .line 4781
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4782
    const/4 v9, 0x0

    .line 4824
    :goto_0
    return v9

    .line 4785
    :cond_0
    const/4 v6, 0x1

    .line 4788
    .local v6, result:Z
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 4789
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/Object;

    .line 4791
    .local v8, windows:[Ljava/lang/Object;
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 4792
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4794
    const/4 v4, 0x0

    .line 4798
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 4799
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4801
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2
    array-length v1, v8

    .line 4802
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 4803
    aget-object v7, v8, v3

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 4804
    .local v7, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4805
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 4806
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4807
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4802
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4792
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #windows:[Ljava/lang/Object;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 4810
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Ljava/lang/Object;
    :cond_1
    :try_start_4
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4811
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4815
    if-eqz v5, :cond_2

    .line 4817
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    move-object v4, v5

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_3
    :goto_3
    move v9, v6

    .line 4824
    goto :goto_0

    .line 4812
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 4813
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    .line 4815
    if-eqz v4, :cond_3

    .line 4817
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 4818
    :catch_1
    move-exception v2

    .line 4819
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_3

    .line 4815
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_5
    if-eqz v4, :cond_4

    .line 4817
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 4815
    :cond_4
    :goto_6
    throw v9

    .line 4818
    :catch_2
    move-exception v2

    .line 4819
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_6

    .line 4818
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    .line 4819
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2

    .line 4815
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 4812
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    const/4 v11, 0x0

    .line 4848
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    .line 4905
    :goto_0
    return v9

    .line 4852
    :cond_0
    const/4 v7, 0x1

    .line 4853
    .local v7, success:Z
    const/4 v2, 0x0

    .line 4854
    .local v2, data:Landroid/os/Parcel;
    const/4 v6, 0x0

    .line 4859
    .local v6, reply:Landroid/os/Parcel;
    const/16 v9, 0x20

    :try_start_0
    invoke-virtual {p3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 4860
    .local v5, index:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 4861
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 4863
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4864
    .local v1, code:Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v1, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v4, v9

    .line 4867
    .local v4, hashCode:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 4868
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 4873
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4874
    .local v8, window:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_5

    .line 4897
    if-eqz v2, :cond_2

    .line 4898
    throw v2

    .line 4900
    :cond_2
    if-eqz v6, :cond_3

    .line 4901
    throw v6

    :cond_3
    move v9, v11

    .line 4875
    goto :goto_0

    .line 4870
    .end local v8           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    :try_start_1
    const-string p3, ""

    goto :goto_1

    .line 4878
    .restart local v8       #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4879
    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4880
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4881
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4882
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4883
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 4887
    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v9}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4889
    .local v0, binder:Landroid/os/IBinder;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v0, v9, v2, v6, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4891
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4897
    if-eqz v2, :cond_6

    .line 4898
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4900
    :cond_6
    if-eqz v6, :cond_7

    .line 4901
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #code:Ljava/lang/String;
    .end local v4           #hashCode:I
    .end local v5           #index:I
    .end local v8           #window:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_7
    move v9, v7

    .line 4905
    goto :goto_0

    .line 4893
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 4894
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not send command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with parameters "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4895
    const/4 v7, 0x0

    .line 4897
    if-eqz v2, :cond_8

    .line 4898
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4900
    :cond_8
    if-eqz v6, :cond_7

    goto :goto_2

    .line 4897
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_9

    .line 4898
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4900
    :cond_9
    if-eqz v6, :cond_a

    .line 4901
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 4897
    :cond_a
    throw v9
.end method

.method public virtualKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 11563
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->keyFeedbackFromInput(Landroid/view/KeyEvent;)V

    .line 11564
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 2330
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2332
    :cond_0
    monitor-exit v0

    .line 2333
    return-void

    .line 2332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1723
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1725
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1726
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1728
    :cond_0
    monitor-exit v0

    .line 1729
    return-void

    .line 1728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 5
    .parameter "watcher"

    .prologue
    .line 4652
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4653
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/WindowManagerService$4;

    invoke-direct {v0, p0, v1}, Lcom/android/server/WindowManagerService$4;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;)V

    .line 4669
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4671
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4672
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4677
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    monitor-exit v2

    return v3

    .line 4678
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4673
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;
    .locals 8
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v4, 0x0

    const-string v7, "WindowManager"

    const-string v6, "Requested window "

    const-string v5, "Failed looking up window"

    .line 9431
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 9434
    .local v1, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_1

    .line 9435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9437
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_0

    .line 9438
    throw v0

    .line 9440
    :cond_0
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 9454
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_0
    return-object v2

    .line 9443
    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    if-eq v2, p1, :cond_3

    .line 9444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9447
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_2

    .line 9448
    throw v0

    .line 9450
    :cond_2
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 9451
    goto :goto_0

    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_3
    move-object v2, v1

    .line 9454
    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 9426
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method
