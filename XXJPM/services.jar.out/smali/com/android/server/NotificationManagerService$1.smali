.class Lcom/android/server/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/status/StatusBarService$NotificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearAll()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService;->cancelAll()V

    .line 285
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/16 v4, 0x10

    const/16 v5, 0x40

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;III)V

    .line 290
    return-void
.end method

.method public onPanelRevealed()V
    .locals 5

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 295
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$602(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 298
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 308
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 311
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 317
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)V

    .line 318
    monitor-exit v2

    .line 319
    return-void

    .line 301
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 318
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 311
    .restart local v0       #identity:J
    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public onSetDisabled(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 261
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3, p1}, Lcom/android/server/NotificationManagerService;->access$202(Lcom/android/server/NotificationManagerService;I)I

    .line 262
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 266
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 274
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 277
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    .end local v0           #identity:J
    :cond_0
    monitor-exit v2

    .line 281
    return-void

    .line 269
    .restart local v0       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 280
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 277
    .restart local v0       #identity:J
    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method
