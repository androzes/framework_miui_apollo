.class Lcom/android/server/TvOutService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvOutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    .line 99
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v1}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "tv_system"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    const-string v1, "tv_out"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/TvOutService$SettingsObserver;->update()V

    .line 111
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/server/TvOutService$SettingsObserver;->update()V

    .line 116
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    .line 120
    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v6}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 121
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 122
    .local v1, isupdatetvsystem:Z
    const/4 v0, 0x0

    .line 126
    .local v0, isupdatetvstatus:Z
    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    iget-object v6, v6, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 128
    :try_start_0
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v7}, Lcom/android/server/TvOutService;->access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tv_system"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, tvoutsystem:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 130
    .local v5, tvsystem:I
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v7}, Lcom/android/server/TvOutService;->access$100(Lcom/android/server/TvOutService;)I

    move-result v7

    if-eq v7, v5, :cond_0

    .line 131
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v7, v5}, Lcom/android/server/TvOutService;->access$102(Lcom/android/server/TvOutService;I)I

    .line 132
    const/4 v1, 0x1

    .line 136
    :cond_0
    const-string v7, "tv_out"

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 137
    .local v4, tvstatus:I
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v7}, Lcom/android/server/TvOutService;->access$200(Lcom/android/server/TvOutService;)I

    move-result v7

    if-eq v7, v4, :cond_1

    .line 138
    iget-object v7, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v7, v4}, Lcom/android/server/TvOutService;->access$202(Lcom/android/server/TvOutService;I)I

    .line 139
    const/4 v0, 0x1

    .line 142
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v1, :cond_2

    .line 145
    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v6}, Lcom/android/server/TvOutService;->access$300(Lcom/android/server/TvOutService;)V

    .line 146
    const/4 v1, 0x0

    .line 148
    :cond_2
    if-eqz v0, :cond_3

    .line 149
    iget-object v6, p0, Lcom/android/server/TvOutService$SettingsObserver;->this$0:Lcom/android/server/TvOutService;

    invoke-static {v6}, Lcom/android/server/TvOutService;->access$400(Lcom/android/server/TvOutService;)V

    .line 150
    const/4 v0, 0x0

    .line 153
    :cond_3
    return-void

    .line 142
    .end local v3           #tvoutsystem:Ljava/lang/String;
    .end local v4           #tvstatus:I
    .end local v5           #tvsystem:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
