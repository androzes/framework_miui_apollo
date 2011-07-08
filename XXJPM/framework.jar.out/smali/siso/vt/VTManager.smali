.class public Lsiso/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsiso/vt/VTManager$EventHandler;,
        Lsiso/vt/VTManager$VTStackStateListener;,
        Lsiso/vt/VTManager$StackState;
    }
.end annotation


# static fields
.field public static final H324M_IC_START_FAILURE:I = 0x16

.field public static final H324M_IC_START_SUCESS:I = 0x15

.field public static final H324M_IC_STOP_FAILURE:I = 0x18

.field public static final H324M_IC_STOP_SUCESS:I = 0x17

.field public static final H324M_REC_CANCEL_SUCCESS:I = 0x36

.field public static final H324M_REC_FAIL:I = 0x3b

.field public static final H324M_REC_NO_DISKSPACE:I = 0x38

.field public static final H324M_REC_PROTOCOL_ERROR:I = 0x37

.field public static final H324M_REC_START_FAILURE:I = 0x33

.field public static final H324M_REC_START_SUCCESS:I = 0x32

.field public static final H324M_REC_STOP_FAILED:I = 0x35

.field public static final H324M_REC_STOP_SUCCESS:I = 0x34

.field public static final H324M_REC_SUCCESS:I = 0x3a

.field public static final H324M_REC_TIMEOUT:I = 0x39

.field public static final H324M_VT_CALL_DISCONNECTED:I = 0xf

.field public static final H324M_VT_END_CALL_IN_PROGRESS:I = 0xd

.field public static final H324M_VT_PROTOCOL_ERR_IND:I = 0xe

.field public static final H324M_VT_SESSION_STOP_FAILED:I = 0xc

.field public static final H324M_VT_SESSION_STOP_SUCCESS:I = 0xb

.field public static final H324M_VT_START_CALL_FAILURE:I = 0xa

.field public static final H324M_VT_START_CALL_SUCCESS:I = 0x9

.field public static final VTMNGR_CAMERA_START_FAILURE:I = 0x67

.field public static final VTMNGR_DECODE_JPEG_FAILURE:I = 0x65

.field public static final VTMNGR_FIRST_FRAME_INDICATION:I = 0x64

.field public static final VTMNGR_SURFACE_INIT_FAILURE:I = 0x66

.field private static vtInstance:Lsiso/vt/VTManager;


# instance fields
.field private mContext:I

.field public mEventHandler:Lsiso/vt/VTManager$EventHandler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mListenerContext:I

.field private mNearSurface:Landroid/view/Surface;

.field public mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Inside Static Block"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "vtmanager"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    .line 106
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lsiso/vt/VTManager;->native_setup(Ljava/lang/Object;)V

    .line 107
    return-void

    .line 101
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v1, Lsiso/vt/VTManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lsiso/vt/VTManager$EventHandler;-><init>(Lsiso/vt/VTManager;Lsiso/vt/VTManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto :goto_0

    .line 104
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    goto :goto_0
.end method

.method public static getInstance()Lsiso/vt/VTManager;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lsiso/vt/VTManager;

    invoke-direct {v0}, Lsiso/vt/VTManager;-><init>()V

    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    .line 117
    :cond_0
    sget-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    return-object v0
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "vt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const-string v3, "postEventFromNative"

    .line 329
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsiso/vt/VTManager;

    .line 330
    .local v0, c:Lsiso/vt/VTManager;
    if-nez v0, :cond_1

    .line 331
    const-string v2, "postEventFromNative"

    const-string v2, "Object reference is NULL"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v2, v0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "postEventFromNative"

    const-string v2, "posting message"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, v0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v2, p1, p2, p3, v0}, Lsiso/vt/VTManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 337
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    invoke-virtual {v2, v1}, Lsiso/vt/VTManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final native CancelRecording()V
.end method

.method public final native CaptureImage(Ljava/lang/String;Z)V
.end method

.method public final native FreezeVideo()V
.end method

.method public final native GetCameraParams(I)I
.end method

.method public final native ResetNearEndDisplay()V
.end method

.method public final native ResetPreviewDisplay()V
.end method

.method public final native SetCameraParams(II)I
.end method

.method public final native StartRecording(Ljava/lang/String;)V
.end method

.method public final native StartVTCall(Z)V
.end method

.method public final native StopRecording(Z)V
.end method

.method public final native StopVTCall()V
.end method

.method public final native cleanupCall()V
.end method

.method public deinitVTManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    .line 126
    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 127
    iput-object v0, p0, Lsiso/vt/VTManager;->mEventHandler:Lsiso/vt/VTManager$EventHandler;

    .line 128
    sput-object v0, Lsiso/vt/VTManager;->vtInstance:Lsiso/vt/VTManager;

    .line 129
    return-void
.end method

.method public final native releaseVTManager()V
.end method

.method public final native sendDTMF(Ljava/lang/String;I)V
.end method

.method public final native sendLiveVideo()V
.end method

.method public final native sendStillImage(Ljava/lang/String;)V
.end method

.method public final native sendVideo(Ljava/lang/String;)V
.end method

.method public final native setOrientation(I)V
.end method

.method public final native setPreviewDisplay(Landroid/view/Surface;II)V
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 139
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mSurface:Landroid/view/Surface;

    .line 140
    return-void
.end method

.method public setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 310
    const-string/jumbo v0, "setStackStateListener"

    const-string v1, "Setting mStackStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iput-object p1, p0, Lsiso/vt/VTManager;->mStackStateListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 312
    return-void
.end method

.method public final native startCamera(Landroid/view/Surface;II)V
.end method

.method public final startCamera(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 280
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    .line 281
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lsiso/vt/VTManager;->mNearSurface:Landroid/view/Surface;

    .line 282
    return-void
.end method

.method public final native stopCamera()V
.end method
