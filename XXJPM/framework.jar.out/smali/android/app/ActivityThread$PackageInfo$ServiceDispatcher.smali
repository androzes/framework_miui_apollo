.class final Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;,
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;,
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;,
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDied:Z

.field private final mFlags:I

.field private final mIServiceConnection:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

.field private final mLocation:Landroid/app/ServiceConnectionLeaked;

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .parameter "conn"
    .parameter "context"
    .parameter "activityThread"
    .parameter "flags"

    .prologue
    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    .line 1116
    new-instance v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mIServiceConnection:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

    .line 1117
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 1118
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 1119
    iput-object p3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 1120
    new-instance v0, Landroid/app/ServiceConnectionLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 1121
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    invoke-virtual {v0}, Landroid/app/ServiceConnectionLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1122
    iput p4, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mFlags:I

    .line 1123
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x1

    .line 1186
    monitor-enter p0

    .line 1187
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mDied:Z

    .line 1188
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    .line 1189
    .local v0, old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-eq v1, p2, :cond_1

    .line 1192
    :cond_0
    monitor-exit p0

    .line 1202
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1198
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    new-instance v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;

    invoke-direct {v2, p0, p1, p2, v4}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$RunConnection;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1195
    .end local v0           #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1200
    .restart local v0       #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1208
    monitor-enter p0

    .line 1209
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    .line 1210
    .local v2, old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    if-ne v3, p2, :cond_1

    .line 1212
    monitor-exit p0

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    if-eqz p2, :cond_4

    .line 1217
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mDied:Z

    .line 1218
    new-instance v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1219
    .local v1, info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    iput-object p2, v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 1220
    new-instance v3, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iput-object v3, v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    :try_start_1
    iget-object v3, v1, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1223
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1236
    .end local v1           #info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :goto_1
    if-eqz v2, :cond_2

    .line 1237
    :try_start_2
    iget-object v3, v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1239
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1242
    if-eqz v2, :cond_3

    .line 1243
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1246
    :cond_3
    if-eqz p2, :cond_0

    .line 1247
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 1224
    .restart local v1       #info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1227
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    monitor-exit p0

    goto :goto_0

    .line 1239
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #info:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    .end local v2           #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1233
    .restart local v2       #old:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    :cond_4
    :try_start_4
    iget-object v3, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1253
    return-void
.end method

.method doForget()V
    .locals 5

    .prologue
    .line 1141
    monitor-enter p0

    .line 1142
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1143
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;

    .line 1145
    .local v0, ci:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    iget-object v2, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 1148
    .end local v0           #ci:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1147
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1148
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    return-void
.end method

.method getFlags()I
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mFlags:I

    return v0
.end method

.method getIServiceConnection()Landroid/app/IServiceConnection;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mIServiceConnection:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method getLocation()Landroid/app/ServiceConnectionLeaked;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getUnbindLocation()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method setUnbindLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 1168
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    .line 1169
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "activityThread"

    .prologue
    const-string v5, "ServiceConnection "

    const-string v4, ")"

    const-string v3, " now "

    .line 1126
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 1127
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_1

    .line 1133
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnection "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_1
    return-void
.end method
