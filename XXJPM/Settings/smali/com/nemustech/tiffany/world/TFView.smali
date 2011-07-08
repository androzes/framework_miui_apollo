.class public Lcom/nemustech/tiffany/world/TFView;
.super Landroid/view/SurfaceView;
.source "TFView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFView$1;,
        Lcom/nemustech/tiffany/world/TFView$LogWriter;,
        Lcom/nemustech/tiffany/world/TFView$GLThread;,
        Lcom/nemustech/tiffany/world/TFView$EglHelper;,
        Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;,
        Lcom/nemustech/tiffany/world/TFView$ComponentSizeChooser;,
        Lcom/nemustech/tiffany/world/TFView$BaseConfigChooser;,
        Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;,
        Lcom/nemustech/tiffany/world/TFView$DefaultWindowSurfaceFactory;,
        Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;,
        Lcom/nemustech/tiffany/world/TFView$DefaultContextFactory;,
        Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;,
        Lcom/nemustech/tiffany/world/TFView$Renderer;,
        Lcom/nemustech/tiffany/world/TFView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field static final TAG:Ljava/lang/String; = "TFView"

.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;

.field private mEGLContextFactory:Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

.field private mGLWrapper:Lcom/nemustech/tiffany/world/TFView$GLWrapper;

.field private mShouldTellSurfaceChanged:Z

.field private mShouldTellSurfaceCreated:Z

.field private mSizeChanged:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1316
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/nemustech/tiffany/world/TFView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mSizeChanged:Z

    .line 190
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView;->init()V

    .line 192
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFJniUtils;->verifyContext(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mSizeChanged:Z

    .line 201
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView;->init()V

    .line 203
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFJniUtils;->verifyContext(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLConfigChooser:Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLContextFactory:Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLWindowSurfaceFactory:Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$GLWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLWrapper:Lcom/nemustech/tiffany/world/TFView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/nemustech/tiffany/world/TFView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/world/TFView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/nemustech/tiffany/world/TFView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    if-eqz v0, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 210
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 211
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 212
    return-void
.end method


# virtual methods
.method clearEventQueue()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->clearEvents()V

    .line 510
    return-void
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/nemustech/tiffany/world/TFView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 520
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->requestExitAndWait()V

    .line 521
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->onPause()V

    .line 485
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->onResume()V

    .line 496
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->requestRender()V

    .line 426
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 241
    iput p1, p0, Lcom/nemustech/tiffany/world/TFView;->mDebugFlags:I

    .line 242
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 383
    new-instance v0, Lcom/nemustech/tiffany/world/TFView$ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFView$ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFView;->setEGLConfigChooser(Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;)V

    .line 385
    return-void
.end method

.method public setEGLConfigChooser(Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView;->checkRenderThreadState()V

    .line 347
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLConfigChooser:Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;

    .line 348
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 365
    new-instance v0, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFView;->setEGLConfigChooser(Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;)V

    .line 366
    return-void
.end method

.method public setEGLContextFactory(Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView;->checkRenderThreadState()V

    .line 317
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLContextFactory:Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

    .line 318
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView;->checkRenderThreadState()V

    .line 331
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLWindowSurfaceFactory:Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    .line 332
    return-void
.end method

.method public setGLWrapper(Lcom/nemustech/tiffany/world/TFView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView;->mGLWrapper:Lcom/nemustech/tiffany/world/TFView$GLWrapper;

    .line 229
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFView$GLThread;->setRenderMode(I)V

    .line 404
    return-void
.end method

.method public setRenderer(Lcom/nemustech/tiffany/world/TFView$Renderer;)V
    .locals 4
    .parameter "renderer"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView;->checkRenderThreadState()V

    .line 280
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLConfigChooser:Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/world/TFView$SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLConfigChooser:Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLContextFactory:Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/nemustech/tiffany/world/TFView$DefaultContextFactory;

    invoke-direct {v0, v3}, Lcom/nemustech/tiffany/world/TFView$DefaultContextFactory;-><init>(Lcom/nemustech/tiffany/world/TFView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLContextFactory:Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLWindowSurfaceFactory:Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Lcom/nemustech/tiffany/world/TFView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v3}, Lcom/nemustech/tiffany/world/TFView$DefaultWindowSurfaceFactory;-><init>(Lcom/nemustech/tiffany/world/TFView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mEGLWindowSurfaceFactory:Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    .line 289
    :cond_2
    new-instance v0, Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/nemustech/tiffany/world/TFView$GLThread;-><init>(Lcom/nemustech/tiffany/world/TFView;Lcom/nemustech/tiffany/world/TFView$Renderer;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    .line 290
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->start()V

    .line 292
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceCreated:Z

    if-eqz v0, :cond_3

    .line 294
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceCreated:Z

    .line 295
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->surfaceCreated()V

    .line 298
    :cond_3
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceChanged:Z

    if-eqz v0, :cond_4

    .line 300
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceChanged:Z

    .line 301
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFView;->mSurfaceWidth:I

    iget v2, p0, Lcom/nemustech/tiffany/world/TFView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFView$GLThread;->onWindowResize(II)V

    .line 303
    :cond_4
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 463
    const-string v0, "TFView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TFView surfaceChanged, renderer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceChanged:Z

    .line 467
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/nemustech/tiffany/world/TFView$GLThread;->onWindowResize(II)V

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceChanged:Z

    .line 472
    iput p3, p0, Lcom/nemustech/tiffany/world/TFView;->mSurfaceWidth:I

    .line 473
    iput p4, p0, Lcom/nemustech/tiffany/world/TFView;->mSurfaceHeight:I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 433
    const-string v0, "TFView"

    const-string v1, "TFView surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceCreated:Z

    .line 437
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->surfaceCreated()V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView;->mShouldTellSurfaceCreated:Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 450
    const-string v0, "TFView"

    const-string v1, "TFView surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView;->mGLThread:Lcom/nemustech/tiffany/world/TFView$GLThread;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->surfaceDestroyed()V

    .line 456
    :cond_0
    return-void
.end method
