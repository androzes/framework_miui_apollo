.class Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field grantedMode:I

.field grantedUriPermissions:[Landroid/net/Uri;

.field onlyIfNeeded:Z

.field r:Lcom/android/server/am/HistoryRecord;

.field sourceRecord:Lcom/android/server/am/HistoryRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
