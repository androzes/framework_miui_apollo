.class Lcom/android/server/status/StatusBarService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 3
    .parameter

    .prologue
    .line 3927
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3928
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3929
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3930
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3931
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3932
    iget-object v2, p1, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3933
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3934
    .local v1, sdFilter:Landroid/content/IntentFilter;
    iget-object v2, p1, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3935
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3939
    const/4 v8, 0x0

    .line 3940
    .local v8, pkgList:[Ljava/lang/String;
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3941
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3951
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 3952
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    if-eqz v8, :cond_3

    .line 3953
    iget-object v9, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    monitor-enter v9

    .line 3954
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v4

    .line 3955
    .local v7, pkg:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v10, v10, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v7}, Lcom/android/server/status/NotificationViewList;->notificationsForPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3954
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3943
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    .end local v7           #pkg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3944
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 3945
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 3946
    .restart local v7       #pkg:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3947
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    .end local v8           #pkgList:[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v7, v8, v9

    .restart local v8       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .line 3957
    .end local v2           #data:Landroid/net/Uri;
    .end local v7           #pkg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3960
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    if-eqz v6, :cond_4

    .line 3961
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3962
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 3963
    iget-object v10, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/status/StatusBarNotification;

    iget-object v9, v9, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v9}, Lcom/android/server/status/StatusBarService;->removeIcon(Landroid/os/IBinder;)V

    .line 3962
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3957
    .end local v0           #N:I
    .end local v3           #i:I
    .restart local v1       #arr$:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 3966
    .end local v1           #arr$:[Ljava/lang/String;
    :cond_4
    return-void
.end method
