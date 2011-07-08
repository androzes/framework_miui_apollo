.class Lcom/android/server/status/StatusBarService$38;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3910
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->vibrate()V

    .line 3911
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 3912
    const-string v0, "StatusBar"

    const-string v1, "startTracing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    const-string v0, "/data/statusbar-traces/trace"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 3914
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$38;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v1, v1, Lcom/android/server/status/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3915
    return-void
.end method
