.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localForegroundNoti:Landroid/app/Notification;

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 263
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v7

    .line 264
    .local v7, inm:Landroid/app/INotificationManager;
    if-nez v7, :cond_0

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v8, v0, [I

    .line 269
    .local v8, outId:[I
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    invoke-interface {v7, v0, v1, v2, v8}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 271
    .end local v8           #outId:[I
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 272
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "ActivityManager"

    const-string v1, "Error showing notification for service"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    goto :goto_0

    .line 278
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method
