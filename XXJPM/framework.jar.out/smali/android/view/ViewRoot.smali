.class public final Landroid/view/ViewRoot;
.super Landroid/os/Handler;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue;,
        Landroid/view/ViewRoot$CalledFromWrongThreadException;,
        Landroid/view/ViewRoot$TrackballAxis;,
        Landroid/view/ViewRoot$W;,
        Landroid/view/ViewRoot$EventCompletion;,
        Landroid/view/ViewRoot$InputMethodCallback;,
        Landroid/view/ViewRoot$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final SHOW_FPS:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewRoot"

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawTime:I

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sInstanceCount:J

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRoot$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCurScrollY:I

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field mFullRedrawNeeded:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL11;

.field mGlCanvas:Landroid/graphics/Canvas;

.field mGlWanted:Z

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field final mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

.field mIsAnimating:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastScrolledFocus:Landroid/view/View;

.field mLastTrackballTime:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field mRealFocusedView:Landroid/view/View;

.field mReportNextDraw:Z

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSoftInputMode:I

.field private final mSurface:Landroid/view/Surface;

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mUseGL:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRoot$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    .line 100
    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z

    .line 102
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 105
    sput-boolean v2, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 231
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 113
    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    .line 114
    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRoot;->mTmpLocation:[I

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    .line 120
    iput v2, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 126
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 134
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 161
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 165
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 180
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 181
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 294
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 3223
    new-instance v0, Landroid/view/ViewRoot$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$1;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    .line 246
    new-instance v0, Landroid/view/WindowLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    .line 247
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 248
    iput v3, p0, Landroid/view/ViewRoot;->mWidth:I

    .line 249
    iput v3, p0, Landroid/view/ViewRoot;->mHeight:I

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    .line 254
    new-instance v0, Landroid/view/ViewRoot$W;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRoot$W;-><init>(Landroid/view/ViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    .line 255
    new-instance v0, Landroid/view/ViewRoot$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$InputMethodCallback;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    .line 256
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 257
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    .line 258
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 259
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mFirst:Z

    .line 260
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 261
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 262
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRoot;->mDensity:I

    .line 264
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewRoot;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 288
    sget-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 289
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 280
    sget-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v1, :cond_0

    .line 282
    sget-object v1, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static captureKeyLog(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2368
    if-eqz p1, :cond_0

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2375
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2376
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2377
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2378
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2379
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2380
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2381
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static captureMotionLog(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2343
    if-eqz p1, :cond_0

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2348
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2349
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2361
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkEglErrors()V
    .locals 2

    .prologue
    .line 414
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 416
    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 419
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 420
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 426
    .end local v0           #err:I
    :cond_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 2294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2295
    .local v0, action:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v1, v3

    .line 2335
    :goto_0
    return v1

    .line 2298
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    .line 2299
    goto :goto_0

    .line 2303
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v1, :cond_2

    move v1, v3

    .line 2304
    goto :goto_0

    .line 2314
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRoot;->isKeyboardKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2315
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2316
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_3

    move v1, v3

    .line 2320
    goto :goto_0

    .line 2322
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2323
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "should not have changed focus when leaving touch mode while a view has focus."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v1, v3

    .line 2326
    goto :goto_0

    .line 2329
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRoot;->isDirectional(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2333
    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v3

    .line 2335
    goto :goto_0
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2404
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    .line 2406
    .local v0, handled:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2407
    if-eqz p2, :cond_0

    .line 2411
    :try_start_0
    sget-object v3, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    :cond_0
    :goto_1
    return-void

    .line 2404
    .end local v0           #handled:Z
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 2420
    .restart local v0       #handled:Z
    :cond_2
    iget-boolean v3, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v3, :cond_3

    .line 2421
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2422
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2423
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRoot;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v2

    .line 2426
    .local v2, seq:I
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    invoke-virtual {v1, v3, v2, p1, v4}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_1

    .line 2431
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #seq:I
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 2412
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V
    .locals 10
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2460
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v7, :cond_5

    .line 2461
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2462
    .local v0, action:I
    if-nez v0, :cond_1

    const/4 v7, 0x1

    move v4, v7

    .line 2464
    .local v4, isDown:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 2521
    if-eqz p2, :cond_0

    .line 2525
    :try_start_1
    sget-object v7, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v8, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v7, v8}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2532
    .end local v0           #action:I
    .end local v4           #isDown:Z
    :cond_0
    :goto_1
    return-void

    .line 2462
    .restart local v0       #action:I
    :cond_1
    const/4 v7, 0x0

    move v4, v7

    goto :goto_0

    .line 2471
    .restart local v4       #isDown:Z
    :cond_2
    :try_start_2
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 2473
    .local v5, keyHandled:Z
    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    .line 2474
    const/4 v1, 0x0

    .line 2475
    .local v1, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2490
    :goto_2
    if-eqz v1, :cond_5

    .line 2492
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 2493
    .local v3, focused:Landroid/view/View;
    :goto_3
    if-eqz v3, :cond_5

    .line 2494
    invoke-virtual {v3, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v6

    .line 2495
    .local v6, v:Landroid/view/View;
    const/4 v2, 0x0

    .line 2496
    .local v2, focusPassed:Z
    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_4

    .line 2500
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2501
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 2502
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2504
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2507
    :cond_3
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v7}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 2510
    :cond_4
    if-nez v2, :cond_7

    .line 2511
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2521
    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :cond_5
    :goto_4
    if-eqz p2, :cond_0

    .line 2525
    :try_start_3
    sget-object v7, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v8, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v7, v8}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2526
    :catch_0
    move-exception v7

    goto :goto_1

    .line 2477
    .restart local v0       #action:I
    .restart local v1       #direction:I
    .restart local v4       #isDown:Z
    .restart local v5       #keyHandled:Z
    :pswitch_0
    const/16 v1, 0x11

    .line 2478
    goto :goto_2

    .line 2480
    :pswitch_1
    const/16 v1, 0x42

    .line 2481
    goto :goto_2

    .line 2483
    :pswitch_2
    const/16 v1, 0x21

    .line 2484
    goto :goto_2

    .line 2486
    :pswitch_3
    const/16 v1, 0x82

    goto :goto_2

    .line 2492
    :cond_6
    const/4 v7, 0x0

    move-object v3, v7

    goto :goto_3

    .line 2513
    .restart local v2       #focusPassed:Z
    .restart local v3       #focused:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    :cond_7
    :try_start_4
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/ViewRoot;->playSoundEffect(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 2521
    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :catchall_0
    move-exception v7

    if-eqz p2, :cond_8

    .line 2525
    :try_start_5
    sget-object v8, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2521
    :cond_8
    :goto_5
    throw v7

    .line 2526
    :catch_1
    move-exception v8

    goto :goto_5

    .line 2475
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;Z)V
    .locals 32
    .parameter "event"
    .parameter "callWhenDone"

    .prologue
    .line 2106
    if-nez p1, :cond_0

    .line 2108
    :try_start_0
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object p1

    .line 2111
    :goto_0
    const/16 p2, 0x0

    .line 2116
    :cond_0
    const/16 v26, 0x0

    .line 2118
    .local v26, handled:Z
    if-nez p1, :cond_5

    .line 2119
    const/16 v26, 0x1

    .line 2128
    :cond_1
    :goto_1
    if-eqz v26, :cond_7

    .line 2129
    if-eqz p2, :cond_2

    .line 2131
    :try_start_1
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2135
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 2136
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2142
    :cond_3
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2257
    :cond_4
    :goto_4
    return-void

    .line 2120
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v26

    .line 2122
    if-nez v26, :cond_1

    goto :goto_1

    .line 2128
    :cond_6
    throw v5

    .line 2150
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v28, v0

    .line 2151
    .local v28, x:Landroid/view/ViewRoot$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v30, v0

    .line 2153
    .local v30, y:Landroid/view/ViewRoot$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2154
    .local v6, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    move-wide v8, v0

    const-wide/16 v10, 0xfa

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_8

    .line 2157
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2158
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2159
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 2163
    :cond_8
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    .line 2164
    .local v25, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 2165
    .local v13, metastate:I
    packed-switch v25, :pswitch_data_0

    .line 2188
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "X"

    move-object/from16 v0, v28

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 2189
    .local v29, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "Y"

    move-object/from16 v0, v30

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v31

    .line 2197
    .local v31, yOff:F
    const/4 v11, 0x0

    .line 2198
    .local v11, keycode:I
    const/16 v27, 0x0

    .line 2199
    .local v27, movement:I
    const/high16 v23, 0x3f80

    .line 2200
    .local v23, accel:F
    cmpl-float v5, v29, v31

    if-lez v5, :cond_e

    .line 2201
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v27

    .line 2202
    if-eqz v27, :cond_9

    .line 2203
    if-lez v27, :cond_d

    const/16 v5, 0x16

    move v11, v5

    .line 2205
    :goto_6
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v23, v0

    .line 2206
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2218
    :cond_9
    :goto_7
    if-eqz v11, :cond_11

    .line 2219
    if-gez v27, :cond_a

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 2220
    :cond_a
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v23

    move v0, v5

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2224
    .local v24, accelMovement:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 2227
    add-int/lit8 v27, v27, -0x1

    .line 2228
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x2

    sub-int v12, v24, v27

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2232
    :cond_b
    :goto_8
    if-lez v27, :cond_10

    .line 2235
    add-int/lit8 v27, v27, -0x1

    .line 2236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2237
    new-instance v14, Landroid/view/KeyEvent;

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v22

    move-wide v15, v6

    move-wide/from16 v17, v6

    move/from16 v20, v11

    invoke-direct/range {v14 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2239
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 2245
    .end local v11           #keycode:I
    .end local v13           #metastate:I
    .end local v23           #accel:F
    .end local v24           #accelMovement:I
    .end local v25           #action:I
    .end local v27           #movement:I
    .end local v29           #xOff:F
    .end local v31           #yOff:F
    :catchall_0
    move-exception v5

    if-eqz p2, :cond_c

    .line 2247
    :try_start_4
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    .end local v6           #curTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2250
    :goto_9
    if-eqz p1, :cond_c

    .line 2251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2245
    :cond_c
    throw v5

    .line 2167
    .restart local v6       #curTime:J
    .restart local v13       #metastate:I
    .restart local v25       #action:I
    :pswitch_0
    const/4 v5, 0x2

    :try_start_5
    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2168
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2169
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_5

    .line 2174
    :pswitch_1
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2175
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2176
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_5

    .line 2203
    .restart local v11       #keycode:I
    .restart local v23       #accel:F
    .restart local v27       #movement:I
    .restart local v29       #xOff:F
    .restart local v31       #yOff:F
    :cond_d
    const/16 v5, 0x15

    move v11, v5

    goto/16 :goto_6

    .line 2208
    :cond_e
    const/4 v5, 0x0

    cmpl-float v5, v31, v5

    if-lez v5, :cond_9

    .line 2209
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v27

    .line 2210
    if-eqz v27, :cond_9

    .line 2211
    if-lez v27, :cond_f

    const/16 v5, 0x14

    move v11, v5

    .line 2213
    :goto_a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v23, v0

    .line 2214
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    goto/16 :goto_7

    .line 2211
    :cond_f
    const/16 v5, 0x13

    move v11, v5

    goto :goto_a

    .line 2242
    .restart local v24       #accelMovement:I
    :cond_10
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2245
    .end local v24           #accelMovement:I
    :cond_11
    if-eqz p2, :cond_4

    .line 2247
    :try_start_6
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    .end local v6           #curTime:J
    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2250
    :goto_b
    if-eqz p1, :cond_4

    .line 2251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_4

    .line 2128
    .end local v11           #keycode:I
    .end local v13           #metastate:I
    .end local v23           #accel:F
    .end local v25           #action:I
    .end local v27           #movement:I
    .end local v28           #x:Landroid/view/ViewRoot$TrackballAxis;
    .end local v29           #xOff:F
    .end local v30           #y:Landroid/view/ViewRoot$TrackballAxis;
    .end local v31           #yOff:F
    :catchall_1
    move-exception v5

    if-eqz v26, :cond_6

    .line 2129
    if-eqz p2, :cond_12

    .line 2131
    :try_start_7
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2135
    :cond_12
    :goto_c
    if-eqz p1, :cond_3

    .line 2136
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    .line 2132
    :catch_0
    move-exception v5

    goto :goto_c

    .line 2248
    .restart local v11       #keycode:I
    .restart local v13       #metastate:I
    .restart local v23       #accel:F
    .restart local v25       #action:I
    .restart local v27       #movement:I
    .restart local v28       #x:Landroid/view/ViewRoot$TrackballAxis;
    .restart local v29       #xOff:F
    .restart local v30       #y:Landroid/view/ViewRoot$TrackballAxis;
    .restart local v31       #yOff:F
    :catch_1
    move-exception v5

    goto :goto_b

    .end local v11           #keycode:I
    .end local v13           #metastate:I
    .end local v23           #accel:F
    .end local v25           #action:I
    .end local v27           #movement:I
    .end local v29           #xOff:F
    .end local v31           #yOff:F
    :catch_2
    move-exception v6

    goto/16 :goto_9

    .line 2132
    .end local v28           #x:Landroid/view/ViewRoot$TrackballAxis;
    .end local v30           #y:Landroid/view/ViewRoot$TrackballAxis;
    :catch_3
    move-exception v5

    goto/16 :goto_2

    .line 2109
    .end local v26           #handled:Z
    :catch_4
    move-exception v5

    goto/16 :goto_0

    .line 2165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private destroyGL()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 397
    invoke-static {}, Landroid/view/ViewRoot;->nativeAbandonGlCaches()V

    .line 399
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 401
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 402
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 403
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 404
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 405
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 406
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 407
    iput-object v5, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 408
    iput-object v5, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    .line 409
    iput-object v5, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    .line 411
    return-void
.end method

.method private draw(Z)V
    .locals 26
    .parameter "fullRedrawNeeded"

    .prologue
    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    .line 1236
    .local v18, surface:Landroid/view/Surface;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/Surface;->isValid()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    sget-boolean v21, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v21, :cond_3

    .line 1241
    sget-object v21, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v21

    .line 1242
    const/16 v22, 0x1

    :try_start_0
    sput-boolean v22, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    .line 1243
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    sget-object v22, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1244
    sget-object v22, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->post(Ljava/lang/Runnable;)Z

    .line 1243
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1246
    :cond_2
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    .end local v10           #i:I
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 1257
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    move/from16 v15, v21

    .line 1258
    .local v15, scrolling:Z
    :goto_2
    if-eqz v15, :cond_9

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->getCurrY()I

    move-result v20

    .line 1263
    .local v20, yoff:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 1264
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    .line 1265
    const/16 p1, 0x1

    .line 1267
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v5, v0

    .line 1268
    .local v5, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move v14, v0

    .line 1270
    .local v14, scalingRequired:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    move-object v8, v0

    .line 1271
    .local v8, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 1272
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_7

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v7, v0

    .line 1274
    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    if-eqz v7, :cond_7

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0xc11

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v21 .. v25}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0x4000

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0xc11

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1284
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v13

    .line 1286
    .local v13, saveCount:I
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    :try_start_1
    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1290
    :cond_6
    if-eqz v14, :cond_a

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_4
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1297
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1303
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .line 1314
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #saveCount:I
    :cond_7
    if-eqz v15, :cond_0

    .line 1315
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1316
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1246
    .end local v5           #appScale:F
    .end local v8           #dirty:Landroid/graphics/Rect;
    .end local v14           #scalingRequired:Z
    .end local v15           #scrolling:Z
    .end local v20           #yoff:I
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 1257
    :cond_8
    const/16 v21, 0x0

    move/from16 v15, v21

    goto/16 :goto_2

    .line 1261
    .restart local v15       #scrolling:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mScrollY:I

    move/from16 v20, v0

    .restart local v20       #yoff:I
    goto/16 :goto_3

    .line 1290
    .restart local v5       #appScale:F
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #dirty:Landroid/graphics/Rect;
    .restart local v13       #saveCount:I
    .restart local v14       #scalingRequired:Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_4

    .line 1297
    :catchall_1
    move-exception v21

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v21

    .line 1321
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #saveCount:I
    :cond_b
    if-eqz p1, :cond_c

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1323
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    const/high16 v25, 0x3f00

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1337
    :cond_c
    :try_start_3
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 1338
    .local v11, left:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 1339
    .local v19, top:I
    iget v12, v8, Landroid/graphics/Rect;->right:I

    .line 1340
    .local v12, right:I
    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 1341
    .local v6, bottom:I
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 1343
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 1345
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1349
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mDensity:I

    move/from16 v21, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1363
    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 1364
    :cond_f
    const-wide/16 v16, 0x0

    .line 1384
    .local v16, startTime:J
    invoke-virtual {v7}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v21

    if-eqz v21, :cond_10

    if-eqz v20, :cond_11

    .line 1385
    :cond_10
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v7

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1388
    :cond_11
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 1389
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1399
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v13

    .line 1401
    .restart local v13       #saveCount:I
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    :try_start_5
    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1405
    :cond_12
    if-eqz v14, :cond_14

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_5
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1409
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1410
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1431
    .end local v13           #saveCount:I
    .end local v16           #startTime:J
    :cond_13
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1438
    if-eqz v15, :cond_0

    .line 1439
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1350
    .end local v6           #bottom:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v11           #left:I
    .end local v12           #right:I
    .end local v19           #top:I
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 1351
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v21, "ViewRoot"

    const-string v22, "OutOfResourcesException locking surface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1355
    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v21

    move-object/from16 v9, v21

    .line 1356
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v21, "ViewRoot"

    const-string v22, "IllegalArgumentException locking surface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1405
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #bottom:I
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v11       #left:I
    .restart local v12       #right:I
    .restart local v13       #saveCount:I
    .restart local v16       #startTime:J
    .restart local v19       #top:I
    :cond_14
    const/16 v21, 0x0

    goto :goto_5

    .line 1409
    :catchall_2
    move-exception v21

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1410
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1409
    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1431
    .end local v13           #saveCount:I
    .end local v16           #startTime:J
    :catchall_3
    move-exception v21

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v21
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .parameter "inTouchMode"

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2023
    :goto_0
    return v0

    .line 2020
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 2021
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 2023
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRoot;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRoot;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2027
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2028
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2032
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2033
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2035
    invoke-direct {p0, v1}, Landroid/view/ViewRoot;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2037
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2040
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 2051
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_0
    return v2

    .line 2043
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 2044
    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2045
    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2046
    const/4 v2, 0x1

    goto :goto_0

    .line 2051
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .parameter "focused"

    .prologue
    const/4 v5, 0x0

    .line 2062
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2063
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2064
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 2065
    .local v2, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2075
    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :goto_1
    return-object v3

    .line 2069
    .restart local v2       #vgParent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v5

    .line 2070
    goto :goto_1

    .line 2072
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2074
    goto :goto_0

    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :cond_2
    move-object v3, v5

    .line 2075
    goto :goto_1
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 1685
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 1686
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 1687
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1688
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1689
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1690
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    .line 1689
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1693
    .end local v1           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_0
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 2535
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 2539
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    .line 2541
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstanceCount()J
    .locals 2

    .prologue
    .line 276
    sget-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    return-wide v0
.end method

.method private getRootMeasureSpec(II)I
    .locals 2
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1216
    packed-switch p2, :pswitch_data_0

    .line 1228
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1231
    .local v0, measureSpec:I
    :goto_0
    return v0

    .line 1220
    .end local v0           #measureSpec:I
    :pswitch_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1221
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1224
    .end local v0           #measureSpec:I
    :pswitch_1
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1225
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1216
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRoot$RunQueue;
    .locals 2

    .prologue
    .line 3273
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot$RunQueue;

    .line 3274
    .local v0, rq:Landroid/view/ViewRoot$RunQueue;
    if-eqz v0, :cond_0

    .line 3279
    :goto_0
    return-object v0

    .line 3277
    :cond_0
    new-instance v0, Landroid/view/ViewRoot$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRoot$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRoot$RunQueue;-><init>()V

    .line 3278
    .restart local v0       #rq:Landroid/view/ViewRoot$RunQueue;
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .locals 5
    .parameter "mainLooper"

    .prologue
    .line 215
    sget-object v1, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    sget-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 218
    :try_start_1
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 219
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    .line 222
    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v2

    .line 227
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 223
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initializeGL()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/view/ViewRoot;->initializeGLInner()V

    .line 324
    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 325
    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 327
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 328
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 330
    :cond_0
    return-void
.end method

.method private initializeGLInner()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    .line 333
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 334
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    iput-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 339
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 340
    .local v1, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    iput-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 345
    const/4 v11, 0x2

    new-array v10, v11, [I

    .line 346
    .local v10, version:[I
    invoke-interface {v0, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 352
    const/16 v11, 0x9

    new-array v2, v11, [I

    fill-array-data v2, :array_0

    .line 359
    .local v2, configSpec:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 360
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 361
    .local v5, num_config:[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 362
    const/4 v11, 0x0

    aget-object v6, v3, v11

    .line 368
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 370
    .local v7, context:Ljavax/microedition/khronos/egl/EGLContext;
    iput-object v7, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 375
    iget-object v11, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v9

    .line 376
    .local v9, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    iput-object v9, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 382
    invoke-interface {v0, v1, v9, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 389
    invoke-virtual {v7}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    check-cast v8, Ljavax/microedition/khronos/opengles/GL11;

    .line 390
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-object v8, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 391
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object v11, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    .line 392
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mUseGL:Z

    .line 393
    return-void

    .line 352
    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method static isDirectional(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 2264
    packed-switch p0, :pswitch_data_0

    .line 2271
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2269
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isInTouchMode()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Landroid/view/ViewRoot;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 319
    :goto_0
    return v0

    .line 316
    :catch_0
    move-exception v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKeyboardKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyEvent"

    .prologue
    .line 2280
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 2281
    .local v0, convertedKey:I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1676
    if-ne p0, p1, :cond_0

    move v1, v2

    .line 1681
    :goto_0
    return v1

    .line 1680
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1681
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x82

    const/4 v3, 0x0

    .line 2079
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2080
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2082
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2083
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move v1, v3

    .line 2101
    :goto_0
    return v1

    .line 2086
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 2090
    goto :goto_0

    .line 2096
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRoot;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2097
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2098
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_0

    .end local v0           #focused:Landroid/view/View;
    :cond_2
    move v1, v3

    .line 2101
    goto :goto_0
.end method

.method private static native nativeAbandonGlCaches()V
.end method

.method private static native nativeShowFPS(Landroid/graphics/Canvas;I)V
.end method

.method private performTraversals()V
    .locals 56

    .prologue
    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v31, v0

    .line 677
    .local v31, host:Landroid/view/View;
    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v6, v0

    if-nez v6, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 681
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 682
    const/16 v54, 0x0

    .line 683
    .local v54, windowResizesToFitContent:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    move/from16 v26, v0

    .line 684
    .local v26, fullRedrawNeeded:Z
    const/16 v40, 0x0

    .line 685
    .local v40, newSurface:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    .line 692
    .local v38, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v13, v0

    .line 694
    .local v13, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v49

    .line 695
    .local v49, viewVisibility:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mViewVisibility:I

    move v6, v0

    move v0, v6

    move/from16 v1, v49

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_d

    :cond_2
    const/4 v6, 0x1

    move/from16 v50, v6

    .line 698
    .local v50, viewVisibilityChanged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget v12, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 700
    .local v12, appScale:F
    const/16 v43, 0x0

    .line 701
    .local v43, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    move v6, v0

    if-eqz v6, :cond_3

    .line 702
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 703
    move-object/from16 v43, v38

    .line 705
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 706
    .local v25, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_f

    .line 707
    const/16 v26, 0x1

    .line 708
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v42

    .line 712
    .local v42, packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 713
    .local v21, desiredWindowWidth:I
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 719
    .local v20, desiredWindowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    iput-object v6, v13, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 720
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mTranslucentWindow:Z

    .line 721
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 722
    move/from16 v0, v49

    move-object v1, v13

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 723
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 724
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 725
    const/16 v50, 0x0

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 727
    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object v1, v13

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 742
    .end local v42           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_4
    :goto_3
    if-eqz v50, :cond_7

    .line 743
    move/from16 v0, v49

    move-object v1, v13

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 744
    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 745
    if-nez v49, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 746
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 747
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 750
    :cond_6
    const/16 v6, 0x8

    move/from16 v0, v49

    move v1, v6

    if-ne v0, v1, :cond_7

    .line 753
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 757
    :cond_7
    const/16 v36, 0x0

    .line 759
    .local v36, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_9

    .line 762
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v6

    iget-object v7, v13, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/view/ViewRoot$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_12

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v7, v0

    if-nez v7, :cond_11

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 769
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 794
    :cond_8
    :goto_5
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v16

    .line 795
    .local v16, childWidthMeasureSpec:I
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v15

    .line 801
    .local v15, childHeightMeasureSpec:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 810
    .end local v15           #childHeightMeasureSpec:I
    .end local v16           #childWidthMeasureSpec:I
    :cond_9
    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_a

    .line 812
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 813
    move-object v0, v13

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v41, v0

    .line 814
    .local v41, oldVal:Z
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 815
    const/4 v6, 0x0

    move-object/from16 v0, v31

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 816
    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move v0, v6

    move/from16 v1, v41

    if-eq v0, v1, :cond_a

    .line 817
    move-object/from16 v43, v38

    .line 822
    .end local v41           #oldVal:Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_b

    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v6, :cond_18

    .line 823
    :cond_b
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 824
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mSoftInputMode:I

    move v6, v0

    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v45, v0

    .line 828
    .local v45, resizeMode:I
    if-nez v45, :cond_18

    .line 829
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 830
    .local v11, N:I
    const/16 v32, 0x0

    .local v32, i:I
    :goto_6
    move/from16 v0, v32

    move v1, v11

    if-ge v0, v1, :cond_16

    .line 831
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 832
    const/16 v45, 0x10

    .line 830
    :cond_c
    add-int/lit8 v32, v32, 0x1

    goto :goto_6

    .line 695
    .end local v11           #N:I
    .end local v12           #appScale:F
    .end local v20           #desiredWindowHeight:I
    .end local v21           #desiredWindowWidth:I
    .end local v25           #frame:Landroid/graphics/Rect;
    .end local v32           #i:I
    .end local v36           #insetsChanged:Z
    .end local v43           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #resizeMode:I
    .end local v50           #viewVisibilityChanged:Z
    :cond_d
    const/4 v6, 0x0

    move/from16 v50, v6

    goto/16 :goto_1

    .line 720
    .restart local v12       #appScale:F
    .restart local v20       #desiredWindowHeight:I
    .restart local v21       #desiredWindowWidth:I
    .restart local v25       #frame:Landroid/graphics/Rect;
    .restart local v42       #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v43       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v50       #viewVisibilityChanged:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 731
    .end local v20           #desiredWindowHeight:I
    .end local v21           #desiredWindowWidth:I
    .end local v42           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_f
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 732
    .restart local v21       #desiredWindowWidth:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 733
    .restart local v20       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_4

    .line 736
    :cond_10
    const/16 v26, 0x1

    .line 737
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 738
    const/16 v54, 0x1

    goto/16 :goto_3

    .line 768
    .restart local v36       #insetsChanged:Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 771
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 774
    const/16 v36, 0x1

    .line 778
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 783
    :cond_14
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-eq v6, v7, :cond_15

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_8

    .line 785
    :cond_15
    const/16 v54, 0x1

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v42

    .line 789
    .restart local v42       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 790
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    goto/16 :goto_5

    .line 835
    .end local v42           #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v11       #N:I
    .restart local v32       #i:I
    .restart local v45       #resizeMode:I
    :cond_16
    if-nez v45, :cond_17

    .line 836
    const/16 v45, 0x20

    .line 838
    :cond_17
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, 0xf0

    move v0, v6

    move/from16 v1, v45

    if-eq v0, v1, :cond_18

    .line 840
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, -0xf1

    or-int v6, v6, v45

    move v0, v6

    move-object/from16 v1, v38

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 843
    move-object/from16 v43, v38

    .line 848
    .end local v11           #N:I
    .end local v32           #i:I
    .end local v45           #resizeMode:I
    :cond_18
    if-eqz v43, :cond_19

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_19

    .line 849
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_19

    .line 850
    const/4 v6, -0x3

    move v0, v6

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 854
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_36

    if-eqz v54, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_1b

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1a

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    if-ne v6, v7, :cond_1b

    :cond_1a
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_36

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move/from16 v1, v20

    if-ge v0, v1, :cond_36

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v7, v0

    if-eq v6, v7, :cond_36

    :cond_1b
    const/4 v6, 0x1

    move/from16 v55, v6

    .line 861
    .local v55, windowShouldResize:Z
    :goto_7
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v17

    .line 863
    .local v17, computesInternalInsets:Z
    const/16 v37, 0x0

    .line 864
    .local v37, insetsPending:Z
    const/16 v44, 0x0

    .line 865
    .local v44, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_1c

    if-nez v55, :cond_1c

    if-nez v36, :cond_1c

    if-nez v50, :cond_1c

    if-eqz v43, :cond_2b

    .line 868
    :cond_1c
    if-nez v49, :cond_1f

    .line 878
    if-eqz v17, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_1d

    if-eqz v50, :cond_37

    :cond_1d
    const/4 v6, 0x1

    move/from16 v37, v6

    .line 881
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1f

    .line 882
    if-nez v43, :cond_1e

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v43, v0

    .line 885
    :cond_1e
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 889
    :cond_1f
    const/16 v34, 0x0

    .line 890
    .local v34, initialized:Z
    const/16 v19, 0x0

    .line 893
    .local v19, contentInsetsChanged:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v29

    .line 894
    .local v29, hadSurface:Z
    const/16 v23, 0x0

    .line 895
    .local v23, fl:I
    if-eqz v43, :cond_20

    .line 896
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    .line 897
    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v6, :cond_20

    .line 898
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x80

    move v0, v6

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 905
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v49

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v44

    .line 907
    if-eqz v43, :cond_21

    .line 908
    move/from16 v0, v23

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 916
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    iget v6, v6, Landroid/content/res/Configuration;->seq:I

    if-eqz v6, :cond_22

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v7, v0

    if-nez v7, :cond_38

    const/4 v7, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/res/Configuration;->seq:I

    .line 923
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    const/4 v6, 0x1

    move/from16 v19, v6

    .line 925
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    const/4 v6, 0x1

    move/from16 v52, v6

    .line 927
    .local v52, visibleInsetsChanged:Z
    :goto_b
    if-eqz v19, :cond_23

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 933
    :cond_23
    if-eqz v52, :cond_24

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 939
    :cond_24
    if-nez v29, :cond_3c

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 948
    const/16 v40, 0x1

    .line 949
    const/16 v26, 0x1

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->setEmpty()V

    .line 952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v6, v0

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-nez v6, :cond_25

    .line 953
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->initializeGL()V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    move/from16 v34, v6

    .line 971
    .end local v23           #fl:I
    .end local v29           #hadSurface:Z
    .end local v52           #visibleInsetsChanged:Z
    :cond_25
    :goto_c
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    iput v6, v13, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 972
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    iput v6, v13, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 977
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mWidth:I

    .line 978
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mHeight:I

    .line 980
    if-eqz v34, :cond_26

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v12

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v8, v0

    int-to-float v8, v8

    mul-float/2addr v8, v12

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 985
    :cond_26
    and-int/lit8 v6, v44, 0x1

    if-eqz v6, :cond_3d

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v24

    .line 987
    .local v24, focusChangedDueToTouchMode:Z
    if-nez v24, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_27

    if-eqz v19, :cond_2b

    .line 989
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v16

    .line 990
    .restart local v16       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v15

    .line 999
    .restart local v15       #childHeightMeasureSpec:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1004
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move/from16 v53, v0

    .line 1005
    .local v53, width:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move/from16 v30, v0

    .line 1006
    .local v30, height:I
    const/16 v39, 0x0

    .line 1008
    .local v39, measureAgain:Z
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_28

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    sub-int v6, v6, v53

    int-to-float v6, v6

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v53, v53, v6

    .line 1010
    const/high16 v6, 0x4000

    move/from16 v0, v53

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1012
    const/16 v39, 0x1

    .line 1014
    :cond_28
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_29

    .line 1015
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    sub-int v6, v6, v30

    int-to-float v6, v6

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v30, v30, v6

    .line 1016
    const/high16 v6, 0x4000

    move/from16 v0, v30

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1018
    const/16 v39, 0x1

    .line 1021
    :cond_29
    if-eqz v39, :cond_2a

    .line 1025
    move-object/from16 v0, v31

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1028
    :cond_2a
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 1032
    .end local v15           #childHeightMeasureSpec:I
    .end local v16           #childWidthMeasureSpec:I
    .end local v19           #contentInsetsChanged:Z
    .end local v24           #focusChangedDueToTouchMode:Z
    .end local v30           #height:I
    .end local v34           #initialized:Z
    .end local v39           #measureAgain:Z
    .end local v53           #width:I
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move/from16 v22, v0

    .line 1033
    .local v22, didLayout:Z
    if-nez v22, :cond_2c

    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_3e

    :cond_2c
    const/4 v6, 0x1

    move/from16 v48, v6

    .line 1035
    .local v48, triggerGlobalLayoutListener:Z
    :goto_e
    if-eqz v22, :cond_2e

    .line 1036
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 1037
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1041
    const-wide/16 v46, 0x0

    .line 1045
    .local v46, startTime:J
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v8, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v9, v0

    move-object/from16 v0, v31

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1062
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_2e

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v6, v0

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mRight:I

    move v10, v0

    add-int/2addr v9, v10

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v10, v0

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v10, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v11, v0

    add-int/2addr v10, v11

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mTop:I

    move v11, v0

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_2d

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1075
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1079
    :try_start_1
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1092
    .end local v46           #startTime:J
    :cond_2e
    :goto_f
    if-eqz v48, :cond_2f

    .line 1093
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1094
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1097
    :cond_2f
    if-eqz v17, :cond_32

    .line 1098
    move-object v0, v13

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v35, v0

    .line 1099
    .local v35, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 1100
    .local v27, givenContent:Landroid/graphics/Rect;
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    .line 1101
    .local v28, givenVisible:Landroid/graphics/Rect;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1104
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1105
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1106
    .local v18, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v51, v0

    .line 1107
    .local v51, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_30

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v18

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisbileInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v51

    .line 1111
    :cond_30
    if-nez v37, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 1112
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1114
    :try_start_2
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move v8, v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    move-object/from16 v3, v18

    move-object/from16 v4, v51

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1121
    .end local v18           #contentInsets:Landroid/graphics/Rect;
    .end local v27           #givenContent:Landroid/graphics/Rect;
    .end local v28           #givenVisible:Landroid/graphics/Rect;
    .end local v35           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v51           #visibleInsets:Landroid/graphics/Rect;
    :cond_32
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_33

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    if-eqz v6, :cond_33

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/View;->requestFocus(I)Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1139
    :cond_33
    :goto_11
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFirst:Z

    .line 1140
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 1141
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 1142
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v6, :cond_34

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v33

    .line 1147
    .local v33, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v6, v0

    move/from16 v0, v33

    move v1, v6

    if-eq v0, v1, :cond_34

    .line 1148
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 1149
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1150
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_34

    if-eqz v33, :cond_34

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v9, v0

    if-nez v9, :cond_40

    const/4 v9, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v10, v0

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1159
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v33           #imTarget:Z
    :cond_34
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v14

    .line 1161
    .local v14, cancelDraw:Z
    if-nez v14, :cond_41

    if-nez v40, :cond_41

    .line 1162
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1163
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->draw(Z)V

    .line 1165
    and-int/lit8 v6, v44, 0x2

    if-nez v6, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    move v6, v0

    if-eqz v6, :cond_0

    .line 1170
    :cond_35
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1172
    :try_start_3
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1173
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 854
    .end local v14           #cancelDraw:Z
    .end local v17           #computesInternalInsets:Z
    .end local v22           #didLayout:Z
    .end local v37           #insetsPending:Z
    .end local v44           #relayoutResult:I
    .end local v48           #triggerGlobalLayoutListener:Z
    .end local v55           #windowShouldResize:Z
    :cond_36
    const/4 v6, 0x0

    move/from16 v55, v6

    goto/16 :goto_7

    .line 878
    .restart local v17       #computesInternalInsets:Z
    .restart local v37       #insetsPending:Z
    .restart local v44       #relayoutResult:I
    .restart local v55       #windowShouldResize:Z
    :cond_37
    const/4 v6, 0x0

    move/from16 v37, v6

    goto/16 :goto_8

    .line 919
    .restart local v19       #contentInsetsChanged:Z
    .restart local v23       #fl:I
    .restart local v29       #hadSurface:Z
    .restart local v34       #initialized:Z
    :cond_38
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 923
    :cond_39
    const/4 v6, 0x0

    move/from16 v19, v6

    goto/16 :goto_a

    .line 925
    :cond_3a
    const/4 v6, 0x0

    move/from16 v52, v6

    goto/16 :goto_b

    .line 954
    .restart local v52       #visibleInsetsChanged:Z
    :cond_3b
    const/4 v6, 0x0

    move/from16 v34, v6

    goto/16 :goto_c

    .line 957
    :cond_3c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_25

    .line 960
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 961
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mScrollY:I

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    if-eqz v6, :cond_25

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_c

    .line 966
    .end local v23           #fl:I
    .end local v29           #hadSurface:Z
    .end local v52           #visibleInsetsChanged:Z
    :catch_1
    move-exception v6

    goto/16 :goto_c

    .line 985
    :cond_3d
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 1033
    .end local v19           #contentInsetsChanged:Z
    .end local v34           #initialized:Z
    .restart local v22       #didLayout:Z
    :cond_3e
    const/4 v6, 0x0

    move/from16 v48, v6

    goto/16 :goto_e

    .line 1132
    .restart local v48       #triggerGlobalLayoutListener:Z
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_11

    .line 1152
    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v33       #imTarget:Z
    :cond_40
    const/4 v9, 0x0

    goto/16 :goto_12

    .line 1179
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v33           #imTarget:Z
    .restart local v14       #cancelDraw:Z
    :cond_41
    and-int/lit8 v6, v44, 0x2

    if-eqz v6, :cond_42

    .line 1180
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1182
    :cond_42
    if-eqz v26, :cond_43

    .line 1183
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1186
    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1116
    .end local v14           #cancelDraw:Z
    .restart local v18       #contentInsets:Landroid/graphics/Rect;
    .restart local v27       #givenContent:Landroid/graphics/Rect;
    .restart local v28       #givenVisible:Landroid/graphics/Rect;
    .restart local v35       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v51       #visibleInsets:Landroid/graphics/Rect;
    :catch_2
    move-exception v6

    goto/16 :goto_10

    .line 1080
    .end local v18           #contentInsets:Landroid/graphics/Rect;
    .end local v27           #givenContent:Landroid/graphics/Rect;
    .end local v28           #givenVisible:Landroid/graphics/Rect;
    .end local v35           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v51           #visibleInsets:Landroid/graphics/Rect;
    .restart local v46       #startTime:J
    :catch_3
    move-exception v6

    goto/16 :goto_f
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 17
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v2, v0

    iget v14, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2548
    .local v14, appScale:F
    const/16 v16, 0x0

    .line 2549
    .local v16, restore:Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 2550
    const/16 v16, 0x1

    .line 2551
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 2554
    :cond_0
    if-eqz p1, :cond_1

    .line 2557
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/res/Configuration;->seq:I

    .line 2558
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/view/View;->mMeasuredWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/view/View;->mMeasuredHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v13, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v2 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 2565
    .local v15, relayoutResult:I
    if-eqz v16, :cond_2

    .line 2566
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 2569
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_3

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2574
    :cond_3
    return v15
.end method

.method private sendAccessibilityEvents()V
    .locals 3

    .prologue
    .line 2785
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2793
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2789
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2790
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 2791
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 647
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 2810
    iget-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2811
    new-instance v0, Landroid/view/ViewRoot$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2814
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 2803
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 1578
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1580
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1583
    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1584
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1586
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1587
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    if-eqz v0, :cond_0

    .line 1590
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 2800
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 2645
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 2646
    return-void
.end method

.method public die(Z)V
    .locals 1
    .parameter "immediate"

    .prologue
    .line 2649
    if-eqz p1, :cond_0

    .line 2650
    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    .line 2654
    :goto_0
    return-void

    .line 2652
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2755
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2756
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2757
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2758
    return-void

    .line 2756
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 2774
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2775
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2776
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2777
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2778
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1629
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1633
    :cond_0
    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 1634
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1635
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 1637
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v0, :cond_1

    .line 1638
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 1640
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1643
    :try_start_0
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :goto_0
    return-void

    .line 1644
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchFinishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2686
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2687
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2688
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2689
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2690
    return-void

    .line 2688
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    .line 2761
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2762
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2763
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 2716
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2729
    :cond_0
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2730
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2735
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2736
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;JZ)V
    .locals 2
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 2740
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2741
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2742
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2743
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2744
    return-void

    .line 2742
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 2698
    if-eqz p5, :cond_1

    const/16 v2, 0x3eb

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2699
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 2700
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2701
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2702
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 2703
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 2705
    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2706
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2707
    new-instance v1, Landroid/view/ViewRoot$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$ResizedInfo;-><init>(Landroid/view/ViewRoot;)V

    .line 2708
    .local v1, ri:Landroid/view/ViewRoot$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    .line 2709
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2710
    iput-object p6, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 2711
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2712
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2713
    return-void

    .line 2698
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_1
    const/16 v2, 0x3ea

    goto :goto_0
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;JZ)V
    .locals 2
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 2748
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2749
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2750
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2751
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2752
    return-void

    .line 2750
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2657
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2659
    monitor-enter p0

    .line 2660
    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mFirst:Z

    if-nez v2, :cond_2

    .line 2661
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2662
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    if-eq v2, v0, :cond_4

    const/4 v2, 0x1

    move v1, v2

    .line 2663
    .local v1, viewVisibilityChanged:Z
    :goto_0
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 2668
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2670
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2676
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2678
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_2
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_3

    .line 2679
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 2680
    invoke-virtual {p0}, Landroid/view/ViewRoot;->dispatchDetachedFromWindow()V

    .line 2682
    :cond_3
    monitor-exit p0

    .line 2683
    return-void

    .restart local v0       #viewVisibility:I
    :cond_4
    move v1, v3

    .line 2662
    goto :goto_0

    .line 2682
    .end local v0           #viewVisibility:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2672
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .locals 2
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2385
    iget v1, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 2386
    .local v0, seq:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 2387
    :cond_0
    iput v0, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 2388
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2389
    if-eqz p2, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    neg-int v1, v0

    goto :goto_0
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .parameter "inTouchMode"

    .prologue
    .line 1995
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 2005
    :goto_0
    return v1

    .line 1999
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 2000
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2001
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 2637
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2638
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2639
    const/4 v0, 0x0

    .line 2641
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object p0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1596
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1598
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1599
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1605
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 1609
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1605
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    iget v0, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v1, p0, Landroid/view/ViewRoot;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected getWindowFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2806
    iget-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 578
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 579
    iput-boolean p1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 580
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 582
    :cond_0
    return-void
.end method

.method handleFinishedEvent(IZ)V
    .locals 5
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2435
    invoke-virtual {p0, p1}, Landroid/view/ViewRoot;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2438
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 2439
    if-ltz p1, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 2440
    .local v1, sendDone:Z
    :goto_0
    if-nez p2, :cond_2

    .line 2441
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    .line 2456
    .end local v1           #sendDone:Z
    :cond_0
    :goto_1
    return-void

    .line 2439
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 2443
    .restart local v1       #sendDone:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 2447
    :try_start_0
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2448
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2451
    :cond_3
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinishedEvent(seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") neither delivering nor finishing key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 586
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 587
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 588
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 1713
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 1981
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1715
    .restart local p0
    .restart local p1
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1718
    .restart local p0
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 1719
    .local v24, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move v4, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    move v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 1720
    invoke-virtual/range {v24 .. v24}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_0

    .line 1723
    .end local v24           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mProfile:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 1724
    const-string v3, "ViewRoot"

    invoke-static {v3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1727
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->performTraversals()V

    .line 1729
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mProfile:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 1730
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1731
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mProfile:Z

    goto :goto_0

    .line 1735
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->handleFinishedEvent(IZ)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1741
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 1744
    .restart local p1
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/MotionEvent;

    .line 1745
    .local v20, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1747
    .local v16, callWhenDone:Z
    :goto_2
    if-nez v20, :cond_3

    .line 1754
    :try_start_0
    sget-object v3, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v20

    .line 1762
    :goto_3
    const/16 v16, 0x0

    .line 1764
    :cond_3
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v3, v0

    if-eqz v3, :cond_4

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 1769
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v3, v0

    if-eqz v3, :cond_8

    if-eqz v20, :cond_8

    .line 1772
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    move/from16 v25, v3

    .line 1773
    .local v25, isDown:Z
    :goto_4
    if-eqz v25, :cond_5

    .line 1774
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 1779
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move v3, v0

    if-eqz v3, :cond_6

    .line 1780
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1785
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 1789
    .local v21, handled:Z
    if-nez v21, :cond_8

    if-eqz v25, :cond_8

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v19

    .line 1792
    .local v19, edgeSlop:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 1793
    .local v18, edgeFlags:I
    const/16 v7, 0x21

    .line 1794
    .local v7, direction:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v5, v3

    .line 1795
    .local v5, x:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v6, v3

    .line 1796
    .local v6, y:I
    const/4 v3, 0x2

    new-array v8, v3, [I

    .line 1798
    .local v8, deltas:[I
    and-int/lit8 v3, v18, 0x1

    if-eqz v3, :cond_d

    .line 1799
    const/16 v7, 0x82

    .line 1800
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_c

    .line 1801
    const/4 v3, 0x0

    aput v19, v8, v3

    .line 1802
    add-int v5, v5, v19

    .line 1822
    :cond_7
    :goto_5
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 1823
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual/range {v3 .. v8}, Landroid/view/FocusFinder;->findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;

    move-result-object v26

    .line 1825
    .local v26, nearest:Landroid/view/View;
    if-eqz v26, :cond_8

    .line 1826
    const/4 v3, 0x0

    aget v3, v8, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    int-to-float v4, v4

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1827
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1834
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v7           #direction:I
    .end local v8           #deltas:[I
    .end local v18           #edgeFlags:I
    .end local v19           #edgeSlop:I
    .end local v21           #handled:Z
    .end local v25           #isDown:Z
    .end local v26           #nearest:Landroid/view/View;
    :cond_8
    if-eqz v16, :cond_9

    .line 1836
    :try_start_2
    sget-object v3, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1840
    :cond_9
    :goto_6
    if-eqz v20, :cond_0

    .line 1841
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 1745
    .end local v16           #callWhenDone:Z
    :cond_a
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_2

    .line 1772
    .restart local v16       #callWhenDone:Z
    :cond_b
    const/4 v3, 0x0

    move/from16 v25, v3

    goto/16 :goto_4

    .line 1803
    .restart local v5       #x:I
    .restart local v6       #y:I
    .restart local v7       #direction:I
    .restart local v8       #deltas:[I
    .restart local v18       #edgeFlags:I
    .restart local v19       #edgeSlop:I
    .restart local v21       #handled:Z
    .restart local v25       #isDown:Z
    :cond_c
    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_7

    .line 1804
    const/4 v3, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move v4, v0

    :try_start_3
    aput v4, v8, v3

    .line 1805
    sub-int v5, v5, v19

    goto :goto_5

    .line 1807
    :cond_d
    and-int/lit8 v3, v18, 0x2

    if-eqz v3, :cond_f

    .line 1808
    const/16 v7, 0x21

    .line 1809
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_e

    .line 1810
    const/4 v3, 0x0

    aput v19, v8, v3

    .line 1811
    add-int v5, v5, v19

    goto :goto_5

    .line 1812
    :cond_e
    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_7

    .line 1813
    const/4 v3, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move v4, v0

    aput v4, v8, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1814
    sub-int v5, v5, v19

    goto/16 :goto_5

    .line 1816
    :cond_f
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_10

    .line 1817
    const/16 v7, 0x42

    goto/16 :goto_5

    .line 1818
    :cond_10
    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_7

    .line 1819
    const/16 v7, 0x11

    goto/16 :goto_5

    .line 1834
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v7           #direction:I
    .end local v8           #deltas:[I
    .end local v18           #edgeFlags:I
    .end local v19           #edgeSlop:I
    .end local v21           #handled:Z
    .end local v25           #isDown:Z
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_11

    .line 1836
    :try_start_4
    sget-object v4, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v5, v0

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1840
    :cond_11
    :goto_7
    if-eqz v20, :cond_12

    .line 1841
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 1834
    :cond_12
    throw v3

    .line 1849
    .end local v16           #callWhenDone:Z
    .end local v20           #event:Landroid/view/MotionEvent;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverTrackballEvent(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_8

    .line 1852
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->handleAppVisibility(Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v3, 0x0

    goto :goto_9

    .line 1855
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->handleGetNewSurface()V

    goto/16 :goto_0

    .line 1858
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/view/ViewRoot$ResizedInfo;

    .line 1860
    .local v27, ri:Landroid/view/ViewRoot$ResizedInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v3, v3, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    .line 1868
    .end local v27           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_15
    :sswitch_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 1869
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewRoot$ResizedInfo;

    move-object v0, v3

    iget-object v0, v0, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 1870
    .local v17, config:Landroid/content/res/Configuration;
    if-eqz v17, :cond_16

    .line 1871
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1873
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v3, v3, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v3, v3, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1879
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_17

    .line 1880
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1883
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_18

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    .line 1886
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->requestLayout()V

    goto/16 :goto_0

    .line 1890
    .end local v17           #config:Landroid/content/res/Configuration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 1891
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 1892
    .local v22, hasWindowFocus:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    move/from16 v0, v22

    move-object v1, v3

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1893
    if-eqz v22, :cond_19

    .line 1894
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v3, v0

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    move/from16 v23, v3

    .line 1895
    .local v23, inTouchMode:Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 1897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v3, v0

    if-eqz v3, :cond_19

    .line 1898
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .line 1900
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v3, v0

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v3, v0

    if-nez v3, :cond_19

    .line 1901
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->initializeGL()V

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v3, v0

    if-eqz v3, :cond_19

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget v15, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1904
    .local v15, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v15

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1912
    .end local v15           #appScale:F
    .end local v23           #inTouchMode:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 1915
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 1916
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_1b

    .line 1917
    if-eqz v22, :cond_1a

    if-eqz v9, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v3, v0

    if-eqz v3, :cond_1a

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v9, v3}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1920
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v3}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1926
    :cond_1b
    if-eqz v22, :cond_1d

    .line 1927
    if-eqz v9, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v3, v0

    if-eqz v3, :cond_1c

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v3, v0

    if-nez v3, :cond_20

    const/4 v3, 0x1

    move v13, v3

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v9 .. v14}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1934
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v3, v0

    and-int/lit16 v3, v3, -0x101

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1939
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 1942
    :cond_1d
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 1943
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->sendAccessibilityEvents()V

    goto/16 :goto_0

    .line 1891
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v22           #hasWindowFocus:Z
    .restart local p1
    :cond_1e
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_a

    .line 1894
    .restart local v22       #hasWindowFocus:Z
    :cond_1f
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_b

    .line 1928
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_20
    const/4 v3, 0x0

    move v13, v3

    goto :goto_c

    .line 1948
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v22           #hasWindowFocus:Z
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->doDie()V

    goto/16 :goto_0

    .line 1954
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/KeyEvent;

    .line 1955
    .local v20, event:Landroid/view/KeyEvent;
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_21

    .line 1958
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    move-object/from16 v0, v20

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v20

    .line 1961
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 1964
    .end local v20           #event:Landroid/view/KeyEvent;
    .restart local p1
    :sswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 1965
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v9, :cond_0

    .line 1966
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputConnection;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 1970
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p0
    :sswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 1971
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v9, :cond_0

    .line 1972
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 1976
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1837
    .restart local v16       #callWhenDone:Z
    .local v20, event:Landroid/view/MotionEvent;
    .restart local p0
    :catch_0
    move-exception v3

    goto/16 :goto_6

    :catch_1
    move-exception v4

    goto/16 :goto_7

    .line 1760
    :catch_2
    move-exception v3

    goto/16 :goto_3

    .line 1713
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_9
        0x3eb -> :sswitch_a
        0x3ec -> :sswitch_b
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_d
        0x3f4 -> :sswitch_e
        0x3f5 -> :sswitch_f
        0x3f6 -> :sswitch_10
    .end sparse-switch
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v2, -0x1

    .line 607
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 609
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_3

    .line 610
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 611
    iget-object p2, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 612
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_1

    .line 613
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 615
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 618
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 622
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 623
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_4

    .line 624
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 626
    :cond_4
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRoot;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 634
    return-object v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    return v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 2627
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2629
    :goto_0
    return v1

    .line 2628
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2629
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 6
    .parameter "effectId"

    .prologue
    const-string v5, "ViewRoot"

    .line 2581
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2584
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRoot;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2586
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 2604
    const/16 v2, 0x9

    if-lt p1, v2, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 2606
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TwFramework: Sound effect play: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2620
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 2588
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2615
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2617
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 2591
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_1
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 2594
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 2597
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 2600
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 2612
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 302
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1617
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1618
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1619
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1620
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1624
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1567
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1568
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_0

    .line 1569
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1570
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1572
    :cond_0
    iput-object p2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1575
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2822
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 2818
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 596
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 597
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1193
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1194
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 1199
    :cond_0
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .locals 2
    .parameter "seq"

    .prologue
    .line 2393
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 2394
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2395
    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 2396
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2398
    :cond_1
    return-object v0
.end method

.method public scheduleTraversals()V
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 652
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    .line 654
    :cond_0
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1445
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1446
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 1447
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1448
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 1449
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 1451
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_4

    .line 1457
    :cond_0
    iget v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    .line 1464
    iget-object v2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    .line 1469
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v7, :cond_2

    .line 1470
    :cond_1
    iput-object v8, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move v6, v9

    .line 1563
    .end local v2           #focus:Landroid/view/View;
    :goto_0
    return v6

    .line 1474
    .restart local v2       #focus:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_3

    .line 1478
    const/4 p1, 0x0

    .line 1483
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_8

    iget-boolean v6, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    .line 1549
    .end local v2           #focus:Landroid/view/View;
    :cond_4
    :goto_1
    iget v6, p0, Landroid/view/ViewRoot;->mScrollY:I

    if-eq v4, v6, :cond_7

    .line 1552
    if-nez p2, :cond_e

    .line 1553
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5

    .line 1554
    new-instance v6, Landroid/widget/Scroller;

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    .line 1556
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/ViewRoot;->mScrollY:I

    iget v8, p0, Landroid/view/ViewRoot;->mScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1560
    :cond_6
    :goto_2
    iput v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    :cond_7
    move v6, v3

    .line 1563
    goto :goto_0

    .line 1490
    .restart local v2       #focus:Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_4

    .line 1494
    iput-object v2, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 1495
    iput-boolean v9, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1498
    iget-object v6, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1503
    if-nez p1, :cond_b

    .line 1504
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1507
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 1508
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1522
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1526
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_c

    .line 1543
    :cond_a
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    .line 1516
    :cond_b
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1532
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_d

    .line 1533
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    goto :goto_4

    .line 1536
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_a

    .line 1538
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_4

    .line 1557
    .end local v2           #focus:Landroid/view/View;
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_6

    .line 1558
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_2
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 552
    monitor-enter p0

    .line 553
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 555
    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .line 557
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 558
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 560
    if-eqz p2, :cond_0

    .line 561
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 562
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 565
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    .line 567
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 572
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 573
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 574
    monitor-exit p0

    .line 575
    return-void

    .line 574
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 12
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v5, "Unable to add window -- token "

    const-string v5, "Unable to add window "

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v5, :cond_b

    .line 435
    iput-object p1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 436
    iget-object v5, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 437
    iget-object p2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 438
    iget-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 439
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 440
    .local v0, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 442
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 443
    :cond_0
    iget-object v5, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 447
    :cond_1
    const/4 v4, 0x0

    .line 448
    .local v4, restore:Z
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_2

    .line 449
    const/4 v4, 0x1

    .line 450
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 451
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v5, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 455
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 456
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    or-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 459
    :cond_3
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v5, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 460
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 461
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 462
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_7

    move v6, v11

    :goto_0
    iput-boolean v6, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 463
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v6, :cond_8

    const/high16 v6, 0x3f80

    :goto_1
    iput v6, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 465
    if-eqz p3, :cond_4

    .line 466
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 469
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 475
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :try_start_1
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v6, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v8

    iget-object v9, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 486
    .local v2, res:I
    if-eqz v4, :cond_5

    .line 487
    :try_start_2
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 491
    :cond_5
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_6

    .line 492
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 494
    :cond_6
    iget-object v5, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 495
    iget-object v5, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 497
    if-gez v2, :cond_a

    .line 498
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 499
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 500
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 501
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 502
    packed-switch v2, :pswitch_data_0

    .line 533
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- unknown error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 540
    .end local v0           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v2           #res:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #restore:Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v0       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #restore:Z
    :cond_7
    move v6, v10

    .line 462
    goto/16 :goto_0

    .line 463
    :cond_8
    :try_start_3
    iget-object v6, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v6, v6, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 479
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 480
    .local v1, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 481
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 482
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 483
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 484
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Adding window failed"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_9

    .line 487
    :try_start_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 486
    :cond_9
    throw v5

    .line 505
    .restart local v2       #res:I
    :pswitch_0
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not valid; is your activity running?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 509
    :pswitch_1
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not for an application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 513
    :pswitch_2
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- app for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is exiting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 517
    :pswitch_3
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has already been added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 523
    :pswitch_4
    monitor-exit p0

    .line 541
    .end local v0           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v2           #res:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #restore:Z
    :goto_2
    return-void

    .line 525
    .restart local v0       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #res:I
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #restore:Z
    :pswitch_5
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- another window of this type already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 529
    :pswitch_6
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- permission denied for this window type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 536
    :cond_a
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 537
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_c

    move v5, v11

    :goto_3
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    .line 538
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_d

    move v5, v11

    :goto_4
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 540
    .end local v0           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v2           #res:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #restore:Z
    :cond_b
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .restart local v0       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #res:I
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #restore:Z
    :cond_c
    move v5, v10

    .line 537
    goto :goto_3

    :cond_d
    move v5, v10

    .line 538
    goto :goto_4

    .line 502
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 2796
    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleTraversals()V
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 659
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->removeMessages(I)V

    .line 661
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 4
    .parameter "config"
    .parameter "force"

    .prologue
    .line 1653
    sget-object v2, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1654
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1655
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-interface {v1, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1654
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1657
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1662
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1663
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1665
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1666
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1667
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1670
    :cond_3
    return-void

    .line 1657
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2766
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2767
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2768
    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2769
    if-eqz p2, :cond_1

    move v1, v3

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2770
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2771
    return-void

    :cond_0
    move v1, v2

    .line 2768
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2769
    goto :goto_1
.end method
