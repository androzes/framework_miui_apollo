.class Lcom/nemustech/tiffany/world/TFView$EglHelper;
.super Ljava/lang/Object;
.source "TFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFView;)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    return-void
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 6
    .parameter "holder"

    .prologue
    .line 899
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    .line 905
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 907
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFView;->access$400(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFView;->access$400(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 916
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_2

    .line 917
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createWindowSurface failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 924
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 925
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglMakeCurrent failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 929
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFView;->access$500(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$GLWrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 930
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFView;->access$500(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$GLWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nemustech/tiffany/world/TFView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 944
    :cond_4
    return-object v0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 964
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 968
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFView;->access$400(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 971
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 974
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFView;->access$300(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 976
    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 980
    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 982
    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 864
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 869
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 874
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 875
    .local v0, version:[I
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 876
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFView;->access$200(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 882
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFView;->access$300(Lcom/nemustech/tiffany/world/TFView;)Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 883
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_1

    .line 884
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createContext failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 887
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 888
    return-void
.end method

.method public swap()Z
    .locals 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 960
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
