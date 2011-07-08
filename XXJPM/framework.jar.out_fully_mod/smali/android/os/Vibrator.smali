.class public Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    .line 32
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetMagnitude()V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->resetMagnitude()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->setMagnitude(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrate(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JI)V

    .line 44
    return-void
.end method

.method public vibrate(JI)V
    .locals 2
    .parameter "milliseconds"
    .parameter "magnitude"

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/os/IVibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrate([JI)V
    .locals 2
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 78
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/Vibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateCall(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 101
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    .line 102
    return-void
.end method

.method public vibrateImmVibe(II)V
    .locals 1
    .parameter "type"
    .parameter "magnitude"

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibe(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe([B)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrateImmVibe([BI)V

    .line 113
    return-void
.end method

.method public vibrateImmVibe([BI)V
    .locals 1
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibePattern([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateNotification(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method
