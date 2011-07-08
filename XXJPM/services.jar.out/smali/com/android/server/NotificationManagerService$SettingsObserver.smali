.class Lcom/android/server/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 390
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 391
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    const-string v1, "notification_light_pulse"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update()V

    .line 400
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update()V

    .line 404
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 408
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 410
    .local v0, adbEnabled:Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3, v0}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 412
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 414
    :cond_0
    const-string v3, "notification_light_pulse"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v5

    .line 416
    .local v1, pulseEnabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    if-eq v3, v1, :cond_1

    .line 417
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3, v1}, Lcom/android/server/NotificationManagerService;->access$2102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 418
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    .line 420
    :cond_1
    return-void

    .end local v0           #adbEnabled:Z
    .end local v1           #pulseEnabled:Z
    :cond_2
    move v0, v4

    .line 408
    goto :goto_0

    .restart local v0       #adbEnabled:Z
    :cond_3
    move v1, v4

    .line 414
    goto :goto_1
.end method
