.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3

.field private static final localLOGV:Z


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field mDestroyReportNeeded:Z

.field mDrawingStopped:Z

.field mFormat:I

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field mNewSurfaceNeeded:Z

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mType:I

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 166
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 96
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 113
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 115
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 140
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 142
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 143
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 144
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 145
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 153
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 154
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 156
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 157
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 683
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 167
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 96
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 113
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 115
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 140
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 142
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 143
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 144
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 145
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 153
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 154
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 156
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 157
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 683
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 172
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 96
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 98
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 111
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 113
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 115
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 139
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 140
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 141
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 142
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 143
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 144
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 145
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 152
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 153
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 154
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 156
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 157
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 683
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 177
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 178
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateWindow(Z)V

    return-void
.end method

.method private reportSurfaceDestroyed()V
    .locals 7

    .prologue
    .line 564
    iget-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    if-eqz v5, :cond_0

    .line 565
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 567
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 568
    :try_start_0
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/view/SurfaceHolder$Callback;

    .line 569
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 570
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 572
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 575
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 576
    return-void
.end method

.method private updateWindow(Z)V
    .locals 38
    .parameter "force"

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    check-cast v35, Landroid/view/ViewRoot;

    .line 398
    .local v35, viewRoot:Landroid/view/ViewRoot;
    if-eqz v35, :cond_2

    .line 399
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 402
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 403
    .local v30, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-nez v5, :cond_3

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_4

    .line 404
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 407
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v26, v0

    .line 408
    .local v26, myWidth:I
    if-gtz v26, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v26

    .line 409
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v25, v0

    .line 410
    .local v25, myHeight:I
    if-gtz v25, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v25

    .line 412
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    if-nez v5, :cond_7

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 416
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v5, v0

    if-nez v5, :cond_12

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 418
    .local v21, creating:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v6, v0

    if-eq v5, v6, :cond_13

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 419
    .local v22, formatChanged:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    :cond_8
    const/4 v5, 0x1

    move/from16 v31, v5

    .line 420
    .local v31, sizeChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move v6, v0

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_15

    :cond_9
    const/4 v5, 0x1

    move/from16 v37, v5

    .line 422
    .local v37, visibleChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mType:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v6, v0

    if-eq v5, v6, :cond_16

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 423
    .local v34, typeChanged:Z
    :goto_5
    if-nez p1, :cond_a

    if-nez v21, :cond_a

    if-nez v22, :cond_a

    if-nez v31, :cond_a

    if-nez v37, :cond_a

    if-nez v34, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    move v5, v0

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 434
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 435
    .local v36, visible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLeft:I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mTop:I

    .line 437
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 438
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mType:I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-eqz v5, :cond_b

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 453
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x4218

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 465
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v5, v0

    if-nez v5, :cond_d

    .line 468
    new-instance v5, Landroid/view/SurfaceView$MyWindow;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWindowType:I

    move v6, v0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v8, v0

    if-eqz v8, :cond_17

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    .line 475
    :cond_d
    if-eqz v37, :cond_f

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 476
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->reportSurfaceDestroyed()V

    .line 479
    :cond_f
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    const/4 v5, 0x0

    :try_start_1
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v29, v0

    .line 488
    .local v29, reportDrawNeeded:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 489
    if-nez v36, :cond_18

    const/4 v5, 0x1

    :goto_7
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v9, v0

    if-eqz v36, :cond_19

    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-interface/range {v5 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v28

    .line 495
    .local v28, relayoutResult:I
    and-int/lit8 v5, v28, 0x2

    if-eqz v5, :cond_10

    .line 496
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 502
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    if-nez v5, :cond_1a

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 513
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    .line 514
    .local v33, surfaceWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    .line 515
    .local v32, surfaceHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    :cond_11
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 517
    .local v27, realSizeChanged:Z
    :goto_a
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 518
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 524
    if-eqz v36, :cond_20

    .line 525
    const/4 v5, 0x1

    :try_start_3
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v5, v0

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 529
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v0, v6

    new-array v0, v0, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    .line 530
    .local v20, callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 531
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 533
    if-eqz v37, :cond_1e

    .line 534
    const/4 v5, 0x1

    :try_start_5
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 535
    move-object/from16 v18, v20

    .local v18, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    aget-object v19, v18, v23

    .line 536
    .local v19, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 535
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 417
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v20           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #creating:Z
    .end local v22           #formatChanged:Z
    .end local v23           #i$:I
    .end local v24           #len$:I
    .end local v27           #realSizeChanged:Z
    .end local v28           #relayoutResult:I
    .end local v29           #reportDrawNeeded:Z
    .end local v31           #sizeChanged:Z
    .end local v32           #surfaceHeight:I
    .end local v33           #surfaceWidth:I
    .end local v34           #typeChanged:Z
    .end local v36           #visible:Z
    .end local v37           #visibleChanged:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_1

    .line 418
    .restart local v21       #creating:Z
    :cond_13
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_2

    .line 419
    .restart local v22       #formatChanged:Z
    :cond_14
    const/4 v5, 0x0

    move/from16 v31, v5

    goto/16 :goto_3

    .line 420
    .restart local v31       #sizeChanged:Z
    :cond_15
    const/4 v5, 0x0

    move/from16 v37, v5

    goto/16 :goto_4

    .line 422
    .restart local v37       #visibleChanged:Z
    :cond_16
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_5

    .line 471
    .restart local v34       #typeChanged:Z
    .restart local v36       #visible:Z
    :cond_17
    const/16 v8, 0x8

    goto/16 :goto_6

    .line 489
    .restart local v29       #reportDrawNeeded:Z
    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 491
    :cond_19
    const/16 v10, 0x8

    goto/16 :goto_8

    .line 508
    .restart local v28       #relayoutResult:I
    :cond_1a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v17, v0

    .line 509
    .local v17, appInvertedScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_9

    .line 520
    .end local v17           #appInvertedScale:F
    .end local v28           #relayoutResult:I
    .end local v29           #reportDrawNeeded:Z
    :catchall_0
    move-exception v5

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 554
    .end local v36           #visible:Z
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 515
    .restart local v28       #relayoutResult:I
    .restart local v29       #reportDrawNeeded:Z
    .restart local v32       #surfaceHeight:I
    .restart local v33       #surfaceWidth:I
    .restart local v36       #visible:Z
    :cond_1b
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_a

    .line 531
    .restart local v27       #realSizeChanged:Z
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 549
    :catchall_2
    move-exception v5

    const/4 v6, 0x0

    :try_start_a
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 550
    if-nez v21, :cond_1c

    if-eqz v29, :cond_1d

    .line 551
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 549
    :cond_1d
    throw v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 539
    .restart local v20       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_1e
    if-nez v21, :cond_1f

    if-nez v22, :cond_1f

    if-nez v31, :cond_1f

    if-nez v37, :cond_1f

    if-eqz v27, :cond_21

    .line 541
    :cond_1f
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    :try_start_b
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v23, 0x0

    .restart local v23       #i$:I
    :goto_c
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    aget-object v19, v18, v23

    .line 542
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v6, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 541
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 546
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v20           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v23           #i$:I
    .end local v24           #len$:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 549
    :cond_21
    const/4 v5, 0x0

    :try_start_c
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 550
    if-nez v21, :cond_22

    if-eqz v29, :cond_0

    .line 551
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 330
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 332
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 334
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 339
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 340
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 341
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 318
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 320
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 326
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    .line 291
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 292
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v7, 0x1

    .line 296
    .local v7, opaque:Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 298
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 310
    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    const/4 v7, 0x0

    :cond_2
    move v0, v7

    .line 313
    goto :goto_0

    .line 299
    :cond_3
    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 301
    .local v8, w:I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 302
    .local v6, h:I
    if-lez v8, :cond_1

    if-lez v6, :cond_1

    .line 303
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 305
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 306
    .local v1, l:I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 307
    .local v2, t:I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_1
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 581
    return-void
.end method

.method protected hideSurface()V
    .locals 13

    .prologue
    .line 242
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 246
    .local v12, metrics:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 247
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Landroid/view/SurfaceView;->mWidth:I

    iget v4, p0, Landroid/view/SurfaceView;->mHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v11, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v0 .. v11}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    :cond_0
    return-void

    .line 252
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 249
    :catch_0
    move-exception v0

    .line 252
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0
.end method

.method public isFixedSize()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 591
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 193
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 194
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 195
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 196
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 198
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 199
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 260
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 261
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 262
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 263
    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    iput-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 270
    :cond_0
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 271
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 273
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 274
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 278
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 279
    .local v1, width:I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 280
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 281
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 287
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 204
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 205
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 206
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 207
    return-void

    :cond_0
    move v0, v1

    .line 204
    goto :goto_0

    :cond_1
    move v0, v1

    .line 205
    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 213
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 214
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 215
    return-void

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0

    :cond_1
    move v0, v1

    .line 213
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 390
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 391
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .parameter "isMediaOverlay"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    const/16 v0, 0x3ec

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 358
    return-void

    .line 355
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .parameter "onTop"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 377
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 380
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected showSurface()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 230
    :cond_0
    return-void
.end method
