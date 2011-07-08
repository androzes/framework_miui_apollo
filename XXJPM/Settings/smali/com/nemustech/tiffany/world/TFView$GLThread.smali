.class Lcom/nemustech/tiffany/world/TFView$GLThread;
.super Ljava/lang/Thread;
.source "TFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/nemustech/tiffany/world/TFView$Renderer;

.field private mRequestRender:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFView;Lcom/nemustech/tiffany/world/TFView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 998
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->this$0:Lcom/nemustech/tiffany/world/TFView;

    .line 999
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1000
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mDone:Z

    .line 1001
    iput v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWidth:I

    .line 1002
    iput v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHeight:I

    .line 1003
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRequestRender:Z

    .line 1004
    iput v2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderMode:I

    .line 1005
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderer:Lcom/nemustech/tiffany/world/TFView$Renderer;

    .line 1006
    const-string v0, "Tiffany Renderer"

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->setName(Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 1244
    monitor-enter p0

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 1250
    :goto_0
    return-object v0

    .line 1249
    :cond_0
    monitor-exit p0

    .line 1250
    const/4 v0, 0x0

    goto :goto_0

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private guardedRun()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1034
    new-instance v8, Lcom/nemustech/tiffany/world/TFView$EglHelper;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-direct {v8, v9}, Lcom/nemustech/tiffany/world/TFView$EglHelper;-><init>(Lcom/nemustech/tiffany/world/TFView;)V

    iput-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    .line 1036
    :try_start_0
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->start()V

    .line 1038
    const/4 v1, 0x0

    .line 1039
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v6, 0x1

    .line 1040
    .local v6, tellRendererSurfaceCreated:Z
    const/4 v5, 0x1

    .line 1046
    .local v5, tellRendererSurfaceChanged:Z
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mDone:Z

    if-nez v8, :cond_5

    .line 1053
    const/4 v3, 0x0

    .line 1054
    .local v3, needStart:Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1056
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v4

    .local v4, r:Ljava/lang/Runnable;
    if-eqz v4, :cond_1

    .line 1057
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1087
    .end local v4           #r:Ljava/lang/Runnable;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1124
    .end local v1           #gl:Ljavax/microedition/khronos/opengles/GL10;
    .end local v3           #needStart:Z
    .end local v5           #tellRendererSurfaceChanged:Z
    .end local v6           #tellRendererSurfaceCreated:Z
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->destroySurface()V

    .line 1125
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->finish()V

    throw v8

    .line 1059
    .restart local v1       #gl:Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3       #needStart:Z
    .restart local v4       #r:Ljava/lang/Runnable;
    .restart local v5       #tellRendererSurfaceChanged:Z
    .restart local v6       #tellRendererSurfaceCreated:Z
    :cond_1
    :try_start_3
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mPaused:Z

    if-eqz v8, :cond_2

    .line 1060
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->destroySurface()V

    .line 1061
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->finish()V

    .line 1062
    const/4 v3, 0x1

    .line 1064
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->needToWait()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1065
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHasSurface:Z

    if-nez v8, :cond_3

    .line 1066
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWaitingForSurface:Z

    if-nez v8, :cond_3

    .line 1067
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderer:Lcom/nemustech/tiffany/world/TFView$Renderer;

    invoke-interface {v8, v1}, Lcom/nemustech/tiffany/world/TFView$Renderer;->onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1068
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->destroySurface()V

    .line 1069
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWaitingForSurface:Z

    .line 1070
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1073
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 1075
    :cond_4
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mDone:Z

    if-eqz v8, :cond_6

    .line 1076
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1119
    .end local v3           #needStart:Z
    .end local v4           #r:Ljava/lang/Runnable;
    :cond_5
    :try_start_4
    const-string v8, "TFView"

    const-string v9, "Tiffany Renderer destroyed."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1124
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->destroySurface()V

    .line 1125
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->finish()V

    .line 1127
    return-void

    .line 1078
    .restart local v3       #needStart:Z
    .restart local v4       #r:Ljava/lang/Runnable;
    :cond_6
    :try_start_5
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-static {v8}, Lcom/nemustech/tiffany/world/TFView;->access$700(Lcom/nemustech/tiffany/world/TFView;)Z

    move-result v0

    .line 1079
    .local v0, changed:Z
    iget v7, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWidth:I

    .line 1080
    .local v7, w:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHeight:I

    .line 1081
    .local v2, h:I
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->this$0:Lcom/nemustech/tiffany/world/TFView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/nemustech/tiffany/world/TFView;->access$702(Lcom/nemustech/tiffany/world/TFView;Z)Z

    .line 1082
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRequestRender:Z

    .line 1083
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHasSurface:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWaitingForSurface:Z

    if-eqz v8, :cond_7

    .line 1084
    const/4 v0, 0x1

    .line 1085
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWaitingForSurface:Z

    .line 1087
    :cond_7
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1088
    if-eqz v3, :cond_8

    .line 1089
    :try_start_6
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->start()V

    .line 1090
    const/4 v6, 0x1

    .line 1091
    const/4 v0, 0x1

    .line 1093
    :cond_8
    if-eqz v0, :cond_9

    .line 1094
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->this$0:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .end local v1           #gl:Ljavax/microedition/khronos/opengles/GL10;
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 1095
    .restart local v1       #gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x1

    .line 1097
    :cond_9
    if-eqz v6, :cond_a

    .line 1098
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderer:Lcom/nemustech/tiffany/world/TFView$Renderer;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v8, v1, v9}, Lcom/nemustech/tiffany/world/TFView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1099
    const/4 v6, 0x0

    .line 1101
    :cond_a
    if-eqz v5, :cond_b

    .line 1102
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderer:Lcom/nemustech/tiffany/world/TFView$Renderer;

    invoke-interface {v8, v1, v7, v2}, Lcom/nemustech/tiffany/world/TFView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1103
    const/4 v5, 0x0

    .line 1105
    :cond_b
    if-lez v7, :cond_0

    if-lez v2, :cond_0

    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mPaused:Z

    if-nez v8, :cond_0

    .line 1106
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1109
    :try_start_7
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderer:Lcom/nemustech/tiffany/world/TFView$Renderer;

    invoke-interface {v8, v1}, Lcom/nemustech/tiffany/world/TFView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1110
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1116
    :try_start_8
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEglHelper:Lcom/nemustech/tiffany/world/TFView$EglHelper;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFView$EglHelper;->swap()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 1110
    :catchall_2
    move-exception v8

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method private needToWait()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TFView"

    .line 1130
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mDone:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1144
    :goto_0
    return v0

    .line 1134
    :cond_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_2

    .line 1135
    :cond_1
    const-string v0, "TFView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TFView stopped. paused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1136
    goto :goto_0

    .line 1139
    :cond_2
    iget v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWidth:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHeight:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderMode:I

    if-ne v0, v2, :cond_4

    :cond_3
    move v0, v1

    .line 1140
    goto :goto_0

    .line 1143
    :cond_4
    const-string v0, "TFView"

    const-string v0, "TFView stopped."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1144
    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 2

    .prologue
    .line 1257
    monitor-enter p0

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1259
    const-string v0, "TFView"

    const-string v1, "Tiffany world\'s event queue cleared."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    monitor-exit p0

    .line 1261
    return-void

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 1160
    monitor-enter p0

    .line 1161
    :try_start_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderMode:I

    monitor-exit p0

    return v0

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    .line 1195
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mPaused:Z

    .line 1196
    monitor-exit p0

    .line 1197
    return-void

    .line 1196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1200
    monitor-enter p0

    .line 1201
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mPaused:Z

    .line 1202
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1203
    monitor-exit p0

    .line 1204
    return-void

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1208
    iget v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHeight:I

    if-eq p2, v0, :cond_1

    .line 1209
    :cond_0
    const-string v0, "TFView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tiffany view window resize ow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    iput p1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWidth:I

    .line 1212
    iput p2, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHeight:I

    .line 1213
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->this$0:Lcom/nemustech/tiffany/world/TFView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFView;->access$702(Lcom/nemustech/tiffany/world/TFView;Z)Z

    .line 1214
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1215
    monitor-exit p0

    .line 1217
    :cond_1
    return-void

    .line 1215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1238
    monitor-enter p0

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    monitor-exit p0

    .line 1241
    return-void

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 1222
    monitor-enter p0

    .line 1223
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mDone:Z

    .line 1224
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :try_start_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1231
    :goto_0
    return-void

    .line 1225
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 1166
    monitor-enter p0

    .line 1167
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRequestRender:Z

    .line 1168
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1169
    monitor-exit p0

    .line 1170
    return-void

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1021
    :try_start_0
    invoke-static {}, Lcom/nemustech/tiffany/world/TFView;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :try_start_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->guardedRun()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1029
    invoke-static {}, Lcom/nemustech/tiffany/world/TFView;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1031
    :goto_0
    return-void

    .line 1022
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1029
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/nemustech/tiffany/world/TFView;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 1026
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1029
    invoke-static {}, Lcom/nemustech/tiffany/world/TFView;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nemustech/tiffany/world/TFView;->access$600()Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    const/4 v0, 0x1

    .line 1148
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_1
    monitor-enter p0

    .line 1152
    :try_start_0
    iput p1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mRenderMode:I

    .line 1153
    if-ne p1, v0, :cond_2

    .line 1154
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1156
    :cond_2
    monitor-exit p0

    .line 1157
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 1

    .prologue
    .line 1173
    monitor-enter p0

    .line 1174
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHasSurface:Z

    .line 1175
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1176
    monitor-exit p0

    .line 1177
    return-void

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 1180
    monitor-enter p0

    .line 1181
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mHasSurface:Z

    .line 1182
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1183
    :goto_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFView$GLThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1190
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1191
    return-void
.end method
