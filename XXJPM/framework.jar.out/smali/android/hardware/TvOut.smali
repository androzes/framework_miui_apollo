.class public Landroid/hardware/TvOut;
.super Ljava/lang/Object;
.source "TvOut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/TvOut$EventHandler;
    }
.end annotation


# static fields
.field private static final ITVOUT:Ljava/lang/String; = "android.hardware.tvout"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvOut-Client"

.field private static final TVOUT_COMPLETE:I = 0x2

.field private static final TVOUT_NOP:I = 0x0

.field private static final TVOUT_PREPARED:I = 0x1


# instance fields
.field private mEventHandler:Landroid/hardware/TvOut$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "tvout_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/TvOut;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/hardware/TvOut;->_native_setup(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private native _DisableTvOut()V
.end method

.method private native _EnableTvOut()V
.end method

.method private native _SetOrientation(I)V
.end method

.method private native _SetTvScreenSize(I)V
.end method

.method private native _SetTvSystem(I)V
.end method

.method private native _TvOutResume(I)V
.end method

.method private native _TvOutSetImageString(Ljava/lang/String;)V
.end method

.method private native _TvOutSuspend(Ljava/lang/String;)V
.end method

.method private native _isEnabled()Z
.end method

.method private final native _native_setup(Ljava/lang/Object;)V
.end method

.method private final native _release()V
.end method

.method static synthetic access$000(Landroid/hardware/TvOut;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Landroid/hardware/TvOut;->mNativeContext:I

    return v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "tvout_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 166
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TvOut;

    .line 167
    .local v1, tvout:Landroid/hardware/TvOut;
    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/TvOut$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/TvOut$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public DisableTvOut()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/hardware/TvOut;->_DisableTvOut()V

    .line 214
    return-void
.end method

.method public EnableTvOut()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/hardware/TvOut;->_EnableTvOut()V

    .line 195
    return-void
.end method

.method public SetOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetOrientation(I)V

    .line 280
    return-void
.end method

.method public SetTvScreenSize(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvScreenSize(I)V

    .line 240
    return-void
.end method

.method public SetTvSystem(I)V
    .locals 0
    .parameter "system"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvSystem(I)V

    .line 257
    return-void
.end method

.method public TvOutResume(I)V
    .locals 0
    .parameter "tvoutTime"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutResume(I)V

    .line 298
    return-void
.end method

.method public TvOutSetImageString(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public TvOutSuspend(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "TvOut-Client"

    .line 285
    const v2, 0x1040354

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, text:Ljava/lang/String;
    const-string v2, "TvOut-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvOutSuspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, "TvOut-Client"

    const-string v2, "drawText succeeded "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0, v1}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 71
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isEnabled()Z

    move-result v0

    return v0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.hardware.tvout"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 114
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
