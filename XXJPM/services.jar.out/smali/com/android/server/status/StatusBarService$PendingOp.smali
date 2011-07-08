.class Lcom/android/server/status/StatusBarService$PendingOp;
.super Ljava/lang/Object;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingOp"
.end annotation


# instance fields
.field code:I

.field iconData:Lcom/android/server/status/IconData;

.field integer:I

.field key:Landroid/os/IBinder;

.field notificationData:Lcom/android/server/status/NotificationData;

.field final synthetic this$0:Lcom/android/server/status/StatusBarService;

.field visible:Z


# direct methods
.method private constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$PendingOp;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;)V

    return-void
.end method
