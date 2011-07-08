.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final DISABLE_EXPAND:I = 0x1

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x4

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x2

.field public static final DISABLE_NOTIFICATION_SOUNDS:I = 0x10

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x8

.field private static final TAG:Ljava/lang/String; = "StatusBarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/IStatusBar;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 78
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 79
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStatusBar;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    .line 81
    return-void
.end method

.method private isValidIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 250
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;II)Landroid/os/IBinder;
    .locals 3
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/app/IStatusBar;->addIcon(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public collapse()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1}, Landroid/app/IStatusBar;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disable(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/app/IStatusBar;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1}, Landroid/app/IStatusBar;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 102
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 104
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEventContact(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->getEventContact(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 229
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "StatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventContact - Invalid Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventCount(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->getEventCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 216
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 219
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "StatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventCount - Invalid Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEventIndexWithReq(Ljava/lang/String;I)I
    .locals 2
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1, p2}, Landroid/app/IStatusBar;->getEventIndexWithReq(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEventIntent(I)Landroid/app/PendingIntent;
    .locals 4
    .parameter "index"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->getEventIntent(I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 242
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "StatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventIntent - Invalid Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventText(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->getEventText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 191
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "StatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventText - Invalid Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventTime(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->getEventTime(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 201
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 204
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "StatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventTime - Invalid Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventTitle(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/app/StatusBarManager;->isValidIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->getEventTitle(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 178
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "StatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEventTitle - Invalid Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeIcon(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1, p1}, Landroid/app/IStatusBar;->removeIcon(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    invoke-interface {v1}, Landroid/app/IStatusBar;->toggle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateIcon(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 7
    .parameter "key"
    .parameter "slot"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Landroid/app/IStatusBar;

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IStatusBar;->updateIcon(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 146
    .local v6, ex:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
