.class Lcom/android/server/status/StatusBarService$OrientationContentObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 1
    .parameter

    .prologue
    .line 3395
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$OrientationContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3396
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3397
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3400
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$OrientationContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$OrientationContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, v1, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/status/StatusBarService;->mOrientationStatus:Z

    .line 3401
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$OrientationContentObserver;->this$0:Lcom/android/server/status/StatusBarService;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)V

    .line 3402
    return-void

    :cond_0
    move v1, v3

    .line 3400
    goto :goto_0
.end method
