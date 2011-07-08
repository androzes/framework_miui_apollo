.class Lcom/android/server/status/StatusBarService$Launcher;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Launcher"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2640
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2641
    iput-object p2, p0, Lcom/android/server/status/StatusBarService$Launcher;->mIntent:Landroid/app/PendingIntent;

    .line 2642
    iput-object p3, p0, Lcom/android/server/status/StatusBarService$Launcher;->mPkg:Ljava/lang/String;

    .line 2643
    iput-object p4, p0, Lcom/android/server/status/StatusBarService$Launcher;->mTag:Ljava/lang/String;

    .line 2644
    iput p5, p0, Lcom/android/server/status/StatusBarService$Launcher;->mId:I

    .line 2645
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2653
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2656
    :goto_0
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2657
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2658
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2659
    .local v1, overlay:Landroid/content/Intent;
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v6

    aget v5, v2, v8

    aget v6, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2662
    :try_start_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$Launcher;->mIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, v4, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 2663
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService$Launcher;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService$Launcher;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/status/StatusBarService$Launcher;->mId:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2668
    :goto_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$Launcher;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarService;->deactivate()V

    .line 2669
    return-void

    .line 2664
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2666
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending contentIntent failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2654
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v1           #overlay:Landroid/content/Intent;
    .end local v2           #pos:[I
    :catch_1
    move-exception v3

    goto :goto_0
.end method
