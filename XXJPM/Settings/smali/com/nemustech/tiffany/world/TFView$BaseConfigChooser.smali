.class abstract Lcom/nemustech/tiffany/world/TFView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "TFView.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .parameter "configSpec"

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView$BaseConfigChooser;->mConfigSpec:[I

    .line 732
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 734
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 735
    .local v5, num_config:[I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 737
    aget v4, v5, v4

    .line 739
    .local v4, numConfigs:I
    if-gtz v4, :cond_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 745
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 747
    invoke-virtual {p0, p1, p2, v3}, Lcom/nemustech/tiffany/world/TFView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 748
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_1

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_1
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
