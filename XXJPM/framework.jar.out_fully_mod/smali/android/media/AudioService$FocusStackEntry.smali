.class Landroid/media/AudioService$FocusStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusStackEntry"
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;

.field public mFocusChangeType:I

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public mIsTransportControlReceiver:Z

.field public mSourceRef:Landroid/os/IBinder;

.field public mStreamType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2149
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2151
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2152
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2157
    return-void
.end method

.method public constructor <init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "streamType"
    .parameter "duration"
    .parameter "isTransportControlReceiver"
    .parameter "afl"
    .parameter "source"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2149
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2151
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2152
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2161
    iput p1, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2162
    iput-boolean p3, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2163
    iput-object p4, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2164
    iput-object p5, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2165
    iput-object p6, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    .line 2166
    iput p2, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    .line 2167
    return-void
.end method
